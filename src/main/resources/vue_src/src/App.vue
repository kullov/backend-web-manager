<template>
  <v-app>
    <v-content>
      <v-menu offset-y>
        <v-btn
          slot="activator"
          color="primary"
          dark
        >
          Dropdown
        </v-btn>
        <v-list>
          <v-list-tile>
            <v-list-tile-title>Choice 1</v-list-tile-title>
          </v-list-tile>
          <v-list-tile>
            <v-list-tile-title>Choice 1</v-list-tile-title>
          </v-list-tile>
        </v-list>
      </v-menu>
      
      <v-btn color="secondary">Click me!</v-btn>
    </v-content>
  </v-app>
</template>

<script lang="ts">
import Vue from 'vue';
import About from './views/About.vue';

export default Vue.extend({
  name: 'App',

  components: {
    About,
  },

  data: () => ({
    //
  }),
});
</script>
