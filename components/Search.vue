<template>
  <v-container>
    <v-form v-model="valid">
      <v-row>
        <v-col
          cols="12"
          md="4"
        >
          <v-text-field
            v-model="area"
            label="エリア・現在地"
            prepend-inner-icon="mdi-map-marker"
            outlined
          ></v-text-field>
        </v-col>

        <v-col
          cols="12"
          md="4"
        >
          <v-text-field
            v-model="party"
            label="犬種"
            prepend-inner-icon="mdi-dog"
            outlined
          ></v-text-field>
        </v-col>

        <v-col
          cols="12"
          md="4"
        >
          <v-text-field
            v-model="keyword"
            label="キーワード"
            prepend-inner-icon="mdi-pencil"
            outlined
          ></v-text-field>
        </v-col>
        <v-col>
          <v-checkbox
            v-model="pickUp"
            label="送迎あり"
          ></v-checkbox>
        </v-col>
        <v-col>
          <v-checkbox
            v-model="live"
            label="ライブ配信あり"
          ></v-checkbox>
        </v-col>
      </v-row>
    </v-form>
  </v-container>
</template>
<script>
export default {
  data() {
    return {
      area: '',
      party: '',
      keyword: '',
      pickUp: false,
      live: false,
    }
  }
}
</script>