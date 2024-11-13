import styled from 'styled-components';
import {colors} from '../../styles/valiables.styled';

const IMG_URL = '../img/goods/';
export const StyledGoodsDetail = styled.div`
   height: 100%;
   overflow: scroll;
   padding-bottom: 60px;
   box-sizing: border-box;
   .goods__tit {
      font-size: 18px; 
      font-weight: bold;
   }
   .goods__cnt {
      display:flex;
      align-items: center;
      gap: 4px;
      span {
         display: inline-block;
         text-align: center;
         width: 12px;
      }
      input[type="text"] {
         width: 28px;
         text-align: center;
         border: 0;
         outline: none;
         font-size: 16px;
      }
      button {
         width: 24px;
         height: 24px;
         border-radius: 50%;
         border: 1px solid #e4e4e4;
         background: #fff;
         &:disabled {
            background: #e4e4e4;
         }
      } 
   }
   .goods__chk {
      input[type="checkbox"], input[type="radio"] {
         display: none;
         &:checked + label {
            background: ${colors.primary};
            position: relative;
            &::before {
               content: "";
               width: 9px;
               height: 2px;
               background: #fff;
               border-radius: 5px;
               position: absolute;
               top: 50%;
               left: 2px;
               transform: translateY(-50%) rotate(45deg);
            }
            &::after {
               content: "";
               width: 11px;
               height: 2px;
               background: #fff;
               border-radius: 5px;
               position: absolute;
               top: 50%;
               right: 2px;
               transform: translateY(-50%) rotate(-45deg);
            }
         }
      }
      label {
         display: inline-block;
         width: 20px;
         height: 20px;
         border: 1px solid #e4e4e4;
         border-radius: 3px;
      }
   }
   section {
      border-top: 8px solid #e4e4e4;
      &:first-child {
         border-top: 0;
      }
      &.goods__info {
         .goods__info--img {
            width: 100%;
            height: 280px;
         }
         .goods__info--tit {
            width: calc(100% - 40px);
            margin: 0 15px 20px;
            padding: 15px 10px;
            border-radius: 8px;
            box-shadow: 1px 3px 4px 1px rgba(0, 0, 0, 0.08);
            font-size: 20px;
            text-align: center;
         }
         .goods__info--box {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 15px;
            .goods__info--box-tit {
            }
         }
      }
      &.goods__options {
         ul li {
            padding:  20px 15px;
            border-top: 1px solid #e4e4e4;
            &:first-child {
               border-top: 0;
            }
         }
         .goods__options--tit {
            margin-bottom: 8px;
            span {
               margin-left: 3px;
               font-size: 16px;
               color: ${colors.primary};
            }
         }
         .goods__options--choice {
            .goods__options--choice-type3, .goods__options--choice-type4 {
               > div {
                  display: flex;
                  margin-bottom: 8px;
                  .goods__options--choice-tit {
                    font-size: 15px; 
                  }
                  .goods__options--choice-box {
                     display: flex;
                     font-size: 15px;
                     
                  }
               }
            }
         }
         .goods__options--choice-type1 {
            display: flex;
            gap: 8px;
            input {
               display: none;
               &:checked + label {
                  background: ${colors.primary};
                  border-color: ${colors.primary};
                  color: #fff;
                  span {
                     font-weight: bold;
                  }
               }
            }
            label {
               width: calc(100% / 2 - 8px);
               height: 48px;
               display: flex;
               justify-content: center;
               border-radius: 8px;
               border: 1px solid #e4e4e4;
               align-items: center;
               gap: 3px;
               background: #fff;
               padding: 8px;
            }
         }
         .goods__options--choice-type2 {
            label {
               display: flex;
               margin-bottom: 6px;
               align-items: center;
               gap: 3px;
            }
            input[type="radio"] {
               -webkit-appearance: none;
               -moz-appearance: none;
               width: 20px;
               height: 20px;
               border: 1px solid #e4e4e4;
               border-radius: 50%;
               outline: none;
               cursor: pointer;
               &:checked {
                  background-color: #fff;
                  border: 6px solid ${colors.primary};
                  box-shadow: 0 0 0 1px #e4e4e4;
               }
            }
         }

         .goods__options--choice-type3 {
            .goods__options--choice-box {
               margin-left: auto;
               >p {
                  margin-right: 8px;
               }
            }
         }
         .goods__options--choice-type4 {
            .goods__options--sub {

               .goods__options--choice-tit {
                  padding-left : 20px;
                  position: relative;
                  &::after {
                     content: "";
                     width: 1px;
                     height: 9px;
                     background: #333;
                     position: absolute;
                     top: 3px;
                     left: 8px;
                  }
                  &::before {
                     content: "";
                     width: 6px;
                     height: 1px;
                     background: #333;
                     position: absolute;
                     top: 50%;
                     left: 8px;
                     transform: translateY(-50%);
                  }
               }
               .goods__options--choice-box {
                  margin-left: auto;
                  margin-right: 0;
                  > p {
                     margin-right: 8px;
                  }
               }
            }
            .goods__options--choice-box {
               align-items: center;
               margin-right: auto;
               > p {
                  margin-left: 8px;
               }
               
            }
         }
      }
   }

`

export const GoodsImg = styled.div`
   width: 100%;
   height: 100%;
   background-image: url(${props => `${IMG_URL}${props.goodsNo}`});
   background-size: 55%;
   background-position: center top;
   background-repeat: no-repeat;
`;

export const GoodsCart = styled.div`
   width: 100%;
   max-width: 480px;
   height: 60px;
   background: #eceef3;
   padding: 10px 20px;
   box-sizing: border-box;

   position: fixed;
   bottom: 0;
   left: 50%;
   transform: translateX(-50%);
   button {
      display: inline-block;
      width: 100%;
      height: 100%;
      border-radius: 50px;
      font-size: 16px;
      font-weight: bold;
      color: #fff;
      background: ${colors.primary};
      cursor: pointer;
   }
`
