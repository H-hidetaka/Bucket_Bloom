<template>
  <v-alert show type="danger">
    <div v-for="m in message" :key="m.id">
      <span>{{ m }}</span>
    </div>
  </v-alert>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => {
        return {
          name: 'Notification',
          props: ['message']
        }
      },
});
</script>
