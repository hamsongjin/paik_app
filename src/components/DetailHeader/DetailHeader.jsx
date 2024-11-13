import { useState, useEffect  } from "react"
import { useNavigate, useLocation } from "react-router-dom";
import { StyledDetailHeader } from "./DetailHeader.styled";
import {ChevronLeft} from 'lucide-react';

const DetailHeader = ({data}) => {
   const navigate = useNavigate(); 
   
   
   return(
      <StyledDetailHeader>
         <div className="header__inner">
            <div className="header__inner--left" 
               onClick={() => {navigate('/main')}}
            >
               <ChevronLeft font={24} color="#FFF"/>
            </div>
            <p className="header__inner--tit">{data}</p>   
         </div>         
      </StyledDetailHeader>
   )
}
export default DetailHeader;