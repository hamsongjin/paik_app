import { create } from 'zustand';

const useOptionsStore = create((set) => ({
   options: [],
   addOptions: (newOptions) =>
      set(() => ({
         options: [newOptions]
      })),
}));

export default useOptionsStore;