<template>
  <div v-loading="isLoading">
    <ul id="example-1">
    <li v-for="item in items" :key="item.id">
      {{ item.name }}
    </li>
  </ul>
  <el-button @click="getAllAbilities()">Refresh</el-button>
  <el-button @click="deleteAbility()">Delete</el-button>
  </div>
</template>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { abilityService } from '@/services/ability.service';

@Component
export default class Ability extends Vue {
  private isLoading: boolean = false;
  private items: Ability[] = [];
  private created() {
    this.getAllAbilities();
  }
  private getAllAbilities() {
    this.isLoading = true;
    abilityService
      .getAllAbilities()
      .then((res: any) => {
        this.items = res.data
        // this.$store.
      })
      .catch(() => {
        alert("Lỗi!");
      })
      .finally(() => this.isLoading = false);
  }

  private deleteAbility() {
    abilityService.deleteAbility('2').then((res: any) => {
      alert('Delete success!');
      this.getAllAbilities();
    });
  }
}
</script>