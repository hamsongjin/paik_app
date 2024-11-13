import styled from 'styled-components';
import {colors} from '../../styles/valiables.styled'

export const StyledBottomBtn = styled.div`
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