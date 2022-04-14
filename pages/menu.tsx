import style from "../styles/Menu.module.scss";
import React, { useState } from "react";
import ChickCard from "../components/ChickCard";
import ChickList from "../components/ChickList";
import CHICK from '../util/Chick'
import axios from "axios";
import { GetServerSideProps } from "next";
import AddButton from "../components/AddButton";
import Add from "../components/Add";

const Index: React.FC<{ chickList: CHICK[]; admin: boolean }> = (props) => {
  const [close, setClose] = useState<boolean>(true);
  return (
    <div className={style.container}>
      {props.admin && <AddButton setClose={setClose}/>}
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

export default Index;
