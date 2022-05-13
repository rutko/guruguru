<template>
  <v-container fluid>
    <RecommendItems />
    <AreaSearch />
  </v-container>
</template>

<script>
import AreaSearch from "../components/AreaSearch.vue";
export default {
    async mounted() {
    },
    components: { AreaSearch }
}
</script>
