<template src="./Create.html"></template>
<style lang="scss" scoped src="./Create.scss"></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { RequestModel } from "@/models";
import { abilityService } from '../../../services';

@Component
export default class Create extends Vue {
  private rules: any = null;
  private createForm: RequestModel = new RequestModel();
  private isLoading = false;

  private noError: string = "";
  private required: string = "";
  private textarea: string = "";
  private hasMessages: boolean = false;
  private isDisabledTimeWork: boolean = true;
  private listAbilities: any = [];

  private created() {
    this.clearError();
    this.getListAbilities();
  }
  private mounted() {
    this.rules = {
      name: [
        {
          required: true,
          message: "Please input Activity name",
          trigger: "change"
        },
        { min: 3, max: 100, message: "Length should be 3 to 100", trigger: "blur" }
      ],
      amount: [
        {
          required: true,
          message: "Vui Lòng nhập số lượng cần tuyển",
          trigger: "change"
        }
      ],
      position: [
        {
          required: true,
          message: "Vui lòng nhập vị trí cần tuyển",
          trigger: "change"
        }
      ],
      status: [
        {
          required: true,
          message: "Vui lòng chọn trạng thái phiếu",
          trigger: "change"
        }
      ],
      type: [
        {
          required: true,
          message: "Vui lòng chọn hình thức làm việc",
          trigger: "change"
        }
      ],
      // time: [
      //   {
      //     required: true,
      //     message: "Vui lòng chọn ca làm việc",
      //     trigger: "submit"
      //   }
      // ],
      required: [
        {
          required: true,
          message: "Vui lòng chọn các kỹ năng yêu cầu",
          trigger: "change"
        }
      ]
    };
  }

  private getListAbilities() {
    this.isLoading = true;
    abilityService
      .getAllAbilities()
      .then((res: any) => {
        this.listAbilities = res.data;
      })
      .catch(err => {
        alert('Có lỗi!');
      })
      .finally(() => this.isLoading = false);
  }

  private submit() {
    (this.$refs['ruleForm'] as any).validate((valid: boolean, errors: any) => {
      if (valid) {
        alert('Bạn đang tạo phiếu yêu cầu');
        console.log(this.createForm);
        
      }
    });
  }

  private isDisabledTimeWorkFunc() {
    if (this.createForm.type === 'fulltime') {
      this.isDisabledTimeWork = true;
    } else {
      this.isDisabledTimeWork = false;
    }
  }

  private clearError() {
    if ((this.$refs['ruleForm'] as any)) {
      (this.$refs['ruleForm'] as any).clearValidate();
    }
    // for (let tooltip of Object.keys(this.tooltip)) {
    //   if (tooltip in this.tooltip) {
    //     this.tooltip[tooltip].clearError();
    //   }
    // }
  }
}
</script>