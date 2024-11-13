import {useNavigate} from 'react-router-dom';
import {StyledHeader} from './Header.styled';
import {StyledFlex, StyledItem} from '../../styles/StyledFlex/StyledFlex.styled';
import {House, Settings} from 'lucide-react';
import logoImg from '../../assets/logo/logo_68x68.png';

const Header = () => {
   const navigate = useNavigate();

   
   return(
      <StyledHeader>
        <div className='header__inner'>
            <StyledFlex ai={"center"} jc={"space-between"} height={"100%"}>
               <StyledItem 
                  iconSize={"32px"} 
                  onClick={()=> navigate('/')} 
                  style={{textAlign: "center"}}
                  >
                  <House size={24} color="#FFF"/>
               </StyledItem>
               <StyledItem ai={"center"}><img src={logoImg} alt="logo"/></StyledItem>
               <StyledItem 
                  iconSize={"32px"} 
                  style={{textAlign: "center"}}
                  >
                     <Settings size={24} color="#FFF" />
                  </StyledItem>
            </StyledFlex>
         </div> 
      </StyledHeader>
   )
}

export default Header;