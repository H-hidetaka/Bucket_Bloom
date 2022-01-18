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
          max-width="auto"
          class="mx-auto"
        >
          <v-system-bar
            color="orange darken-2"
            dark
            height="60"
          >
            <v-spacer></v-spacer>
            <v-btn
              light
              block
              cols=12
              sm=10
              md=10
              lg=10
              xl=7
            >
            <!-- 検索用フォーム機能を作成 -->
            <!-- <v-icon>mdi-magnify</v-icon> -->
            </v-btn>
          </v-system-bar>
            <v-spacer></v-spacer>
            <v-btn icon>
            </v-btn>
          <v-container>
            <v-row dense>
              <v-col
                v-for="(item, i) in items"
                :key="i"
                cols="12"
              >
                <v-card
                  height="200"
                  :color="item.color"
                  white
                >
                  <div class="d-flex flex-no-wrap justify-space-between">
                    <div>
                      <v-card-title
                        class="text-h5"
                        v-text="item.title"
                      ></v-card-title>

                      <v-card-subtitle v-text="item.artist"></v-card-subtitle>

                      <v-card-actions>
                        <v-btn
                          v-if="item.artist === 'Ellie Goulding'"
                          class="ml-2 mt-3"
                          fab
                          icon
                          height="40px"
                          right
                          width="40px"
                        >
                          <v-icon>mdi-play</v-icon>
                        </v-btn>

                        <v-btn
                          v-else
                          class="ml-2 mt-5"
                          outlined
                          rounded
                          small
                        >
                          START RADIO
                        </v-btn>
                      </v-card-actions>
                    </div>

                    <v-avatar
                      class="ma-3"
                      size="125"
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
