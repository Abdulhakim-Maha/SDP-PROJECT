import Head from "next/head";
import React from "react";
import Box from "../components/Box";
import styles from "../styles/Aboutus.module.scss";

const members = [
  {
    img: "/members/kim.png",
    name: "Abdulhakim Mamu",
    id: 63011414,
  },
  {
    img: "/members/king.png",
    name: "Abdulhakim Maha",
    id: 63011075,
  },
  {
    img: "/members/newyear.png",
    name: "Watanai Maythamaluang ",
    id: 63010846,
  },
  {
    img: "/members/fome.png",
    name: "Phurich Chanprasit",
    id: 63010767,
  },
  {
    img: "/members/pol.png",
    name: "Warapob Keatkongsang",
    id: 63010841,
  },
];

const Aboutus = () => {
  return (
    <div>
      <Head>
        <title>About Us</title>
      </Head>
      <div className={styles.container}>
        <div className={styles.wrapper}>
          {members.map((mb) => (
            <Box key={mb.id} id={mb.id} img={mb.img} name={mb.name} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default Aboutus;
