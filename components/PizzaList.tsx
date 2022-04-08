import style from "../styles/PizzaList.module.scss";
import React from "react";
import PizzaCart from "./PizzaCart";
import PIZZA from '../util/Pizza'

const PizzaList: React.FC<{ pizzaList: Array<PIZZA> }> = ({ pizzaList }) => {
  // console.log(pizzaList);
  return (
    <div className={style.container}>
      <h1 className={style.title}>the best pizza in town</h1>
      <p className={style.desc}>
      ครับ สำหรับท่านที่เดินผ่านไปผ่านมา วันนี้ไก่ทอด4.0ได้มาบริการท่านพ่อแม่พี่น้องกันอีกแล้วนะครับ 
      <br/>อากาศร้อนๆอย่างนี้นะครับ ไก่ทอดถ้วยชื่นใจ แม้อากาศไม่ร้อนก็ทานกันได้นะครับ 
      <br/>ไก่ทอดนั้นทานได้ทุกฤดูกาลนะครับ นอกจากไก่ทอดจะอร่อยแล้ว 
      <br/>ก็ยังมีประโยชน์ต่อร่างกายอีกมากมาย เช่น แก้ร้อนใน แก้ไข้หวัด ลดความดันโลหิตสูง แก้กล้ามเนื้ออักเสบ 
      <br/>ข้ออักเสบ ตับอักเสบ แล้วก็เบาหวาน และสำหรับท่านที่ไม่เคยเห็นต้นไก่ทอด
      <br/>วันนี้โอกาสดีนะครับ เรามีต้นไก่ทอดมาให้พ่อแม่พี่น้องได้ดูได้ชมกันด้วยนะครับ 
      <br/>โอกาศหน้าอย่าลืมนะครับ ไก่ทอดแท้ๆที่เราทำจากยางไก่ทอดจริงๆนะครับ
      </p>
      <div className={style.wrapper}>
        {pizzaList.map((pizza) => {
          return <PizzaCart key={pizza._id} pizza={pizza} />;
        })}
      </div>
    </div>
  );
};

export default PizzaList;
