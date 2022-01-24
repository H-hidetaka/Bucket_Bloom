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
            <!-- 検索用フォーム機能を作成 -->
            <!-- <v-icon>mdi-magnify</v-icon> -->
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
                  height="600"
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
                          to="/board"
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

                <v-list two-line>
                <template v-for="(item, index) in items">
                  <v-subheader
                    v-if="item.header"
                    :key="item.header"
                    inset
                  >
                    {{
                      item.header
                    }}
                  </v-subheader>

                  <v-divider
                    v-else-if="item.divider"
                    :key="index"
                    inset
                  ></v-divider>

                  <v-list-item
                    v-else
                    :key="item.title"
                    ripple
                  >
                    <v-list-item-avatar>
                      <img :src="item.avatar">
                    </v-list-item-avatar>
                    <v-list-item-content>
                      <v-list-item-title v-html="item.title"></v-list-item-title>
                      <v-list-item-subtitle
                        v-html="item.subtitle"
                      ></v-list-item-subtitle>
                    </v-list-item-content>
                  </v-list-item>
                </template>
                </v-list>
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
          to: '/board/index'
          },
          {
            header: 'Today',
          },
          { divider: true },
          {
            avatar: 'https://picsum.photos/250/300?image=660',
            title: 'Meeting @ Noon',
            subtitle:
              `<span class="font-weight-bold">Spike Lee</span> &mdash; I'll be in your neighborhood`,
          },
      ],
        };
    },
});
</script>

<style scoped>

</style>
