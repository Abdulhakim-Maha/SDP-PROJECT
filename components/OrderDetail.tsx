import React, { Dispatch, SetStateAction, useState } from "react";
import { useAppSelector } from "../redux/hook";
import styles from "../styles/OrderDetail.module.scss";

const OrderDetail: React.FC<{
  total: number;
  createOrder: Function;
}> = ({ total, createOrder}) => {
  const cart = useAppSelector((state) => state.cart);
  const [firstName, setFirstName] = useState<string>("");
  const [lastName, setLastName] = useState<string>("");
  const [phonNumber, setPhoneNumber] = useState<string>("");
  const [address, setAddress] = useState<string>("");

  const handleClick = () => {
    const customer = firstName + lastName;
    createOrder({ customer, address, total, method: 0 });
  };

  return (
    <div className={styles.container}>
      <div className={styles.wrapper}>
        <h2 className={styles.title}>ยอดที่ต้องชำระปลายทาง {cart.total} บาท</h2>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            ชื่อ
          </label>
          <input
            type="text"
            placeholder="สมชาย"
            className={styles.input}
            onChange={(e) => setFirstName(e.target.value)}
          />
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            นามสกุล
          </label>
          <input
            type="text"
            placeholder="ขายของ"
            className={styles.input}
            onChange={(e) => setLastName(e.target.value)}
          />
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            เบอร์ติดต่อ
          </label>
          <input
            type="text"
            placeholder="+66 123456789"
            className={styles.input}
            onChange={(e) => setPhoneNumber(e.target.value)}
          />
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            ที่อยู่
          </label>
          <textarea
            rows={5}
            placeholder="ลาดกระบัง"
            className={styles.textarea}
            onChange={(e) => setAddress(e.target.value)}
          ></textarea>
        </div>
        <button className={styles.button} onClick={handleClick}>
          Order
        </button>
      </div>
    </div>
  );
};

export default OrderDetail;
