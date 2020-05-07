<template src="./InternPage.html"></template>
<style lang="scss" scoped src="./InternPage.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class InternPage extends Vue{
  private isLoading: boolean = false;
}
</script>