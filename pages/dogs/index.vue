<template>
  <v-container fluid>
    <v-toolbar class="elevation-0 transparent">
      <h4>犬種</h4>
    </v-toolbar>
    <v-row>
      <v-col v-for="item in items" :key="item.id">
        <v-card elevation="0" outlined max-width="160px" v-on:click="onClick(item.id)">
          <v-img
            max-height="160px"
            :src="item.img_src"
          >
            <v-chip
              color="cyan"
              class="ma-1"
              text-color="white"
            >
              <div class="text-overline">{{ item.place }}</div>
            </v-chip>
          </v-img>

          <v-card-title class="pb-0">
            <div class="text-overline">{{ item.breed }}/{{ item.age }}歳</div>
            <v-btn icon :color="love ? 'pink' : 'grey'" @click.stop="love=true"><v-icon>mdi-heart</v-icon></v-btn>
          </v-card-title>
          <v-divider />
          <v-card-text class="text-caption">
            <div class="d-flex">
              <div>{{ item.name }}</div>
              <v-icon v-if="item.gender === 1" small color="pink">mdi-gender-female</v-icon>
              <v-icon v-if="item.gender === 2" small color="blue">mdi-gender-male</v-icon>
            </div>
            <div class="grey--text"> {{ item.description}} </div>
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
        { id: 1, place: '兵庫', breed: 'ハスキー', name: 'マロン', age: 2, gender: 1,  description:'少し怖がりさんですが、おっとりした子です。', url: 'https://anifare.jp/', img_src: "img/dammy.jpeg" },
        { id: 2, place: '関東', breed: 'ハスキー', name: 'ポンタ', age: 2, gender: 2,  description:'人が大好き、食欲旺盛、元気いっぱいな男の子です', url: 'https://anifare.jp/', img_src: "img/dammy.jpeg" },
        { id: 2, place: '東京',  breed: 'ハスキー', name: 'ケンちゃん', age: 2, gender: 2,  description:'人が大好き、食欲旺盛、元気いっぱいな男の子です', url: 'https://anifare.jp/', img_src: "img/dammy.jpeg" },
      ],
      love: false
    }
  },
  methods: {
    onClick(id){
      this.$router.push({ path: `/dog/${id}` })
    }
  }
}
</script>
