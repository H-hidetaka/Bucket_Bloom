<template>
  <v-container
    >
    <v-row
      justify="center"
      align-content="center"
    >
      <v-col
        cols=12
        sm=10
        md=10
        lg=10
        xl=7
        >
        <v-card
          max-width="1200px"
          shaped
          color="#FDFDF0"
        >
          <Notification :message="error" v-if="error" class="mb-4 pb-3" />
          <v-card-title>
            <h3
            class="display-1"
            >ログイン</h3>


          </v-card-title>
              <v-text-field
              prepend-icon="mdi-email"
              label="メールアドレス"
              v-model="email"
              />
            <v-form @submit.prevent="login">
              <v-text-field
              :type="showPassword ? 'text' : 'password'"
              prepend-icon="mdi-lock" :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
              @click:append="showPassword = !showPassword"
              label="パスワード"
              v-model="password"
              />
              <!-- <v-button
              v-if="!this.$auth.loggedIn"
              variant="primary"
              to="/signup">
              サインアップ</v-button>
              <v-button v-if="!this.$auth.loggedIn"
              variant="info"
              to="/login">
              ログイン</v-button>
              <v-button v-if="this.$auth.loggedIn"
              variant="success"
              to="/update">
              アカウント情報変更</v-button>
              <v-button v-if="this.$auth.loggedIn"
              variant="danger"
              @click="logout">
              ログアウト</v-button> -->
            </v-form>
              <v-card-actions
              >
          <v-container>
              <v-btn
                  text
                  class="lime lighten-4"
                  width="200"
                  color="black accent-1"
                  @click="login"
                >ログイン
              </v-btn>
            </v-container>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue';

interface login {
  auth: string
}

export default Vue.extend({
    data: () => {
        return {
          showPassword: false ,
          email:'',
          password:'',
          name:'',
          error: null,
          // items: [
          // {
          // color: '#FFFFFF',
          // src: 'https://cdn.vuetifyjs.com/images/cards/foster.jpg',
          // title: 'Supermodel',
          // artist: 'Foster the People',
          // to: '/register/index'
          // },
          // ],
        };
      },
      methods:{
        submit(){
          console.log(this.email,this.password,this.name)
        },
        async login() {
          await this.$auth.loginWith<loginData>('local', {
            data: {
              password: this.password,
              email: this.email
            }
          })
          .then(
            (response) => {
            },
            (error) => {
              this.error = error.response.data.errors
            }
          )
        }
      },
    });
</script>

<style scoped>

</style>
