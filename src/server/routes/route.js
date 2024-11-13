/**
 * router
 */
class Route {
   constructor(id, goodsRouter, orderRouter) {
      this.id = id;
      this.goodsRouter = goodsRouter;
      this.orderRouter = orderRouter;
   }
   run() {
      const express = require('express');
      const router = express.Router();

      router.use('/', this.goodsRouter.run());
      // router.use('/', this.orderRouter);
      return router;
   }
}

module.exports = new Route('route', require('./goodsRoute'), require('./orderRoute'));