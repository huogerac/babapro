<template>
  <div class="about">
    <v-row>
      <v-col cols="12">
        <app-version></app-version>
      </v-col>
      <v-col cols="1">
        <v-menu
          ref="menu1"
          v-model="showTimeStart"
          :close-on-content-click="false"
          :nudge-right="40"
          :return-value.sync="timeStart"
          transition="scale-transition"
          offset-y
          max-width="290px"
          min-width="290px"
        >
          <template v-slot:activator="{ on, attrs }">
            <v-text-field
              v-model="timeStart"
              label="Início"
              prepend-icon="fa-clock"
              readonly
              v-bind="attrs"
              v-on="on"
            ></v-text-field>
          </template>
          <v-time-picker
            v-if="showTimeStart"
            v-model="timeStart"
            format="24hr"
            full-width
            @click:minute="$refs.menu1.save(timeStart)"
          ></v-time-picker>
        </v-menu>
      </v-col>

      <v-col cols="1">
        <v-menu
          ref="menu2"
          v-model="showTimeEnd"
          :close-on-content-click="false"
          :nudge-right="40"
          :return-value.sync="timeEnd"
          transition="scale-transition"
          offset-y
          max-width="290px"
          min-width="290px"
        >
          <template v-slot:activator="{ on, attrs }">
            <v-text-field
              v-model="timeEnd"
              label="Fim"
              prepend-icon="fa-clock"
              readonly
              v-bind="attrs"
              v-on="on"
            ></v-text-field>
          </template>
          <v-time-picker
            v-if="showTimeEnd"
            v-model="timeEnd"
            format="24hr"
            full-width
            @click:minute="$refs.menu2.save(timeEnd)"
          ></v-time-picker>
        </v-menu>
      </v-col>
      <v-col cols="10">
        <p>timeStart: {{ timeStart }}</p>
        <p>showTimeStart: {{ showTimeStart }}</p>

        <p>timeEnd: {{ timeEnd }}</p>
        <p>showTimeEnd: {{ showTimeEnd }}</p>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import AppVersion from '@/components/AppVersion.vue'

export default {
  data: () => ({
    timeStart: null,
    timeEnd: null,
    showTimeStart: false,
    showTimeEnd: false,
  }),

  components: {
    AppVersion,
  },
}
</script>
