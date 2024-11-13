import { create } from 'zustand';

const useOrderStore = create((set) => ({
   orders: [],
   pay: null,
   addOrder: (newOrder) => set((state) => ({
      orders: [...state.orders, newOrder]
   })),
   resetOrder: () => set((state) => ({
      orders: []
   })),
   delOrder: (idx) => set((state) => ({
      orders: state.orders.filter((_, i) => i !== idx),
   })),
   updatePay: (item) => set((state) => ({
      pay: item
   }))
}));

export default useOrderStore;