import React, { FC } from "react";
import styles from "../styles/Box.module.scss";
import Image from "next/image";

const Box: FC<{ img: string; name: string; id: number }> = ({
  img,
  name,
  id,
}) => {
  return (
    <div className={styles.container}>
      <Image
        src={img}
        width="250"
        height="300"
        layout="responsive"
        objectFit="cover"
        className={styles.image}
      />
      <div className={styles.wrapper}>
        <h3 className={styles.id}>{id}</h3>
        <p className={styles.name}>{name}</p>
      </div>
    </div>
  );
};

export default Box;
