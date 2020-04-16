<template>
  <div class="container">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="6rem" class="demo-ruleForm container">
      <el-row :gutter="20">
        <el-col :span="12">
          <el-form-item label="Activity name" prop="name">
            <el-input type="text" v-model="ruleForm.name"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Activity zone" prop="region">
            <el-select v-model="ruleForm.region" placeholder="Activity zone">
              <el-option label="Zone one" value="shanghai"></el-option>
              <el-option label="Zone two" value="beijing"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="Activity type" prop="type">
            <el-checkbox-group v-model="ruleForm.type">
              <el-checkbox label="Online activities" name="type"></el-checkbox>
              <el-checkbox label="Promotion activities" name="type"></el-checkbox>
              <el-checkbox label="Offline activities" name="type"></el-checkbox>
              <el-checkbox label="Simple brand exposure" name="type"></el-checkbox>
            </el-checkbox-group>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="Resources" prop="resource">
            <el-radio-group v-model="ruleForm.resource">
              <el-radio label="Sponsorship"></el-radio>
              <el-radio label="Venue"></el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="Activity form" prop="desc">
            <el-input type="textarea" v-model="ruleForm.desc"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="24">
          <el-form-item>
            <el-button type="primary" @click="submitForm('ruleForm')">Create</el-button>
            <el-button @click="resetForm('ruleForm')">Reset</el-button>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import { CreateFormModel } from '@/models';

@Component
export default class Create extends Vue {
  private rules: any = null;
  private ruleForm: CreateFormModel = new CreateFormModel();
  private mounted() {
    this.rules = {
      name: [
        { required: true, message: 'Please input Activity name', trigger: 'submit' },
        { min: 3, max: 5, message: 'Length should be 3 to 5', trigger: 'blur' }
      ],
      region: [
        { required: true, message: 'Please select Activity zone', trigger: 'change' }
      ],
      date1: [
        { type: 'date', required: true, message: 'Please pick a date', trigger: 'change' }
      ],
      date2: [
        { type: 'date', required: true, message: 'Please pick a time', trigger: 'change' }
      ],
      type: [
        { type: 'array', required: true, message: 'Please select at least one activity type', trigger: 'change' }
      ],
      resource: [
        { required: true, message: 'Please select activity resource', trigger: 'change' }
      ],
      desc: [
        { required: true, message: 'Please input activity form', trigger: 'submit' }
      ]
    };
  }
}
</script>