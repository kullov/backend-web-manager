<template>
  <div>
    <el-tooltip
      v-if="isHeader"
      :tabindex="-1"
      effect="dark"
      content="params.headerName"/>
  </div>
</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class RenderCellHeaderTooltipComponent extends Vue {
  private params: any = null;
  private isHeader: boolean = false;

  private created() {
    this.isHeader = (this.params.rowIndex === undefined);
  }

}
</script>