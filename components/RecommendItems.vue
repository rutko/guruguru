<template>
  <v-container fluid>
    <v-row>
      <v-col v-for="item in items" :key="item.id">
        <v-card elevation="0" outlined max-width="160px" v-on:click="onClick(item.id)">
          <v-img
            max-height="160px"
            src="img/anifareLogo.png"
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
        { id: 1, name: 'anifare', description:'全国300以上の動物病院と提携', url: 'https://anifare.jp/' },
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
