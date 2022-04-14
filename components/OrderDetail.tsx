import React, { useState, useRef } from "react";
import styles from "../styles/OrderDetail.module.scss";

const OrderDetail: React.FC<{
  total: number;
  createOrder: Function;
  setCash: React.Dispatch<React.SetStateAction<boolean>>;
}> = ({ total, createOrder, setCash }) => {
  // credentials state
  const [firstName, setFirstName] = useState<string>("");
  const [lastName, setLastName] = useState<string>("");
  const [phonNumber, setPhoneNumber] = useState<string>("");
  // const [address, setAddress] = useState<string>("");
  const address = useRef<HTMLTextAreaElement>(null);

  // set can order
  const [canOrder, setCanOrder] = useState<boolean>(false);

  //after focused
  const [firtFocus, setFirstFocus] = useState<boolean>(false);
  const [lastFocus, setlastFocus] = useState<boolean>(false);
  const [phoneFocus, setPhoneFocus] = useState<boolean>(false);

  // span ref
  // const spanRef = useRef<HTMLSpanElement>(null);
  try {
    const firstEle = document.getElementsByClassName(styles.first)[0];
    const lastEle = document.getElementsByClassName(styles.last)[0];
    const phoneEle = document.getElementsByClassName(styles.phone)[0];

    const firstDisplay = getComputedStyle(firstEle).display;
    const lastDisplay = getComputedStyle(lastEle).display;
    const phoneDisplay = getComputedStyle(phoneEle).display;

    console.log("first", firstDisplay);
    console.log("last", lastDisplay);
    console.log("phone", phoneDisplay);

    if (
      firstDisplay === "none" &&
      firstName.length !== 0 &&
      lastDisplay === "none" &&
      lastName.length !== 0 &&
      phoneDisplay === "none" &&
      phonNumber.length !== 0 &&
      address.current!.value.length !== 0
    ) {
      console.log("All correct!");
      setCanOrder(true);
    }
  } catch (error) {
    console.log(error);
  }

  const handleClick = () => {
    const customer = firstName + lastName;
    // const add = address.current!.value;
    createOrder({
      customer,
      address: address.current!.value,
      total,
      method: 0,
    });
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
            data-firstfocused={firtFocus.toString()}
          />
          <span className={styles.first}>
            ชื่อต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10
          </span>
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Last Name
          </label>
          <input
            type="text"
            placeholder="Doe"
            className={styles.input}
            pattern="[a-zA-Zก-ฮ]{3,10}"
            onBlur={(e) => setlastFocus(true)}
            onChange={(e) => setLastName(e.target.value)}
            data-lastfocused={lastFocus.toString()}
          />
          <span className={styles.last}>
            นามสกุลต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10
          </span>
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Phone Number
          </label>
          <input
            type="text"
            placeholder="+66 123456789"
            className={styles.input}
            pattern="[0-9]{9,10}"
            onChange={(e) => setPhoneNumber(e.target.value)}
            onBlur={(e) => setPhoneFocus(true)}
            data-phonefocused={phoneFocus.toString()}
          />
          <span className={styles.phone}>
            ใส่เป็นตัวเลขอารบิกจำนวน 9 หรือ 10
          </span>
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Address
          </label>
          <textarea
            rows={5}
            placeholder="Lardkrabang St. 562 Bangkok"
            className={styles.textarea}
            // onChange={(e) => setAddress(e.target.value)}
            ref={address}
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
