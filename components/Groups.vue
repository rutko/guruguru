<template>
  <v-container fluid>
    <v-toolbar class="elevation-0 transparent">
      <v-toolbar-title>
        <h4>保護団体</h4>
      </v-toolbar-title>
      <v-spacer />
    </v-toolbar>
    <v-row>
      <v-col v-for="item in items" :key="item.id">
        <v-card elevation="0" outlined max-width="160px" v-on:click="onClick(item.id)">
          <v-img
            max-height="160px"
            :src="item.img_src"
          />

          <v-card-title class="pb-0">
            <span class="item-title">{{ item.name }}</span>
          </v-card-title>
          <v-card-text class="text-subtitle-2 pt-0">
            {{ item.description}}
          </v-card-text>

        </v-card>
      </v-col>
    </v-row>

  </v-container>
</template>
<script>

export default {
  data() {
    return {
      items: [
        { id: 1, name: 'anifare', description:'全国300以上の動物病院と提携', url: 'https://anifare.jp/', img_src: "img/anifareLogo.png" },
        { id: 2, name: 'anifare', description:'全国300以上の動物病院と提携', url: 'https://anifare.jp/', img_src: "img/anifareLogo.png" },
        { id: 3, name: 'anifare', description:'全国300以上の動物病院と提携', url: 'https://anifare.jp/', img_src: "img/anifareLogo.png" },
        { id: 4, name: 'anifare', description:'全国300以上の動物病院と提携', url: 'https://anifare.jp/', img_src: "img/anifareLogo.png" },
      ]
    }
  },
  methods: {
    onClick(id){
      this.$router.push({ path: `/group/${id}` })
    }
  }
}
</script>
