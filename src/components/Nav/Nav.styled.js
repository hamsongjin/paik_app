import styled from 'styled-components';
import {colors, layouts} from '../../styles/valiables.styled';
export const StyledNav = styled.nav`
   height: 38px;
   background: #fff;
   padding: 6px 0 6px 8px;
   overflow: hidden;
   box-sizing: border-box;
   .nav__item {
      display: inline-block;
      min-width: 25px;
      padding: 3px 8px;
      border: 1px solid ${colors.primary};
      border-radius: 25px;
      text-align: center;
      font-size: 14px;
      &.active {
         background: ${colors.primary};
         color: #fff;
      }
   }
`;
