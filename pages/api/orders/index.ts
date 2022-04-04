import dbConnect from "../../../util/dbConnet";
import Order from "../../../models/Order";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  await dbConnect();
  const { method } = req;
  if (method === "GET") {
    try {
      const orders = await Order.find();
      res.status(200).json(orders);
    } catch (err) {
      res.status(500).json(err);
    }
  } else if (method === "POST") {
    try {
      const order = await Order.create(req.body);
      // console.log(order)
      res.status(201).json(order);
    } catch (err) {
      res.status(500).json(err);
    }
  } else if (method === "DELETE") {
  }
};

export default handler;
