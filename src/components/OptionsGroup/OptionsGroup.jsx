import { useState, useEffect } from 'react';

const OptionsGroup = ({data,optData, handleOptions}) => {
   // 객체 변환
   const optionsData = data ? data.reduce((acc, item) => {
      if(!acc[item.optType]) {
         acc[item.optType] = [];
      }
      acc[item.optType].push(item);
      return acc;
   }, {}) : {};

   useEffect(() => {
    if(data && optData) {
      console.log('opt data: ', optData); // 변경될 떄 데이터가 바뀌기는 용
    } 
   //  console.log('options data: ', optionsData); // 보여주기 용
   }, [optionsData]); // optionsData가 변경될 때마다 실행


   return (
      data && Object.entries(optionsData).map(([optType, items]) => {
         const typeClassNm = optType === '토핑' ? "goods__options--choice-type3" : "goods__options--choice-type4";
         let typeNmEn = '';
         switch(optType) {
            case '샷': typeNmEn = 'shot'; break;
            case '토핑': typeNmEn = 'topping'; break;
            case '선택': typeNmEn = 'select'; break;
         }
         return (
            <li key={typeNmEn} className={typeClassNm}>
               <p className="goods__tit goods__options--tit">{optType} 선택</p>
               {items.map((item, index) => {
                  const isSoldOut = item.soldOut === 'y' ? 'soldOut' : ''; 
                  const keyNm = `opt${item.optNo}`;
                  // console.log('keyNm: ', keyNm);
                  if (item.optMaxCnt !== null) {
                     return (
                        <div key={typeNmEn + keyNm} className={`${typeNmEn == 'shot' ? "goods__options--sub" : "" } ${isSoldOut}`}>
                           <p className="goods__options--choice-tit">{item.optNm}</p>
                           <div className="goods__options--choice-box">
                              <p>{item.optPrice}원</p>
                              <div className="goods__cnt">
                                 <button 
                                    name={keyNm}
                                    value={optData[keyNm]?.optCnt - 1 || 0} 
                                    disabled={!optData[keyNm] || optData[keyNm].optCnt <= 0}
                                    onClick={(e) => handleOptions(e, 'decrease')}
                                 >-</button>
                                 <span>{optData[keyNm]?.optCnt || 0}</span>
                                 <button 
                                    name={keyNm} 
                                    value={optData[keyNm]?.optCnt + 1 || 0}
                                    disabled={!optData[keyNm] || optData[keyNm].optCnt >= item.optMaxCnt}
                                    onClick={ (e) => handleOptions(e, 'increase')}
                                    // onClick={() => increaseCount(item.optNm, item.optMaxCnt)}
                                 >+</button>
                              </div>
                           </div>
                        </div> 
                     )
                  }
                  return (
                     <div key={typeNmEn + keyNm} className={isSoldOut}>
                        <div className="goods__options--choice-box goods__chk">
                           <input 
                              id={typeNmEn + index} 
                              type="checkbox"
                              name={keyNm}
                              // value={optData[keyNm].optCnt === 0 ? 1 : 0}
                              value={1}
                              disabled={item.soldOut === 'y'}
                              onChange={handleOptions}
                           />
                           <label htmlFor={typeNmEn + index}></label>
                           <p className="goods__options--choice-tit">{item.optNm}</p>
                        </div>
                        <p>{item.optPrice}원</p>
                     </div>
                  )
               })}
            </li>
         );
      })
   );
   
}

export default OptionsGroup;