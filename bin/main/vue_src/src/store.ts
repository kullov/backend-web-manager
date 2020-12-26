import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);
const store = new Vuex.Store({
  state: {
    currentUser: null,
    token: null,
  },
  mutations: {
    setCurrentUser(state, payload) {
      state.currentUser = payload;
    },
    setToken(state, payload) {
      state.token = payload;
    }
  },
  getters: {
    getCurrentUser: (state: any) => {
      return state.currentUser;
    },
    getToken: (state: any) => {
      return state.token;
    }
  },
  actions: {
    SET_CURRENT_USER({ commit }, payload) {
      commit('setCurrentUser', payload);
    },
    SET_TOKEN({ commit }, payload) {
      commit('setToken', payload);
    },
  },
  strict: true
});
export default store;
