import {Swiper, SwiperSlide} from 'swiper/react';
import  useCategoryStore  from '../../store/useCategoryStore';
import { AnchorLink } from 'react-anchor-navigation';
import 'swiper/css';
import 'swiper/css/autoplay';
import { StyledNav } from './Nav.styled';
import { useState, useEffect } from 'react';

const Nav = () => {
   const { category } = useCategoryStore();
   const [ nav, setNav ] = useState(null);
   const getCate = category && category.length > 0;
   useEffect(()=>{
      console.log('getcate: ', getCate);
   }, [])
   useEffect(() => {
      if (category.length > 0 && !nav) {
         setNav(category[0].cateCd);
      }
      console.log('category cate: ', category);
   }, [category]);
   
   return(
      <StyledNav>
            <Swiper
               spaceBetween={5}
               slidesPerView="auto"
            >
               {category && category.map((item, index) => {
                  return ( 
                  <SwiperSlide key={`nav__${item.cateCd}-${index}`} style={{width: 'auto'}}>
                     <AnchorLink
                        href={`#${item.cateCd}`} 
                        className={nav === item.cateCd ? "nav__item active": "nav__item"}
                        onClick={()=>{ setNav(item.cateCd)}}
                     >
                        {item.cateNm}
                     </AnchorLink>
                  </SwiperSlide>)
               })}
            </Swiper>
      </StyledNav>
   )
}

export default Nav;