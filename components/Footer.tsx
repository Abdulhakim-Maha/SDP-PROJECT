import Image from "next/image";
import React from "react";
import style from "../styles/Footer.module.scss";

const Footer = () => {
  return (
    <div className={style.container}>
      <div className={style.item}>
        <Image src={"/img/bg.png"} layout="fill" objectFit="cover" />
      </div>
      <div className={style.item}>
        <div className={style.card}>
          <h3 className={style.motto}>
          สำหรับท่านที่เดินผ่านไปผ่านมา 
          <br/>วันนี้ไก่ทอด 4.0 ได้มาบริการท่านพ่อแม่พี่น้องกันอีกแล้วนะครับ 
          <br/>อากาศร้อนๆอย่างนี้นะครับ ไก่ทอดสักน่องชื่นใจ 
          <br/>แม้อากาศไม่ร้อนก็ทานกันได้นะครับ
          
          </h3>
        </div>
        <div className={style.card}>
          <h1 className={style.title}>ที่อยู่ เบอร์โทร</h1>
          <p className={style.text}>
            1654 R. Don Road #304.
            <br /> NewYork, 85022
            <br /> (602) 867-1010
          </p>
          <p className={style.text}>
            2356 K. Laquie Rd #235.
            <br /> NewYork, 85022
            <br /> (602) 867-1011
          </p>
          <p className={style.text}>
            1614 E. Erwin St #104.
            <br /> NewYork, 85022
            <br /> (602) 867-1012
          </p>
          <p className={style.text}>
            1614 W. Caroll St #125.
            <br /> NewYork, 85022
            <br /> (602) 867-1013
          </p>
        </div>
        <div className={style.card}>
          <h1 className={style.title}>เวลาเปิด - ปิด</h1>
          <p className={style.text}>
            MONDAY UNTIL FRIDAY
            <br /> 9:00 – 22:00
          </p>
          <p className={style.text}>
            SATURDAY - SUNDAY
            <br /> 12:00 – 24:00
          </p>
        </div>
      </div>
    </div>
  );
};

export default Footer;
