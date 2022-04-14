import Image from "next/image";
import Link from "next/link";
import React from "react";
import { useAppSelector } from "../redux/hook";
import style from "../styles/Navbar.module.scss";

const Navbar = () => {
  const quantity = useAppSelector((state) => state.cart.quntiity);
  return (
    <div className={style.container}>
      <div className={style.item}>
        <div className={style.callButton}>
          <Image src={"/img/telephone.png"} width={"32"} height={"32"} alt="" />
        </div>
        <div className={style.texts}>
          <div className={style.text}>สั่งเลย !</div>
          <div className={style.text}>012 345 678</div>
        </div>
      </div>
      <div className={style.item}>
        <ul className={style.list}>
          <Link href={'/'}>
            <li className={style.listItem}>หน้าหลัก</li>
          </Link>
          <Link href={'/menu'}>
            <li className={style.listItem}>ไก่ทอด</li>
          </Link>
          <li className={style.listItem}>(อะไรสักอย่าง)</li>
          <Image src={"/img/FC-logo.png"} alt="" width={"150"} height={"150"} />
          <li className={style.listItem}>อีเว้นท์</li>
          <li className={style.listItem}>บล็อก</li>
          <li className={style.listItem}>ติดต่อพวกเรา</li>
        </ul>
      </div>
      <Link href={"/cart"}>
        <div className={style.item}>
          <div className={style.cart}>
            <Image src={"/img/cart.png"} alt="" width={"30"} height={"30"} />
            <div className={style.counter}>{quantity}</div>
          </div>
        </div>
      </Link>
    </div>
  );
};

export default Navbar;
