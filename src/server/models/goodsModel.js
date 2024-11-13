/**
 * goodsModel
 */

class GoodsModel {
   constructor(id, db){
      this.id = id;
      this.db = db;
   }
   // 카테고리 가져오기
   async getCategory() {
      try {
         const queryStr = `SELECT * FROM goodsGroup`;
         const [rows] = await this.db.query(queryStr);
         res.status(200).json
      } catch(error) {
         console.error('Error inserting user:', error);
         // 서버 에러 발생 시 500 상태 코드와 에러 메시지 전달
         res.status(500).json({ message: '서버 에러 발생' });
      }
   }
   // 카테고리 수정
   async updateCategory(data) {
      const queryStr = `UPDATE goodsGroup SET ? WHERE = cateCd=?`
      const result = await this.db.query(queryStr, data);
      return result;
   }
   // 제품 추가
   async inserGoods(data) {
      const queryStr = `INSERT INTO goods (?) VALUES (?)`;
      const result = await this.db.query(queryStr, data);
      return result;
   }
   // 제품 가져오기
   async getGoods(data) {
      const queryStr =`SELECT * FROM goods WHERE tateCd = ?`;
      const result = await this.db.query(queryStr, data);
      return result;
   }
   // 제품 수정
   async updateGoods(data) {
      const queryStr = `UPDATE goods SET ? WHERE goodsNo =?`;
      const result = await this.db.query(queryStr, data);
   }
   // 커피 제품 상세, 옵션 가져오기
   async getGoodsDetail() {
      const queryStr =  ``;
      const result = await this.db.query(queryStr, []);
      return result;
   }
}

const goodsModel = new GoodsModel('goodsModel', require('../config/db'));