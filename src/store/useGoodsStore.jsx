import { create } from 'zustand';

const useGoodsStore = create((set) => ({
   goods: [],
   addGoods: (newGoods) =>
      set((state) => ({
         goods: [...state.goods, newGoods]
      })),
}));

export default useGoodsStore;