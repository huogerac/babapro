<template>
  <div>
    <v-chip class="ma-2">version: {{ version }}</v-chip>
    <v-chip class="ma-2">apiBaseUrl: {{ apiBaseUrl }}</v-chip>
  </div>
</template>

<script>
import settings from '@/settings'

export default {
  data: () => ({
    apiBaseUrl: settings.apiBaseUrl,
    version: settings.version,
    nodeEnv: settings.nodeEnv,
  }),
}
</script>
