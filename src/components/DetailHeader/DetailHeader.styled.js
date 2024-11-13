import styled from 'styled-components';
import { colors } from '../../styles/valiables.styled';

export const StyledDetailHeader = styled.header`
   .header__inner {
      height: 48px;
      background: ${colors.primary};
      display: flex;
      align-items: center;
      padding: 0 15px;
      .header__inner--left {
         width: 32px;
         svg {
            pointer-events: none;
         }
      }
      .header__inner--tit {
         color: #fff;
         font-weight: bold;
         margin-left: calc(50% - 47px);
      }
   }
`
