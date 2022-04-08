import styles from "../../styles/Admin.module.scss";
import Image from "next/image";
import React, { useState } from "react";
import axios from "axios";
import { GetServerSideProps } from "next";
import PRODUCT from "../../util/Chick";
import { ORDER_V2 } from "../orders/[id]";

const Index: React.FC<{ products: PRODUCT[]; orders: ORDER_V2[] }> = ({
  orders,
  products,
}) => {
  const [chickList, setChickList] = useState(products);
  const [orderList, setOrderList] = useState(orders);
  const status: string[] = ["preparing", "on the way", "delivered"];

  const handleDelete = async (id: number) => {
    try {
      const res = await axios.delete(
        "http://localhost:3000/api/products/" + id
      );
      setChickList(chickList.filter((chick) => chick._id !== id));
    } catch (error) {
      console.log(error);
    }
  };

  const handleStatus = async (id: number) => {
    const item = orderList.filter((order) => order._id === id)[0];
    const currentStatus = item.status;
    try {
      const res = await axios.put("http://localhost:3000/api/orders/" + id, {
        status: currentStatus + 1,
      });
      setOrderList([
        res.data,
        ...orderList.filter((order) => order._id !== id),
      ]);
    } catch (error) {
      console.log(error);
    }
  };

  return (
    <div className={styles.container}>
      <div className={styles.item}>
        <div className={styles.title}>Products</div>
        <table className={styles.table}>
          <tbody>
            <tr className={styles.trTitle}>
              <th>Image</th>
              <th>Id</th>
              <th>Title</th>
              <th>Price</th>
              <th>Action</th>
            </tr>
          </tbody>
          {chickList.map((product) => {
            return (
              <tbody key={product._id}>
                <tr className={styles.trTitle}>
                  <td>
                    <Image
                      src={product.img}
                      width={50}
                      height={50}
                      objectFit="cover"
                      alt=""
                    />
                  </td>
                  <td>{product._id.toString().slice(0, 5)}...</td>
                  <td>{product.title}</td>
                  <td>{product.prices[0]}</td>
                  <td>
                    <button className={styles.button}>Edit</button>
                    <button
                      className={styles.button}
                      onClick={() => handleDelete(product._id)}
                    >
                      Delete
                    </button>
                  </td>
                </tr>
              </tbody>
            );
          })}
        </table>
      </div>
      <div className={styles.item}>
        <div className={styles.title}>Orders</div>
        <table className={styles.table}>
          <tbody>
            <tr className={styles.trTitle}>
              <th>Id</th>
              <th>Customer</th>
              <th>Total</th>
              <th>Payment</th>
              <th>Action</th>
            </tr>
          </tbody>
          {orderList.map((order) => {
            return (
              <tbody key={order._id}>
                <tr className={styles.trTitle}>
                  <td>{order._id.toString().slice(0, 5)}...</td>
                  <td>{order.customer}</td>
                  <td>{order.total}</td>
                  <td>
                    {order.method === 0 ? <span>cash</span> : <span>paid</span>}
                  </td>
                  <td>{status[order.status]}</td>
                  <td>
                    <button onClick={() => handleStatus(order._id)}>
                      Next stage
                    </button>
                  </td>
                </tr>
              </tbody>
            );
          })}
        </table>
      </div>
    </div>
  );
};

export const getServerSideProps: GetServerSideProps = async (context) => {
  const myCookie = context.req.cookies || "";
  if (myCookie.token !== process.env.TOKEN) {
    return {
      redirect: {
        destination: "/admin/login",
        permanent: false,
      },
    };
  }
  
  const productRes = await axios.get("http://localhost:3000/api/products");
  const orderRes = await axios.get("http://localhost:3000/api/orders");

  return {
    props: {
      orders: orderRes.data,
      products: productRes.data,
    },
  };
};
export default Index;
