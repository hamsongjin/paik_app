import styled from 'styled-components';

const IMG_URL = `${process.env.PUBLIC_URL}/img/goods/`;
export const StyledGoodsImg = styled.div`
   width: 100%;
   height: 100%;
   background-image: ${props => `url(${IMG_URL+props.data}.png)`};
   background-size: 50%;
   background-position: center;
   background-repeat: no-repeat;
`