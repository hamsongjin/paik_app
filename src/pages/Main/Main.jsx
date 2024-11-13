import { StyledMain } from '../../styles/Main.styled';
import Nav from '../../components/Nav/Nav';
import create from 'zustand';
import { useNavigate } from 'react-router-dom';
import useGoodsStore from '../../store/useGoodsStore';
import { AnchorProvider } from 'react-anchor-navigation';
import GoodsSec from '../../components/GoodsSec/GoodsSec';
import {GoodsWrap} from './Main.styled';
import BottomBtn from '../../components/BottomBtn/BottonBtn';
import useOrderStore from '../../store/useOrderStore';

const Main = () => {
   const navigate = useNavigate();
   const {orders} = useOrderStore();
   const {goods} = useGoodsStore();
   console.log('goods: ', goods);
   
   return(
      <StyledMain>
         <AnchorProvider>
            <Nav />
            <GoodsWrap>
               <GoodsSec data={goods}/>
            </GoodsWrap>
         </AnchorProvider>
         {orders && orders.length > 0 && (
            <BottomBtn data={{className: "main__order--btn", fn: () => navigate('/order'), btnNm: '주문하기'}} />
         )}
      </StyledMain>
   );
}

export default Main;
