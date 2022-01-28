<template>
  <v-alert show type="error"
    border="left"
    dark
  >
    メールアドレス又はパスワードが違います。
    <!-- <div v-for="m in message" :key="m.id">
      <span>{{ m }}</span>
    </div> -->
  </v-alert>
</template>

<script lang="ts">
import Vue from 'vue';

interface name {
  Notification :string
}

export default Vue.extend({
    data: () => {
        return {
          name: 'Notification',
          props: ['message']
        }
      },
});
</script>
