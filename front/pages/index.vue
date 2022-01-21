<template>
  <v-container
      >
      <v-row
        justify="center"
        align-content="center"
      >
        <v-col
          cols=12
          sm=11
          md=11
          lg=11
          xl=7
          >
            <v-card
                class="mx-auto"
                max-width="2000"
              >
                <v-img
                max-height="2400"
                max-width="2400"
                src="images/laptop1.webp"
              ></v-img>
                <!-- <v-img
                  src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                  height="200px"
                ></v-img> -->

              <v-card-title>
                Bucket Bloom
                <!-- to="/inspire" -->
              </v-card-title>
              <v-card-subtitle>
                人生に悩んだり迷っている人に、 気軽に取り組め、それまでぼんやりしていた自分の思いを可視化できるようにし、 それを元に人生について考える些細なきっかけを与えるwebサービスです。
              </v-card-subtitle>
              <v-row>
                <v-col
                cols=12
                sm=11
                md=11
                lg=11
                xl=7
                align="right"
                >
                <v-btn
                  raised
                  color="primary"
                  to="/inspire"
                  rounded
                >
                スタート
                </v-btn>
                </v-col>
              </v-row>

              <v-card-actions>
                <v-btn
                  color="orange lighten-2"
                  text
                  @click="show = !show"
                >
                  もっと詳しく！
                </v-btn>

                <v-spacer></v-spacer>

                <v-btn
                  icon
                  @click="show = !show"
                >
                  <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
                </v-btn>
              </v-card-actions>

              <v-expand-transition>
                <div v-show="show">
                  <v-divider></v-divider>

                  <v-card-text>
                    このアプリはtodoリストにコメント機能をつけ、
                    <br>他のユーザーからも可視化できるようにしています。
                    </br>
                    <br>人生の目標を他のユーザーと共有することで、モチベーション管理をしやすくなります。
                    </br>
                  </v-card-text>
                </div>
              </v-expand-transition>
            </v-card>
                          <!-- <v-img
                          max-height="2400"
                          max-width="2400"
                          src="images/laptop1.webp"
                        ></v-img> -->
        </v-col>
      </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => {
        return {
          show: false,
        };
    },
});
</script>

<style scoped>

</style>
