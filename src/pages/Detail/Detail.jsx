import { useState, useEffect } from 'react';
import { useLocation, useParams, useNavigate } from 'react-router-dom';
import { CupSoda, Coffee } from 'lucide-react';
import axios from 'axios';
import { StyledMain } from '../../styles/Main.styled';
import { StyledGoodsDetail, GoodsImg, GoodsBuy, GoodsCart } from './Detail.styled';
import BottomBtn from '../../components/BottomBtn/BottonBtn';
import OptionsGroup from '../../components/OptionsGroup/OptionsGroup';
import GoodsCount from '../../components/GoodsCount/GoodsCount';
import useOptionsStore from '../../store/useOptionsStore';
import useSelectStore from '../../store/useSelectStore';
import useOrderStore from '../../store/useOrderStore';

const Detail = () => {
   const navigate = useNavigate();
   const { options, addOptions } = useOptionsStore();
   const { cup, ice, options:selectOptions, updateSelect, getSelect} = useSelectStore();
   const {orders, addOrder} = useOrderStore();

   const {id} = useParams();
   const [data, setData] = useState(null);
   const [optionsGroup, setOptionsGroup] = useState(null);
   
   useEffect(()=>{
      const getGoodsGroup = async() => {
         try {
            const response = await axios.get(`/goods/detail/${id}`);
            setData(response.data[0]);
            updateSelect('goodsNm', response.data[0].goodsNm);
            updateSelect('goodsPrice', response.data[0].goodsPrice.replace(/\.\d+/, ''));
         } catch(error) {
            console.log('error: ', error);
         }
      };
      getGoodsGroup();

   }, [id]);
   useEffect(()=>{
      if(data && Array.isArray(data.options)) {
         const newOptions = data.options.reduce((acc, item) => {
            const keyNm = `opt${item.optNo}`;
            acc[keyNm]= {
               optNm: item.optNm,
               optPrice: item.optPrice,
               optMaxCnt: item.optMaxCnt,
               optCnt: 0
            }
            return acc;
         }, {});
         setOptionsGroup(newOptions);
         
      }
   },[data]);
   useEffect(()=>{
      updateSelect('options', optionsGroup)
   }, [optionsGroup]);
   // 주문 핸들
   const handleOrder = (e) => {
      const {name, value} = e.target;
      updateSelect(name, value)
   }
   // 옵션 핸들링
   const handleOptions = (e, operation) => {
      const {name, value} = e.target;
      console.log('opt cnt value: ', value)

      switch(operation) {
         case 'increase': increaseCount(e); break;
         case 'decrease': decreaseCount(e); break;
         default : checkCount(e); break;
      }
   }
   // 카운드 증가
   const increaseCount = (e) => {
      console.log('increase')
      const {name} = e.target;
      setOptionsGroup((prevStates) => ({
         ...prevStates,
         [name] : {
            ...prevStates[name],
            optCnt: Math.min((optionsGroup[name].optCnt || 0) + 1, optionsGroup[name].optMaxCnt)
         }
      }))
   };
   // 카운트 감소
   const decreaseCount = (e) => {
      const {name} = e.target;
      setOptionsGroup((prevStates) => ({
         ...prevStates,
         [name] : {
            ...prevStates[name],
            optCnt: Math.max((optionsGroup[name].optCnt || 0) -1, 0) 
         }
      }))
   };
   // 옵션 체크항목 확인
   const checkCount = (e) => {
      console.log('count chk')
      const {name} = e.target;
      console.log('chk name: ', name);
      setOptionsGroup((prevStates) => ({
         ...prevStates,
         [name]: {
            ...prevStates[name],
            optCnt: optionsGroup[name].optCnt === 0 ? 1 : 0
         }
      }));
   } 
   
   // 총 가격
   const setTotalPrice = () => {
   }

   // 장바구니 버튼 클릭 시
   const setOrder = () => {
      const select = getSelect();
      addOrder(select);
      navigate('/main');
   }


   return(
      data && optionsGroup &&(
         <StyledMain>
            <StyledGoodsDetail>
               <section className="goods__info">
                  <div className="goods__info--img">
                     <GoodsImg goodsNo={data.goodsNo+'.png'}/>
                  </div>
                  <div className="goods__tit goods__info--tit">{data.goodsNm}</div>
                  <div className="goods__info--box">
                     <p className="goods__tit goods__info--box-tit">가격</p>
                     <p className="goods__info--box-price">{data.goodsPrice.replace(/\.\d+/, '')
                                 .toString()
                                 .replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</p>
                  </div>
               </section>
               <section className="goods__options">
                  <ul className="goods__options--choice">
                     <li>
                        <p className="goods__tit goods__options--tit"> 컵선택</p>
                        <div className="goods__options--choice-type1">
                           <input type="radio"
                              id="goods_options1_1" 
                              name="cup"
                              value="1" 
                              onChange={handleOrder}
                              checked={cup === '1' ? true : false} />
                           <label htmlFor="goods_options1_1"><CupSoda font={20} color={cup === '1' ? '#fff' : '#000'} /><span>일회용</span></label>
                           <input type="radio"
                              id="goods_options1_2" 
                              name="cup"
                              value="2" 
                              onChange={handleOrder}
                              checked={cup === '2' ? true: false} />
                           <label htmlFor="goods_options1_2"><Coffee font={20} color={cup === '2' ? '#fff' : '#000'} /><span>매장용</span></label>
                        </div>
                     </li>
                     <li>
                        <p className="goods__tit goods__options--tit">얼음선택<span>(1개 선택)</span></p>
                        <div className="goods__options--choice-type2">
                           <label htmlFor="goods_options2_1">
                              <input type="radio" 
                                 id="goods_options2_1" 
                                 name="ice" 
                                 value="1"
                                 onChange={handleOrder}
                                 checked={ice == '1' ? true:false} />
                              <span>각얼음</span>
                           </label>
                           <label htmlFor="goods_options2_2">
                              <input type="radio" 
                                 id="goods_options2_2" 
                                 name="ice"
                                 value="2"
                                 onChange={handleOrder} 
                                 checked={ice == '2' ? true:false}   
                              />

                              <span>간얼음</span>
                           </label>
                        </div>
                     </li>
                    <OptionsGroup data={data.options} optData={optionsGroup} handleOptions={handleOptions}/> 
                  </ul>
               </section>
               <GoodsCount />

            </StyledGoodsDetail>
            <BottomBtn data={{className:"goods__order--btn", fn: setOrder, btnNm: "장바구니 담기"}} />
         </StyledMain>
      )
   )
  
}

export default Detail;