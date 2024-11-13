import {useState, useEffect} from 'react';
import {useNavigate} from 'react-router-dom';
import {StyledMain} from '../../styles/Main.styled';
import { StyledOrder } from './Order.styled';
import {Plus, Trash2} from 'lucide-react';
import kkoPay from '../../assets/pay/kakao_pay.svg';
import applePay from '../../assets/pay/apple_pay.svg';
import samsungPay from '../../assets/pay/samsung_pay.svg';
import creditPay from '../../assets/pay/credit_card.svg';
import naverPay from '../../assets/pay/naver_pay.svg';
import useOrderStore from '../../store/useOrderStore';
import useSelectStore from '../../store/useSelectStore';
import BottomBtn from '../../components/BottomBtn/BottonBtn';

const Order = () => {
   const  { resetSelect } = useSelectStore();
   const { orders, pay, delOrder, resetOrder, updatePay } = useOrderStore();
   const [total, setTotal] = useState(0);
   const navigate = useNavigate();
   const payModal = () => {
      // alert('pay test');
      resetSelect();
      resetOrder();
      navigate('/');
   }
   const deleteOrder =(idx) => {
      delOrder(idx);
      if(orders.length > 0) {
         navigate('/main')
      }
   }
   const getTotalPrice = () => {
      let totalPrice = 0;
      orders.forEach((items) => {
         // goodsPrice는 숫자값이라 Number로 변환 후 추가
         totalPrice += Number(items.goodsPrice);
         
         // options가 배열이라면, options 배열을 순회하여 optPrice 합산
         if (items.options && Array.isArray(items.options)) {
            items.options.forEach(option => {
               totalPrice += Number(option.optPrice) * Number(option.optCnt);
            });
         }
      });
   
      setTotal(totalPrice);
   };
   useEffect(()=>{
      getTotalPrice();
   }, [orders]);
   useEffect(()=>{}, [total]);
   return(
      <StyledMain>
         <StyledOrder>
            {/*  주문리스트 */}
            <section className="order__list">
               <div className="order__list--goods">
                  <ul className="order__list--goods-items">
                  { orders && orders.map((items, index) => (
                        <li key={index} className="order__list--goods-item">
                           <div className="order__list--goods-item-head">
                              <p className="order__list--goods-item-tit">{items.goodsNm}</p>
                              <div className="order__list--goods-item-remove" onClick={()=>(deleteOrder(index))}>
                                 <Trash2 font={24} />
                              </div>
                           </div>
                           {items.options && Object.entries(items.options).length > 0 && (
                              <ul className="order__list--goods-item-body">
                                 {Object.entries(items.options).map(([key, value], idx) => (
                                    <li key={idx}>{value.optNm}</li>
                                 ))}
                              </ul>
                           )}
                           <p className="order__list--godds-item-foot">{items.goodsPrice.replace(/\.\d+/, '')
                              .toString()
                              .replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</p>
                        </li>
                        )
                  )}
                  </ul>
               </div>
               <div className="order__list--add" onClick={()=> navigate('/main')}>
                  <Plus font={13} color="#071F60"/>
                  <span>메뉴 더 담기</span>
               </div>
            </section>
            {/* 겔제수단 */}
            <section className="order__pay">
               <p className="order__tit">결제수단</p>
               <div className="order__pay--items">
                  <input type="radio" name="pay" id="pay_1" value="신용카드" onChange={(e)=>updatePay(e.value)}/>
                  <label htmlFor='pay_1' className="order__pay--item">
                     <img src={creditPay} />
                     <p>신용카드</p>
                  </label>
                  <input type="radio" name="pay" id="pay_2" value="삼성페이" onChange={(e)=>updatePay(e.value)}/>
                  <label htmlFor='pay_2' className="order__pay--item">
                     <img src={samsungPay} />
                     <p>삼성페이</p>
                  </label>
                  <input type="radio" name="pay" id="pay_3" value="카카오페이" onChange={(e)=>updatePay(e.value)}/>
                  <label htmlFor='pay_3' className="order__pay--item">
                     <img src={kkoPay} />
                     <p>카카오페이</p>
                  </label>
                  <input type="radio" name="pay" id="pay_4" value="네이버페이" onChange={(e)=>updatePay(e.value)}/>
                  <label htmlFor='pay_4' className="order__pay--item">
                     <img src={naverPay} />
                     <p>네이버페이</p>
                  </label>
                  <input type="radio" name="pay" id="pay_5" value="애플페이" onChange={(e)=>updatePay(e.value)}/>
                  <label htmlFor='pay_5' className="order__pay--item">
                     <img src={applePay} />
                     <p>애플페이</p>
                  </label>
               </div>
            </section>
            {/* 결제금액 */}
            <section className="order__price">
               <p className="order__tit">결제금액</p>
               <div className="order__price--box">
                  <p className="order__price--tit">총 결제금액</p>
                  <p className="order__price--price">{total.toString()
                              .replace(/\B(?=(\d{3})+(?!\d))/g, ",")}원</p>
               </div>
            </section>
         </StyledOrder>
         <BottomBtn data={{className: "", fn: payModal, btnNm: '결제하기'}} />
      </StyledMain>
   )
}
export default Order;
