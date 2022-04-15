import React, { FormEvent } from "react";
import styles from "../styles/OrderDetail.module.scss";
import useInput from "../hook/use-input";

const OrderDetail: React.FC<{
  total: number;
  createOrder: Function;
  setCash: React.Dispatch<React.SetStateAction<boolean>>;
}> = ({ total, createOrder, setCash }) => {
  const name_regex = new RegExp("[a-zA-Zก-ํ]{3,}");

  const {
    value: enteredFirstname,
    hasError: firstnameHasError,
    isValid: enteredFirstnameIsValid,
    valueBlurHandler: firstnameBlurHandler,
    valueChangeHandler: firstnameChangeHandler,
  } = useInput((value) => name_regex.test(value.trim()) && value.length <= 10);

  const submitHandler = (e: FormEvent) => {
    e.preventDefault();
    console.log("hello");
  };
  return (
    <div className={styles.container}>
      <form onSubmit={submitHandler} className={styles.wrapper}>
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
            className={styles.input}
            value={enteredFirstname}
            onChange={firstnameChangeHandler}
            onBlur={firstnameBlurHandler}
          />
          {firstnameHasError && (
            <span className={styles.first}>
              ชื่อต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10
            </span>
          )}
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Last Name
          </label>
          <input type="text" placeholder="Doe" className={styles.input} />
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
          ></textarea>
        </div>
        <button type="submit" className={styles.button}>
          Order
        </button>
      </form>
    </div>
  );
};

export default OrderDetail;
