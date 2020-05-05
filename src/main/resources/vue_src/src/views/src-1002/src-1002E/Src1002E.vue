<template src="./Src1002E.html"></template>
<style lang="scss" scoped src="./Src1002E.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { CreateFormModel } from "@/models";

@Component
export default class Src1002E extends Vue {
  private rules: any = null;
  private createForm: CreateFormModel = new CreateFormModel();

  private noError: string = "";
  private required: string = "";
  private textarea: string = "";
  private hasMessages: boolean = false;
  private mounted() {
    this.rules = {
      name: [
        {
          required: true,
          message: "Please input Activity name",
          trigger: "submit"
        },
        { min: 3, max: 5, message: "Length should be 3 to 5", trigger: "blur" }
      ],
      region: [
        {
          required: true,
          message: "Please select Activity zone",
          trigger: "change"
        }
      ],
      date1: [
        {
          type: "date",
          required: true,
          message: "Please pick a date",
          trigger: "change"
        }
      ],
      date2: [
        {
          type: "date",
          required: true,
          message: "Please pick a time",
          trigger: "change"
        }
      ],
      type: [
        {
          type: "array",
          required: true,
          message: "Please select at least one activity type",
          trigger: "change"
        }
      ],
      resource: [
        {
          required: true,
          message: "Please select activity resource",
          trigger: "change"
        }
      ],
      desc: [
        {
          required: true,
          message: "Please input activity form",
          trigger: "submit"
        }
      ]
    };
  }

}
</script>