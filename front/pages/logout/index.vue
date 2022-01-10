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
            <h3
            class="display-1"
            >ログアウト</h3>
          </v-card-title>
            <v-card-text>
              <div class="text-h6 font-weight-light"
              >Bucket bloomから完全にログアウトしました。再度ログインする場合は、
              以下からログインしてください。</div>
              <nuxt-link
              to="/login"
              fontSize="120px"
              >ログイン画面</nuxt-link>

            </v-card-text>
          <v-card-actions
              >
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
