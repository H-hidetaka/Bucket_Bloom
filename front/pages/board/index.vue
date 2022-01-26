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
          width="auto"
          class="mx-auto"
          height="auto"
        >
            <v-spacer></v-spacer>
            <v-spacer></v-spacer>
          <v-container>
            <v-row dense>
              <v-col
                v-for="(item, i) in items"
                :key="i"
                cols="12"
              >
                  <v-card
                    height="300"
                    :color="item.color"
                    white
                  >
                      <v-avatar
                        class="ma-3"
                        size="200"
                        tile
                      >
                        <v-img :src="item.src"></v-img>
                      </v-avatar>
                    </div>
                  </v-card>
                </v-col>
              </v-row>
            </v-container>
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
          src: 'images/laptop1.webp',
          title: 'バケットリスト詳細',
          artist: '立花',
          to: '/board/index'
          },
          ],
        };
    },
});
</script>

<style scoped>

</style>
