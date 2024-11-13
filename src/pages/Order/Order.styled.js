import styled from 'styled-components';
import { colors } from '../../styles/valiables.styled';
export const StyledOrder = styled.div`
   height: 100%;
   padding-bottom: 60px;
   overflow: scroll;
   box-sizing: border-box;
   .order__tit {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 8px;
   }
   section {
      border-top: 8px solid #e4e4e4;
      padding: 15px 0;
      &:first-child {
         border-top: 0;
      } 
      &.order__list {
         .order__list--goods {
            padding: 0 15px 12px;
            .order__list--goods-item {
               padding: 10px 0;
               border-top: 1px solid #e4e4e4;
               &:first-child {
                  border-top: 0;
               }
               .order__list--goods-item-head {
                  display: flex;
                  margin-bottom: 8px;
                  align-items: center;
                  .order__list--goods-item-tit {
                     font-size: 17px;
                     font-weight: bold;
                  }
                  .order__list--goods-item-remove {
                     display: flex;
                     margin-left: auto;
                     cursor: pointer;
                     svg {
                        pointer-events: none;
                     }
                  }

               }

               .order__list--goods-item-body {
                  display: flex;
                  padding: 
                  margin-bottom: 8px;
                  flex-direction: column;
                  gap: 5px;
                  font-size: 15px;
                  color: #9c9c9c;
                  li {
                     padding-left: 10px;
                     position: relative;
                     &::before {
                        content: "";
                        width: 1px;
                        height: 7px;
                        background: #9c9c9c;
                        position: absolute;
                        top: 3px;
                        left: 1px;

                     }
                     &::after {
                        content: "";
                        width: 4px;
                        height: 1px;
                        background: #9c9c9c;
                        position: absolute;
                        bottom: 9px;
                        left: 2px;
                     }
                  }
               }
               .order__list--godds-item-foot {
                  margin-top: 8px;
               }
            }

            }
         .order__list--add {
            display: flex;
            padding: 0 15px;
            border-top: 1px solid #e4e4e4;
            align-items: center;
            justify-content: center;
            padding: 10px;
            font-size: 15px;
            font-weight: bold;
            color: ${colors.primary};
         }
      }
      &.order__pay {
         padding: 15px 15px 30px;
         .order__pay--items {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 10px 8px;
            > input {
               display: none;
               &:checked + label {
                  border-color: ${colors.primary};
                  box-shadow: inset ${colors.primary} 0px 0px 0px 2px;
               }
            }
            .order__pay--item {
               width: calc(100% / 3 - 8px);
               display: flex;
               padding: 3px 0;
               border: 1px solid #e4e4e4;
               border-radius: 8px;
               align-items: center;
               flex-direction: column;
               gap: 8px;
               box-sizing: border-box;
               cursor: pointer;
               img {
                 width: 65%; 
                 height: 90px;
               }
               img, p {
                  pointer-events: none;
               }
            }
         }
      }
      &.order__price {
         .order__price--box {
            display: flex;
            .order__price--price {
               margin-left: auto;
               font-weight: bold;
            }
         }
      }

   }
`;
