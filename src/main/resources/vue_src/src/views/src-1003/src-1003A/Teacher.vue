<template src="./Teacher.html"></template>
<style lang="scss" scoped src="./Teacher.scss"></style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Teacher extends Vue{
  private isLoading: boolean = false;
}
</script>