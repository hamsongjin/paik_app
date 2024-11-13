/**
 * order router
 */
class OrderRouter {
   constructor(id) {
      this.id = id;
   }
   run() {
      const express = require('express');
      const router = express.Router();

      router.post('/order', (req, res) => {

      });
   }
}

module.exports = new OrderRouter('orderRouter');