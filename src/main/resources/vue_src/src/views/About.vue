<template>
  <div class="about">
    <el-carousel :interval="4000" arrow="always" height="700px">
      <el-carousel-item>
        <img class="mySlides" src="http://www.pace.edu.vn/vn/uploads/ImageContent/2019/VHDN-24.04%20(1).jpg" style="width:100%;min-height:350px;height:700px;">
      </el-carousel-item>
      <el-carousel-item>
        <img class="mySlides" src="https://khoinghiep.thuvienphapluat.vn/uploads/images/2017/10/24/khai%20quat%20doanh%20nghiep%20cong%20nghe%20cao.jpg" style="width:100%;min-height:350px;height:700px;">
      </el-carousel-item>
      <el-carousel-item>
        <img class="mySlides" src="https://cdn.vietnambiz.vn/stores/news_dataimages/tinnv/122017/08/07/2655_nhan-vien-gan-bo-cong-ty-la-do-van-hoa-doanh-nghiep-9476-1.jpg" style="width:100%;min-height:350px;height:700px;"> 
      </el-carousel-item>
    </el-carousel>
    <hr>
    <!-- Team Container -->
    <el-row class="p-3">
      <h3 class="text-center">VỀ CHÚNG TÔI</h3>
      <el-col :span="5" :offset="2" class="p-3">
        <vue-fontawesome icon="desktop" size="3" color="teal"></vue-fontawesome>
        <p>Responsive</p>
        <p><i>Có trách nhiệm cao trong công việc. Năng suất làm việc hiệu quả và đạt tiêu chuẩn tiên tiến.</i></p>
      </el-col>
      <el-col :span="5" class="p-3">
        <vue-fontawesome icon="heart" size="3" color="teal"></vue-fontawesome>
        <p>Passion</p>
        <p><i>Với đội ngũ phát triển luôn tận tâm, nhiệt tình và hết mình, có tinh thần cao trong công việc.</i></p>
      </el-col>
      <el-col :span="5" class="p-3">
        <vue-fontawesome icon="diamond" size="3" color="teal"></vue-fontawesome>
        <p>Design</p>
        <p><i>Không ngừng sáng tạo, phát triển website hiện đại và đầy đủ chức năng đáp ứng nhu cầu của bạn.</i></p>
      </el-col>
      <el-col :span="5" class="p-3">
        <vue-fontawesome icon="cog" size="3" color="teal"></vue-fontawesome>
        <p>Support</p>
        <p><i>Đội ngũ nhiệt tình, luôn hỗ trợ khách hàng khi gặp vấn đề. Tích cực hợp tác cùng bạn.</i></p>
      </el-col>
    </el-row>
    <hr>
    <!-- Work Row -->
    <el-row class="p-3">
      <el-col :span="8" :offset="2">
        <h2 class="text-center p-3">Giới thiệu chung</h2>
        <p class="height-line">Năm bắt được nhu cầu tuyển dụng nhân lực trẻ, năng động, hăng hái học hỏi kinh nghiệm của các doanh nghiệp hay nhu cầu tìm kiếm việc làm của sinh viên, chúng tôi đã xây dựng một website để đáp ứng những yêu cầu trên.</p>
        <p class="height-line">Đó là sàn giao dịch thực tập sinh - nơi cung cấp dịch vụ an toàn, tiện ích, nhanh chóng về tuyển dụng cũng như tìm kiếm việc làm cho sinh viên và các doanh nghiệp. Website không chỉ hữu ích cho sinh viên và doanh nghiệp mà còn mang lại lợi ích cho cả giáo viên. Giáo viên có thể giới thiệu những công việc tốt và phù hợp với từng sinh viên hay giới thiệu cho doanh nghiệp các sinh viên ưu tú, có kinh nghiệm, phù hợp với nhu cầu của họ.</p>
      </el-col>
      <el-col :offset="2" :span="10">
        <el-carousel :interval="4000" arrow="always" height="460px">
          <el-carousel-item>
            <img src="https://znews-photo.zadn.vn/w660/Uploaded/Ycgmvlbp/2018_11_25/sap_mang.jpg" alt="Snow" style="width:100%; height: 350px">
            <div class="container">
              <h3>Sinh viên</h3>
              <p><i>Khi tham gia, sinh viên sẽ tìm được những công việc phù hợp với năng lực, khả năng và yêu cầu của bản thân.</i></p>
            </div>
          </el-carousel-item>
          <el-carousel-item>
            <img src="http://cafefcdn.com/thumb_w/650/2018/9/4/photo1536030960684-15360309606851865409927.jpg" alt="Lights" style="width:100%; height: 350px">
            <div class="container">
              <h3>Doanh nghiệp</h3>
              <p><i>Khi tham gia, doanh nghiệp sẽ tiếp cận và tuyển dụng được các thành viên với năng lực phù hợp, đáp ứng yêu cầu.</i></p>
              <p></p>
            </div></el-carousel-item>
          <el-carousel-item>
            <img src="https://timviec365.vn/pictures/images/giang-vien-la-gi.jpg" alt="Mountains" style="width:100%; height: 350px">
            <div class="container">
              <h3>Giáo viên</h3>
              <p><i>Cung cấp thông tin hữu ích về việc làm cho sinh viên và doanh nghiệp. Nắm bắt được cơ hội việc làm của sinh viên.</i></p>
            </div></el-carousel-item>
        </el-carousel>
      </el-col>
    </el-row>
    <hr>
    <!-- Contact -->
    <el-row class="p-3">
      <el-col :span="24">
        <h2>Địa chỉ </h2>
        <p>334 Nguyễn Trãi, Thanh Xuân, Hà Nội</p>
        <p><vue-fontawesome icon="map-marker" size="1" color="teal"></vue-fontawesome>  Hà Nội, Việt Nam</p>
        <p><vue-fontawesome icon="phone" size="1" color="teal"></vue-fontawesome>  06583712</p>
        <p><vue-fontawesome icon="envelope-o" size="1" color="teal"></vue-fontawesome>  ttnga912@gmail.com</p>
      </el-col>
    </el-row>
  </div>
</template>
<style scoped>
.about {
  background-color: ghostwhite;
}
</style>
<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class About extends Vue {
  created() {
    console.log('About');
  }
}
</script>
