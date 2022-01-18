import colors from 'vuetify/es5/util/colors'

export default {
  server: {
    port: 8080
  },
  // Disable server-side rendering: https://go.nuxtjs.dev/ssr-mode
  ssr: false,

  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    titleTemplate: '%s - Bucket_bloom',
    title: 'Bucket_bloom',
    htmlAttrs: {
      lang: 'en'
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' },
      { name: 'format-detection', content: 'telephone=no' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
    ]
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [
  ],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
    { src: '~/plugins/axios.js', ssr: false },
    // '@nuxtjs/auth'
  ],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/typescript
    '@nuxt/typescript-build',
    // https://go.nuxtjs.dev/vuetify
    '@nuxtjs/vuetify',
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
      '@nuxtjs/axios',
      '@nuxtjs/proxy',
      '@nuxtjs/auth',
  ],

  axios: {
    proxy: true,
    baseURL: "http://localhost:3000"
  },
  proxy: {
    '/api': {
        target: 'http://localhost:8080/',
        pathRewrite: {
          '^/api': '/api'
        }
      },
    },

  // Vuetify module configuration: https://go.nuxtjs.dev/config-vuetify
  vuetify: {
    customVariables: ['~/assets/variables.scss'],
    theme: {
      dark: false,
      themes: {
        dark: {
          primary: colors.blue.darken2,
          accent: colors.grey.darken3,
          secondary: colors.amber.darken3,
          info: colors.teal.lighten1,
          warning: colors.amber.base,
          error: colors.deepOrange.accent4,
          success: colors.green.accent3
        }
      }
    }
  },

  auth: {
    redirect: {
      login: '/login', //middleware:authを設定したURLにアクセスがあった場合の、リダイレクト先。
      logout: '/', //ログアウト後のリダイレクト先
      callback: false,
      home: '/' ///ログイン後のリダイレクト先。
    },
    strategies: {
      local: {
        endpoints: {
          //ログイン処理に関する設定
          // login: { url: '/api/auth/sign_in', method: 'post',propertyName: 'access_token'},
          login: { url: 'api/auth/sign_in', method: 'post',propertyName: 'access_token'},
          //ログアウト処理に関する設定
          logout: { url: '/api/auth/sign_out', method: 'delete' },
          //ログイン時にユーザー情報を保存するか。
          user: false
        },
      }
    },
  },
  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
  }
}
