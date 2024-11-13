import styled from 'styled-components';
import {colors, layouts} from '../../styles/valiables.styled';

export const StyledHeader = styled.header`
   width: 100%;
   background: ${colors.primary};
   .header__inner {
      height: ${layouts.headerHeight};
      padding: 0 15px;
      img {
         width: 48px;
      }

   }
`


