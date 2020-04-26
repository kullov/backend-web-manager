<template>
  <div class="container">
    <el-row>
      <h2 class="p-2">Tạo phiếu yêu cầu thực tập</h2>
      <el-form label-width="7rem">
        <el-col :span="12">
          <el-form-item label="Name :" class="form-group">
            <el-input type="text" name="name" id="name" required />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Name :" class="form-group">
            <el-input type="text" name="father_name" id="father_name" required />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Name :" class="form-group">
            <el-input type="text" name="address" id="address" required />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Gender :" class="form-group">
            <el-radio-group v-model="ruleForm.type" class="form-radio-item">
              <el-radio name="gender" value="male">Male</el-radio>
              <el-radio name="gender" value="female" >Female</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="State :" class="form-group">
            <el-select name="state" id="state">
              <el-option value></el-option>
              <el-option value="us">America</el-option>
              <el-option value="uk">English</el-option>
            </el-select>
            <span class="select-icon">
              <i class="zmdi zmdi-chevron-down"></i>
            </span>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="City :" class="form-group">
            <el-select name="city" id="city">
              <el-option value></el-option>
              <el-option value="losangeles">Los Angeles</el-option>
              <el-option value="washington">Washington</el-option>
            </el-select>
            <span class="select-icon">
              <i class="zmdi zmdi-chevron-down"></i>
            </span>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="DOB :" class="form-group">
            <el-input type="text" name="birth_date" id="birth_date" />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Pincode :" class="form-group">
            <el-input type="text" name="pincode" id="pincode" />
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Course :" class="form-group">
            <el-select name="course" id="course">
              <el-option value></el-option>
              <el-option value="computer">Computer Operator & Pragramming Assistant</el-option>
              <el-option value="desiger">Designer</el-option>
              <el-option value="marketing">Marketing</el-option>
            </el-select>
            <span class="select-icon">
              <i class="zmdi zmdi-chevron-down"></i>
            </span>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Email ID :" class="form-group">
            <el-input type="email" name="email" id="email" />
          </el-form-item>
        </el-col>
      </el-form>
    </el-row>
    <el-row class="form-submit">
      <el-col>
        <el-button>Reset</el-button>
        <el-button>Submit Form</el-button>
      </el-col>
    </el-row>
  </div>
</template>
<style lang="scss" scoped></style>
<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import { CreateFormModel } from "@/models";

@Component
export default class Create extends Vue {
  private rules: any = null;
  private ruleForm: CreateFormModel = new CreateFormModel();

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

  private messageClass() {
    return {
      "md-invalid": this.hasMessages
    };
  }
}
</script>