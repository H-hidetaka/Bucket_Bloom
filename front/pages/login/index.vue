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
    max-width="1200"
    shaped
    color="#FDFDF0"
  >
    <v-card-title>
      <h3 class="display-1">ログイン</h3>
    </v-card-title>
        <v-text-field prepend-icon="mdi-email" label="メールアドレス" />
      <v-form>
        <v-text-field prepend-icon="mdi-lock" append-icon="mdi-eye-off" label="パスワード" />
      </v-form>
    <v-container>
        <v-btn
            text
            class="lime lighten-4"
            width="200"
            color="black accent-1"
            @click="next"
            to="../login"
          >ログイン
        </v-btn>
      </v-container>
    <!-- </v-card-actions> -->
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
});
</script>

<style scoped>

</style>
