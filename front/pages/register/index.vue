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
        <v-card-title>
          <h3 class="display-1">登録情報入力</h3>

          <!-- <Notification :message="error" v-if="error" class="mb-4 pb-3" /> -->

        </v-card-title>
            <v-text-field
            prepend-icon="mdi-email"
            label="メールアドレス"
            v-model="email"
            />
          <v-form @submit.prevent="signup">
            <v-text-field
            :type="showPassword ? 'text' : 'password'"
            prepend-icon="mdi-lock" :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
            @click:append="showPassword = !showPassword"
            label="パスワード"
            v-model="password"
            />
          </v-form>
            <v-text-field
            :type="showPassword_confirmation ? 'text' : 'password'"
            @click:append="showPassword_confirmation = !showPassword_confirmation"
            prepend-icon="mdi-lock" :append-icon="showPassword_confirmation ? 'mdi-eye' : 'mdi-eye-off'"
            label="パスワード再入力"
            v-model="password_confirmation"
            />
            <v-text-field
            prepend-icon="mdi-account-circle"
            label="ユーザー名"
            v-model="name"
            />
            <v-card-actions
            >
        <v-container>
            <v-btn
                text
                class="lime lighten-4"
                width="200"
                color="black accent-1"
                @click="signup"
              >会員登録
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

export default Vue.extend({

    data: () => {
        return {
          showPassword: false,
          showPassword_confirmation: false,
          name:'',
          email:'',
          password:'',
          password_confirmation: '',
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
      methods: {
        async signup() {
          try{
            await this.$axios.post('/api/auth',{
                name: this.name,
                email: this.email,
                password: this.password,
                password_confirmation: this.password_confirmation
            })
            await this.$auth.loginWith('local', {
              data: {
                password: this.password,
                email: this.email
              },
            })
          }catch(e){
            this.error = e.response.data.errors.full_messages
          }
        },
        submit(){
        console.log(this.email,this.password,this.password_confirmation,this.name)
      }
      },
});
</script>

<style scoped>

</style>
