import { create } from 'zustand';

const useCategoryStore = create((set) => ({
   category: [],
   addCategory: (newCategory) =>
      set((state) => ({
         category: [...state.category, newCategory]
      })),
}));

export default useCategoryStore;