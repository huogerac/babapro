<template>
  <div class="about">
    <Home msg="Welcome to Your Vue.js App" />
  </div>
</template>

<script>
import Home from '@/components/Home.vue'

export default {
  data: () => ({
    timeStart: null,
    timeEnd: null,
    showTimeStart: false,
    showTimeEnd: false,
  }),
  components: {
    Home,
  },
}
</script>
