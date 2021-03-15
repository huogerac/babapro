<template>
  <v-app-bar app color="deep-purple accent-1" dense dark bottom :height="6">
    <template v-slot:extension>
      <v-tabs
        v-model="tab"
        background-color="deep-purple accent-4"
        centered
        dark
        icons-and-text
        grow
      >
        <v-tab>
          Atividades
          <v-icon>fa-running</v-icon>
        </v-tab>
        <v-tab>
          Alimentação
          <v-icon>fa-carrot</v-icon>
        </v-tab>
        <v-tab>
          Trocas
          <v-icon>fa-baby</v-icon>
        </v-tab>
      </v-tabs>
    </template>
  </v-app-bar>
</template>

<script>
export default {
  data: () => ({
    tab: null,
  }),
}
</script>
