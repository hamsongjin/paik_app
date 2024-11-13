import  create  from 'zustand';
import useGoodsStore from '../../store/useGoodsStore';
import useOptionsStore from '../../store/useOptionsStore';
import useCategoryStore from '../../store/useCategoryStore';
import axios from 'axios';
import React, { useEffect, useState } from 'react';
import {BrowserRouter as Router, Routes, Route, useLocation} from 'react-router-dom';
import Header from '../Header/Header';
import DetailHeader from '../DetailHeader/DetailHeader';
// import Nav from '../Nav/Nav';
import Index from '../../pages/Index/Index';
import Main from '../../pages/Main/Main';
import Detail from '../../pages/Detail/Detail';
// import DetailHeader from '../DetailHeader/DetailHeader';
import Order from '../../pages/Order/Order';

const AppWrapper = () =>{
   const { category, addCategory } = useCategoryStore();
   const { goods, addGoods} = useGoodsStore();
   const { options, addOptions } = useOptionsStore();

   useEffect(()=>{
      const getData = async() => {
         try {
            const response = await axios.get('/goods');
            // console.log('response data: ', response.data);
            response.data.cate.forEach(item=> {
               if (!category.some(categoryItem => categoryItem.cateCd === item.cateCd)) {
                  addCategory(item);
                }
            });
            response.data.goods.forEach(item=> {
               if (!goods.some(goodsItem => goodsItem.goodsCd === item.goodsCd)) {
                  addGoods(item);
                }
            });
            response.data.options.forEach(item=> {
               if (!options.some(optionsItem => optionsItem.optNo === item.optNo)) {
                  addOptions(item);
                }
            });
           

         } catch(error) {
            console.log('error: ', error);
         }
      }
      getData();
   }, []);
  
   const location = useLocation();
   useEffect(()=>{
      // console.log(location);
      // console.log(location.hash);
      // console.log(location.pathname);
      
   }, [location]);
   return(
      <>
         {location.pathname !== '/'  && (
            location.pathname === '/main' ?  <Header /> : <DetailHeader data={location.pathname === '/order' ? '주문하기' : ''} />
         )}

         <Routes>
            <Route path="/" element={<Index />}></Route>
            <Route path="/main" element={<Main />}></Route>
            <Route path="/detail/:id" element={<Detail />}></Route>
            <Route path="/order" element={<Order />}></Route>
         </Routes>
      </>
   )
}

export default AppWrapper;