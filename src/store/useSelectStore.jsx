import { create } from 'zustand';

const useSelectStore = create((set, get) => ({
   goodsNm: null,
   cup: '1', // 1: 일회용, 2: 매장용
   ice: '1', // 1: 각얼음, 2: 간얼음
   cnt: 1,
   goodsPrice: null,
   totalPrice: null,
   options: null,

   // 가져오기
   getSelect: () => {
      const state = get();
      set({ previousState: { ...state } });
      return state;
   },
   // 상태를 업데이트할 메서드 예시
   updateSelect: (keyNm, keyVal) => set((state) => ({
      ...state,
      [keyNm]: keyVal
   })),
   // 리섹
   resetSelect: () => set((state) => ({
      goodsNm: null,
      cup: '1', // 1: 일회용, 2: 매장용
      ice: '1', // 1: 각얼음, 2: 간얼음
      cnt: 1,
      goodsPrice: null,
      totalPrice: null,
      options: null,
   }))
}));

export default useSelectStore;