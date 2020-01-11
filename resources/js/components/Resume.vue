<style scoped>
    .title {
        text-align: center;
        font-weight: bold;
        text-decoration: underline;
    }
</style>
<template>
    <div class="container">
        <h1 class="title">Resume</h1>
        <div class="row">
            <div class="col-md-1 col-sm-0"></div>
            <div class="col-md-10 col-sm-12">
                <!-- Personal Detail Section -->
                <button type="submit" class="btn btn-primary btn-block" @click.prevent="get_personal_data">Personal
                    Details</button>
                <div class="jumbotron" id="personalitem" v-bind:style="{ 'display': personal_prop }"
                    v-for="person in personal" :key="person.RSM_ID">
                    <h1>{{person.STDNT_NM}}</h1>
                    <h5>{{person.STDNT_ML}}</h5>
                    <h5>{{person.STDNT_MBL}}</h5>
                    <h5>{{person.STDNT_CTY}}</h5>
                </div>
                <!-- End Section -->
                <br />
                <!-- Educational Detail Section -->
                <button type="submit" class="btn btn-primary btn-block"
                    @click.prevent="get_educational_data">Education</button>
                <div class="well" v-bind:style="{ 'display': educational_prop }">
                    <div class="jumbotron" v-for="education in educational" :key="education.DCTN_ID">
                        <h3>{{education.LVL_NM}}</h3>
                        <small>{{education.SSN}}</small>
                        <h5>{{education.CLLG_NM}}</h5>
                        <h6>CGPA: {{education.CGPA}}</h6>
                    </div>
                </div>
                <!-- End Section -->
                <br />
                <!-- Internship Detail Section -->
                <button type="submit" class="btn btn-primary btn-block"
                    @click.prevent="get_internship_data">Internship</button>
                <div class="well" v-bind:style="{ 'display': internship_prop }">
                    <div class="jumbotron" v-for="internship in internship" :key="internship.NTRNSHP_ID">
                        <h3>{{internship.PST}}</h3>
                        <h6>{{internship.CMPNY_NM}}</h6>
                        <small>{{internship.PRD}}</small>
                        <p>{{internship.DSCRPTN}}</p>
                    </div>
                </div>
                <!-- End Section -->
                <br />
                <!-- Training Detail Section -->
                <button type="submit" class="btn btn-primary btn-block"
                    @click.prevent="get_training_data">Training</button>
                <div class="well" v-bind:style="{ 'display': training_prop }">
                    <div class="jumbotron" v-for="training in training" :key="training.TRNNG_ID">
                        <h3>{{training.TRNNG_NM}}</h3>
                        <h6>{{training.NSTT_NM}}</h6>
                        <small>{{training.PRD}}</small>
                        <p>{{training.DSCRPTN}}</p>
                    </div>
                </div>
                <!-- End Section -->
                <br />
                <!-- Skills Detail Section -->
                <button type="submit" class="btn btn-primary btn-block" @click.prevent="get_skill_data">Skills</button>
                <div class="well" v-bind:style="{ 'display': skill_prop }">
                    <br />
                    <div class="row">
                        <div class="col-md-3" v-for="skill in skill" :key="skill.SKLL_ID">
                            <div class="jumbotron" style="text-align:center;">
                                <p><b>{{skill.SKLL_NM}}</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Section -->
                <br />
                <!-- Internship Detail Section -->
                <button type="submit" class="btn btn-primary btn-block" @click.prevent="get_workSample_data">Work
                    Samples</button>
                <div class="well" v-bind:style="{ 'display': work_prop }">
                    <div class="jumbotron" v-for="workSample in workSample" :key="workSample.WRK_ID">
                        <h3>{{workSample.PRFL_NM}}</h3>
                        <p>{{workSample.PRFL_LNK}}</p>
                    </div>
                </div>
                <!-- End Section -->
                <br />
                <!-- Additional Detail Section -->
                <button type="submit" class="btn btn-primary btn-block" @click.prevent="get_additional_data">Additional
                    Details</button>
                <div class="jumbotron" v-bind:style="{ 'display': Additional_prop }"
                    v-for="AdditionalDetail in AdditionalDetail" :key="AdditionalDetail.ADDTNL_ID">
                    <h5>{{AdditionalDetail.DSCRPTN}}</h5>
                </div>
            </div>
            <!-- End Section -->
            <div class="col-md-1 col-sm-0"></div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                personal: [],
                educational: [],
                internship: [],
                training: [],
                skill: [],
                workSample: [],
                AdditionalDetail: [],
                personal_prop: 'none',
                educational_prop: 'none',
                internship_prop: 'none',
                training_prop: 'none',
                skill_prop: 'none',
                work_prop: 'none',
                Additional_prop: 'none'
            }
        },
        methods: {
            // function for fetching personal data
            get_personal_data: function () {
                if (this.personal_prop == 'none') {
                    axios.get('api/fetch_personal_data')
                        .then(Response => this.personal = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.personal_prop = 'block';
                } else {
                    this.personal_prop = 'none';
                }
            },
             // function for Educational personal data
            get_educational_data: function () {
                if (this.educational_prop == 'none') {
                    axios.get('api/fetch_educational_data')
                        .then(Response => this.educational = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.educational_prop = 'block';
                } else {
                    this.educational_prop = 'none';
                }
            },
             // function for Internship personal data
            get_internship_data: function () {
                if (this.internship_prop == 'none') {
                    axios.get('api/fetch_internship_data')
                        .then(Response => this.internship = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.internship_prop = 'block';
                } else {
                    this.internship_prop = 'none';
                }
            },
             // function for fetching Training data
            get_training_data: function () {
                if (this.training_prop == 'none') {
                    axios.get('api/fetch_training_data')
                        .then(Response => this.training = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.training_prop = 'block'
                } else {
                    this.training_prop = 'none';
                }
            },
             // function for fetching Skill data
            get_skill_data: function () {
                if (this.skill_prop == 'none') {
                    axios.get('api/fetch_skill_data')
                        .then(Response => this.skill = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.skill_prop = 'block';
                } else {
                    this.skill_prop = 'none';
                }
            },
             // function for fetching Work Sample data
            get_workSample_data: function () {
                if (this.work_prop == 'none') {
                    axios.get('api/fetch_work_sample_data')
                        .then(Response => this.workSample = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.work_prop = 'block';
                } else {
                    this.work_prop = 'none';
                }
            },
             // function for fetching Additional data
            get_additional_data: function () {
                if (this.Additional_prop == 'none') {
                    axios.get('api/fetch_additional_data')
                        .then(Response => this.AdditionalDetail = Response.data)
                        .catch(function (error) {
                            console.log(error);
                        });
                    this.Additional_prop = 'block';
                } else {
                    this.Additional_prop = 'none';
                }
            }
        }
    }
</script>
