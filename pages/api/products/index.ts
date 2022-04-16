import { NextApiRequest, NextApiResponse } from "next";
import Product from "../../../models/Product";
import dbConnect from "../../../util/dbConnet";

export default async (req: NextApiRequest, res: NextApiResponse) => {
  // connect to mongodb
  await dbConnect();
  const { method, cookies } = req;
  const token = cookies.token;

  if (method == "GET") {
    try {
      const products = await Product.find();
      res.status(200).json(products);
    } catch (err) {
      res.status(500).json(err);
    }
  } else if (method == "POST") {
    if (!token || token !== process.env.TOKEN) {
      return res.status(401).json('Not authenticated!');
    }
    try {
      //   console.log(req.body);
      //   const newProduct = new Product(req.body);
      //   const product = await newProduct.save(newProduct);

      const product = await Product.create(req.body);
      res.status(201).json(product);
    } catch (err) {
      res.status(500).json("there is some error occurs!\n" + err);
    }
  }
};