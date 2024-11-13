import { useEffect, useState } from 'react';
import {StyledGoodsCount} from './GoodsCount.styled';
import useSelectStore from '../../store/useSelectStore';

const GoodsOrder = () => {
   const {cnt, updateSelect } = useSelectStore();

   const increaseCount = () => {
      const upCnt = cnt + 1;
      updateSelect('cnt', upCnt);
   }
   const decreaseCount = () => {
      const downCnt = cnt == 1 ? 1 : cnt - 1;
      updateSelect('cnt', downCnt);
   }
   return(
      <StyledGoodsCount className="goods__order" >
         <p className="goods__tit goods__order--tit">수량</p>
         <div className="goods__order--box goods__cnt">
            <button name="goods_cnt" disabled={cnt <= 1 ? true : false} onClick={decreaseCount}>-</button>
            <span>{cnt}</span>
            <button name="goods_cnt" onClick={increaseCount}>+</button>
         </div>
      </StyledGoodsCount>
   )
}

export default GoodsOrder;