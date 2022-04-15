import React, { FormEvent, useState } from "react";
import styles from "../styles/OrderDetail.module.scss";
import useInput from "../hook/use-input";

const OrderDetail: React.FC<{
  total: number;
  createOrder: Function;
  setCash: React.Dispatch<React.SetStateAction<boolean>>;
}> = ({ total, createOrder, setCash }) => {
  const name_regex = new RegExp("[a-zA-Zก-ํ]{3,}");
  const phone_regex = new RegExp("[0-9]{9,10}");

  const {
    value: enteredFirstname,
    hasError: firstnameHasError,
    isValid: enteredFirstnameIsValid,
    valueBlurHandler: firstnameBlurHandler,
    valueChangeHandler: firstnameChangeHandler,
  } = useInput((value) => name_regex.test(value.trim()) && value.length <= 10);

  const {
    value: enterredLastname,
    hasError: lastnameHasError,
    isValid: enterredLastnameIsValid,
    valueBlurHandler: lastnameBlurHandler,
    valueChangeHandler: lastnameChangeHandler,
  } = useInput((value) => name_regex.test(value.trim()) && value.length <= 10);

  const {
    value: enteredPhone,
    hasError: phoneHasError,
    isValid: enteredPhoneIsValid,
    valueBlurHandler: phoneBlurHandler,
    valueChangeHandler: phoneChangeHandler,
  } = useInput((value) => phone_regex.test(value.trim()) && value.length <= 10);

  const [address, setAddress] = useState<string>("");

  const firstnameInputClass = firstnameHasError
    ? `${styles.input} ${styles.invalid}`
    : styles.input;
  const lastnameInputClass = lastnameHasError
    ? `${styles.input} ${styles.invalid}`
    : styles.input;
  const phoneInputClass = phoneHasError
    ? `${styles.input} ${styles.invalid}`
    : styles.input;

  let formIsValid = false;
  if (
    enteredFirstnameIsValid &&
    enterredLastnameIsValid &&
    enteredPhoneIsValid &&
    address.length !== 0
  ) {
    formIsValid = true;
  }

  const submitHandler = (e: FormEvent) => {
    e.preventDefault();
    const customer = enteredFirstname + enterredLastname;
    console.log(customer, enteredPhone, address);
    createOrder({ customer, address, total, method: 0 });
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
            className={firstnameInputClass}
            value={enteredFirstname}
            onChange={firstnameChangeHandler}
            onBlur={firstnameBlurHandler}
          />
          {firstnameHasError && (
            <span className={styles.error}>
              ชื่อต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10
            </span>
          )}
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Last Name
          </label>
          <input
            type="text"
            placeholder="Doe"
            className={lastnameInputClass}
            value={enterredLastname}
            onBlur={lastnameBlurHandler}
            onChange={lastnameChangeHandler}
          />
          {lastnameHasError && (
            <span className={styles.error}>
              นามสกุลต้องเป็นภาษาอังกฤษหรือไทย และมีจำนวน 3 ถึง 10
            </span>
          )}
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Phone Number
          </label>
          <input
            type="text"
            placeholder="+66 123456789"
            className={phoneInputClass}
            value={enteredPhone}
            onChange={phoneChangeHandler}
            onBlur={phoneBlurHandler}
          />
          {phoneHasError && (
            <span className={styles.error}>
              ใส่เป็นตัวเลขอารบิกจำนวน 9 หรือ 10
            </span>
          )}
        </div>
        <div className={styles.item}>
          <label htmlFor="" className={styles.label}>
            Address
          </label>
          <textarea
            rows={5}
            placeholder="Lardkrabang St. 562 Bangkok"
            className={styles.textarea}
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            // ref={address}
          ></textarea>
        </div>
        <button type="submit" disabled={!formIsValid} className={styles.button}>
          Order
        </button>
      </form>
    </div>
  );
};

export default OrderDetail;
