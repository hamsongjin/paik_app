import { StyledBottomBtn } from "./BottomBtn.styled";


const BottomBtn = ({data}) => {
   return(
      <StyledBottomBtn>
         <button type="button" className={data.className} onClick={data.fn}>{data.btnNm}</button>
      </StyledBottomBtn>
   )
}

export default BottomBtn;