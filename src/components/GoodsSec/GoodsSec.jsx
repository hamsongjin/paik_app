
import {StyledSec, ItemImg} from './GoodsSec.styled';
import { useEffect, useState } from 'react';
import { AnchorSection } from 'react-anchor-navigation';
import {useNavigate} from 'react-router-dom';
import { ChevronDown } from 'lucide-react';
import GoodsImg from '../GoodsImg/GoodsImg';

const GoodsSec = ({data}) => {
   const navigate = useNavigate();
   const [ toggleStates, setToggleStates ] = useState({
      '001': true,
      '002': true,
      '003': true,
      '004': true,
      '005': true,
      '006': true,
      '007': true,
      '008': true
   });
   

   const handleToggleState = (name) => {
      setToggleStates((prevStates) => ({
         ...prevStates,
         [name]: !prevStates[name]
      }))
   }
   const groupGoods = data ? data.reduce((acc, item) => {
      if(!acc[item.cateCd]) {
         acc[item.cateCd] = [];
      }
      acc[item.cateCd].push(item);
      return acc;
   }, {}) : {}; 

   return(
      <div className="sec__wrap">
      {Object.entries(groupGoods).map( ([cateCd, items]) => {
         let cateNm = '';
         switch(cateCd) {
            case '001': cateNm='커피';break;
            case '002': cateNm='주스/에이드';break;
            case '003': cateNm='스무디/쉐이크';break;
            case '004': cateNm='음료';break;
            case '005': cateNm='빽스치노';break;
            case '006': cateNm='티';break;
            case '007': cateNm='디저트';break;
            case '008': cateNm='블랙펄';break;
         }

         return(
            <StyledSec key={`code-${cateCd}`} className={toggleStates[cateCd] ? 'active' : ''}>
               <AnchorSection id={cateCd} >
                  <div className={"sec__head"} onClick={()=>handleToggleState(cateCd)} >
                     <p className="sec__head--tit">{cateNm}</p>
                     <p className="sec__head--icon"><ChevronDown /></p>
                  </div>
                  <div className="sec__body">
                     {items.map((item, index) => {
                        return(
                           <div className="sec__body--items" key={`item-${cateCd}-${item.goodsNo}-${index}`} onClick={() => navigate('/detail/' + item.goodsNo)}>
                              <div className="sec__body--items-left">
                                 <p className="sec__body--items-left-tit">{item.goodsNm}</p>
                                 <p className="sec__body--items-left-price">{
                                    item.goodsPrice.replace(/\.\d+/, '')
                                    .toString()
                                    .replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</p>
                              </div>
                              <div className="sec__body--items-right">
                                 <GoodsImg goodsNo={item.goodsNo} className={"sec__body--items-right-img"} />
                              </div>
                           </div>
                        )
                     })}
                  </div>
               </AnchorSection>
            </StyledSec>
         )
      })}
      </div>
   )
}

export default GoodsSec;