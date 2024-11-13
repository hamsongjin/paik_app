import { useEffect, useState } from 'react';
import { useSelect, useRef } from 'downshift';
import {useNavigate} from 'react-router-dom';
import {Swiper, SwiperSlide} from 'swiper/react';
import {Autoplay} from 'swiper/modules';
import 'swiper/css';
import 'swiper/css/autoplay';
import {StyledMain} from '../../styles/Main.styled';
import {AppBar, ItemWrap, SwiperWrap} from './Index.styled';
import { create } from 'zustand';
import useGoodsStore from '../../store/useGoodsStore';
import useOptionsStore from '../../store/useOptionsStore';
import useCategoryStore from '../../store/useCategoryStore';
import axios from 'axios';
import index1 from '../../assets/slide/index1.png';
import index2 from '../../assets/slide/index2.png';
import index3 from '../../assets/slide/index3.png';
import pickup from '../../assets/icon/pickup.png';
import store from '../../assets/icon/store.png';

const Index = () => {
	const navigate = useNavigate();
	const imgAray = [index1, index2, index3];


	return (
		<StyledMain page={"index"}>
			<SwiperWrap imgAray={imgAray}>
				<Swiper 
					modules={[Autoplay]}
					slidesPerView={1}
					speed={500}
					loop={true}
					autoplay={{ delay: 3000, disableOnInteraction: false }}
					mousewheel={false}
					navigation={false}
				>
					<SwiperSlide><div className='indexImg index1'></div></SwiperSlide>
					<SwiperSlide><div className='indexImg index2'></div></SwiperSlide>
					<SwiperSlide><div className='indexImg index3'></div></SwiperSlide>
				</Swiper>

			</SwiperWrap>
			<AppBar>
				<ItemWrap pickImg={pickup} storeImg={store}>
					<li className='item' onClick={()=>navigate('/main')}>
						<div class="img_item pick"></div>
						<p>픽업</p>
					</li>
					<li className='item' onClick={()=> navigate('/main')}>
						<div class='img_item store'></div>
						<p>매장</p>
					</li>
				</ItemWrap>

			</AppBar>
		</StyledMain> 
	);
};

export default Index;
