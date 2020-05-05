<template>
  <div>
    <ul id="example-1">
    <li v-for="item in items" :key="item.id">
      {{ item.name }}
    </li>
  </ul>
  </div>
</template>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { abilityService } from '@/services/ability.service';

@Component
export default class Ability extends Vue {
  private items: Ability[] = [];
  private created() {
    this.getList();
  }
  private getList() {
    abilityService.getAllTasks().then((res: any) => {
      this.items = res.data
    });

  }
}
</script>