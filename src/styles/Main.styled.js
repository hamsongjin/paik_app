import styled from 'styled-components';
import {layouts} from './valiables.styled';

export const StyledMain = styled.main`
   height: ${(props) => props.page === 'index'? "100%" : props.page === 'main' ? "calc(100% - "+ layouts.headerHeight +")" : "calc(100% - "+ layouts.subHeaderHeight + ")"};
   overflow: hidden;
`