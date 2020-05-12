import { Module } from 'vuex';

const getDefaultState = () => {
  return {
    items: [],
  };
};

const abilityModule: Module<any, any> = {
  namespaced: true,
  state: getDefaultState(),
  getters: {
    getItems: (state: any) => {
      return state.items;
    }
  },
  mutations: {
    setItems: (state: any, payload: any[]) => {
      state.items = payload;
    },
    resetState: (state: any) => {
      Object.assign(state, getDefaultState());
    }
  },
  actions: {
    SEARCH_ITEMS: (context: any, payload?: any) => {
      context.commit('setItems', payload);
    },
    RESET_STATE: (context: any, payload?: any) => {
      context.commit('resetState', payload);
    }
  }
};
export default abilityModule;
