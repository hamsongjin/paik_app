import styled from 'styled-components';
import {colors} from '../../styles/valiables.styled';

export const AppBar = styled.div`
   height: 84px;
   background: ${colors.primary};
`;
export const SwiperWrap = styled.div`
   height: calc(100% - 84px);
   .swiper {
      height: 100%;
   }
   .indexImg {
      width: 100%;
      height: 100%;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      &.index1 {
         background-image: url(${props => props.imgAray[0]});
      }
      &.index2 {
         background-image: url(${props => props.imgAray[1]});
      }
      &.index3 {
         background-image: url(${props => props.imgAray[2]});
      }
   }
`;
export const ItemWrap = styled.ul`
   height: 100%;
   display: flex;
   align-items: center;
   .item {
      width: 50%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: #fff;
      font-weight: bold;
      img {
         width: 30px;
      }
      .img_item {
         width: 38px;
         height: 38px;
         margin: 2px 0 6px;
         border-radius: 50%;
         background-color: #fff;
         background-repeat: no-repeat;
         background-position: center;
         &.pick {
            background-image: url(${props => props.pickImg});
            background-size: 19px;
         }
         &.store {
            background-image: url(${props => props.storeImg});
            background-size: 29px;
         }
         div, p {
            pointer-events: none;
         }
      }
      
   }
`