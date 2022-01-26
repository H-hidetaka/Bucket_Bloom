<template>
  <v-app>
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
    >
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
        >
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar
      :clipped-left="clipped"
      fixed
      app
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-btn
        icon
        @click.stop="miniVariant = !miniVariant"
      >
        <v-icon>mdi-{{ `chevron-${miniVariant ? 'right' : 'left'}` }}</v-icon>
      </v-btn>
      <v-toolbar-title v-text="title" />
      <v-spacer />
    </v-app-bar>

    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-footer
      :absolute="!fixed"
      app
    >
      <span>&copy;Bucket Bloom {{ new Date().getFullYear() }}  </span>
      <v-btn
        color="black"
        nuxt
        to="/about/privacy_policy"
        text
      >
        プライバシーポリシー
      </v-btn>
      <v-btn
        color="black"
        nuxt
        to="/about/terms_of_use"
        text
        justify="space-around"
      >
        利用規約
      </v-btn>
    </v-footer>
  </v-app>
</template>

<script>
export default {
    data () {
        return {
            clipped: false,
            drawer: false,
            fixed: false,
            profile: "",
            items: [
                {
                    icon: 'mdi-apps',
                    title: 'ホーム',
                    to: '/'
                },
                {
                    icon: 'mdi-account-plus',
                    title: 'ユーザー登録',
                    to: '/register'
                },
                {
                    icon: 'mdi-login-variant',
                    title: 'ログイン',
                    to: '/login'
                },
                {
                    icon: 'mdi-information-outline',
                    title: 'このサイトについて',
                    to: '/about'
                },
                {
                    icon: 'mdi-information-outline',
                    title: 'ゲーム部分',
                    to: '/gamelists/playable_game_collection/play_game'
                },
            ],
            miniVariant: false,
            right: true,
            rightDrawer: false,
            title: 'Bucket Bloom'
        };
    }
};
</script>
