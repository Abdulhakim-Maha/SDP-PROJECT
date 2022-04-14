import React, { useState } from "react";
import styles from "../styles/OrderDetail.module.scss";

const OrderDetail: React.FC<{
  total: number;
  createOrder: Function;
  setCash: React.Dispatch<React.SetStateAction<boolean>>;
}> = ({ total, createOrder, setCash }) => {
  const [firstName, setFirstName] = useState<string>("");
  const [lastName, setLastName] = useState<string>("");
  const [phonNumber, setPhoneNumber] = useState<string>("");
  const [address, setAddress] = useState<string>("");
  const [canOrder, setCanOrder] = useState<boolean>(false);


  //after focused
  const [firtFocus, setFirstFocus] = useState<boolean>(false)

  const handleClick = () => {
    const customer = firstName + lastName;
    createOrder({ customer, address, total, phonNumber, method: 0 });
  };

  return (
    <div className={styles.container}>
      <div className={styles.wrapper}>
        <button onClick={(e) => setCash(false)} className={styles.close}>
          x
        </button>
        <h1 className={styles.title}>ค่าส่ง 10 บาท</h1>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            First Name
          </label>
          <input
            type="text"
            placeholder="John"
            pattern="[a-zA-Zก-ฮ]{3,10}"
            className={styles.input}
            onChange={(e) => setFirstName(e.target.value)}
            onBlur={(e) => setFirstFocus(true)}
            data-firstFocused={firtFocus.toString()}
          />
          <span>ชื่อต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10</span>
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Last Name
          </label>
          <input
            type="text"
            placeholder="Doe"
            className={styles.input}
            onChange={(e) => setLastName(e.target.value)}
          />
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Phone Number
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
            Address
          </label>
          <textarea
            rows={5}
            placeholder="Lardkrabang St. 562 Bangkok"
            className={styles.textarea}
            onChange={(e) => setAddress(e.target.value)}
          ></textarea>
        </div>
        <button
          className={styles.button}
          disabled={canOrder}
          onClick={handleClick}
        >
          Order
        </button>
      </div>
    </div>
  );
};

export default OrderDetail;
