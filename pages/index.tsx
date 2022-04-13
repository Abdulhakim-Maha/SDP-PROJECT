import Head from "next/head";
import { GetServerSideProps } from "next";
import Image from "next/image";
import Featured from "../components/Featured";
import ChickList from "../components/ChickList";
import styles from "../styles/Home.module.scss";
import axios from "axios";
import CHICK from "../util/Chick";
import { useState } from "react";
import Add from "../components/Add";
import AddButton from "../components/AddButton";
import Desc from "../components/Desc";

const Home: React.FC<{ chickList: CHICK[]; admin: boolean }> = (props) => {
  const [close, setClose] = useState<boolean>(true);
  // console.log(props);
  return (
    <div className={styles.container}>
      <Head>
        <title>Create Next App</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Featured />
      {props.admin && <AddButton setClose={setClose}/>}
      <Desc/>
      <ChickList chickList={props.chickList} />
      {!close && <Add setClose={setClose}/>}
    </div>
  );
};

export const getServerSideProps: GetServerSideProps = async (context) => {
  const myCookie = context.req.cookies || "";
  let admin: boolean = false;

  if (myCookie.token === process.env.TOKEN) {
    admin = true;
  }
  const res = await axios.get("http://localhost:3000/api/products");
  // console.log(res.data);
  return {
    props: {
      chickList: res.data,
      admin,
    },
  };
};

export default Home;
