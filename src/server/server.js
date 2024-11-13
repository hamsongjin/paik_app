/**
 * server
 */
class Server {
   constructor(id) {
      this.id = id;
   }
   run() {
      const express = require('express');
      const app = express();
      const cors = require('cors');
      const bodyParser = require('body-parser');
      const PORT = process.env.PORT || 4000;
      const route = require('./routes/route');
      app.use(cors());
      app.use(bodyParser.json());
      app.use(bodyParser.urlencoded({ extended: true}));
      app.use('/', route.run());

      app.listen(PORT, ()=> {
         console.log(`Server On : http://localhost:${PORT}`);
      });
   }
}
const server = new Server('server');
server.run();