/**
 * goods route
 */
class GoodsRouter {
   constructor(id, db) {
      this.id = id;
      this.db = db;
   }
   run() {
      const express = require('express');
      const router = express.Router();

      router.get('/goods', async (req, res) => {
         try {
            const categoryQueryStr = `SELECT * FROM goodsGroup`;
            const goodsQueryStr = `SELECT * FROM goods`;
            const optionsQueryStr = `SELECT * FROM options`;
            const [cate] = await this.db.query(categoryQueryStr);
            const [goods] = await this.db.query(goodsQueryStr);
            const [options] = await this.db.query(optionsQueryStr);

            return res.status(200).json({cate, goods, options});
         } catch(error) {
            console.error('Error inserting user:', error);
            // 서버 에러 발생 시 500 상태 코드와 에러 메시지 전달
            return res.status(500).json({ message: '서버 에러 발생' })
         } 
      });
      router.get('/goods/detail/:goodsNo', async (req, res) => {
         try {
            const { goodsNo } = req.params;
            const queryStr = `
               SELECT 
                  g.*, 
                  JSON_ARRAYAGG(
                     JSON_OBJECT('optNo', o.optNo, 'optNm', o.optNm,'optMaxCnt', o.optMaxCnt, 'optPrice', o.optPrice, 'optType', o.optType, 'soldOut', o.soldOutFl)
                  ) AS options 
               FROM 
                  optionsGroup AS og 
               LEFT JOIN goods AS g ON g.goodsNo = og.goodsNo 
               LEFT JOIN options AS o ON o.optNo = og.optNo 
               WHERE g.goodsNo = ? 
               GROUP BY g.goodsNo`;

            const [rows] = await this.db.query(queryStr.replace(/[\t\n\s]+/g, ' '), [goodsNo]);
            return res.status(200).json(rows);
         
            } catch(error) {
            console.error('Error inserting user:', error);
            // 서버 에러 발생 시 500 상태 코드와 에러 메시지 전달
            return res.status(500).json({ message: '서버 에러 발생' }) 
         }
      });
      // router.get('/goods/update', (req, res) => {

      // });
   
      // router.get('/goodsDetail', (req, res) => {

      // });
      // router.get('/goodsDetail/insert', (req, res) => {

      // });
      // router.get('/goodsDetil/update', (req, res) => {

      // });

      return router;
   }
}

module.exports = new GoodsRouter('goodsRouter', require('../config/db'));