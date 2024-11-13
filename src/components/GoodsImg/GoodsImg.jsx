import { StyledGoodsImg } from './GoodsImg.styled';

const GoodsImg = ({goodsNo, className}) => {
   return(
      <StyledGoodsImg data={goodsNo} className={className}/>
   )
}
export default GoodsImg;
