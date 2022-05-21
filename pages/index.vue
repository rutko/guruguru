<template>
  <v-container fluid>
    <NewArrived />
    <Groups />
    <AreaSearch />
  </v-container>
</template>

<script>
import AreaSearch from "../components/AreaSearch.vue";
import NewArrived from "../components/NewArrived.vue";
export default {
    async mounted() {
    },
    components: { AreaSearch, NewArrived }
}
</script>
