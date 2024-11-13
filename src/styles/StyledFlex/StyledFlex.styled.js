import styled from 'styled-components';

export const StyledFlex = styled.div`
   height: ${(props) => props.height};
   display: flex;
   align-items: ${(props) => props.ai};
   justify-content: ${(props) => props.jc ? props.jc : "left"};
`;

export const StyledItem = styled.div`
   padding: 0 5px;
   width: ${(props) => props.iconSize};
   flex: ${(props) => !props.iconSize ? "1 1 auto" : ""};
   text-align: ${(props) => props.ai};
   svg {
      pointer-events: none;
   }
`;