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
          </v-card-title>
              <v-text-field
              prepend-icon="mdi-email"
              label="メールアドレス"
              v-model="email"
              />
            <v-form>
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
              <v-text-field
              prepend-icon="mdi-account-circle"
              label="フルネーム"
              v-model="full_name"
              />
              <v-text-field prepend-icon="mdi-lock"  label="フルネーム＜カタカナ＞"
              v-model="full_name_kana"
              />
              <v-card-actions
              >
          <v-container>
              <v-btn
                  text
                  class="lime lighten-4"
                  width="200"
                  color="black accent-1"
                  @click="submit"
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
          showPassword: false ,
          showPassword_confirmation: false ,
          email:'',
          password:'',
          password_confirmation: '',
          name:'',
          full_name:'',
          full_name_kana:'',
          items: [
          {
          color: '#FFFFFF',
          src: 'https://cdn.vuetifyjs.com/images/cards/foster.jpg',
          title: 'Supermodel',
          artist: 'Foster the People',
          to: '/register/index'
          },
          {
          color: '#952175',
          src: 'https://cdn.vuetifyjs.com/images/cards/halcyon.png',
          title: 'Halcyon Days',
          artist: 'Ellie Goulding',
          },
          {
          color: '#952175',
          src: 'https://cdn.vuetifyjs.com/images/cards/halcyon.png',
          title: 'Halcyon Days',
          artist: 'Ellie Goulding',
          },
          ],
        };
    },
      methods:{
        submit(){
          console.log(this.email,this.password,this.name,this.full_name,this.full_name_kana)
        }
      },
});
</script>

<style scoped>

</style>
