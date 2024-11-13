import styled from 'styled-components';

export const StyledSec = styled.section`
   border-top: 8px solid #e4e4e4;
   &.active {
      .sec__head {
         .sec__head--icon {
            transform: rotate(0deg);
         }
      }
      .sec__body {
         height: auto;
         .sec__body--items {
            height: 80px;
         }
      }
   }
   .sec__head {
      display: flex;
      align-items: center;
      padding: 5px 10px;
      border-bottom: 1px solid #e4e4e4;
      p {
         pointer-events: none;

         &.sec_head--tit {
            font-size: 17px;
         }
         &.sec__head--icon {
            display: flex;
            margin-left: auto;
            transform: rotate(180deg);
         }
      }
   }
   .sec__body {
      height: 0;
      overflow: hidden;
      padding: 0 10px;
      .sec__body--items {
         height: 0;
         display: flex;
         .sec__body--items-left {
            display: flex;
            gap: 8px;
            flex-direction: column;
            justify-content: center;
            flex: 1 1 auto;

            .sec__body--items-left-tit{
               font-size: 17px;
               font-weight: 600;
            }
            .sec__body--items-left-price{
               font-size: 15px;

            }
         }
         .sec__body--items-right {
            width: 80px;
         
            .sec__body--items-right-img {

            }
         }
      }
   }
`;


