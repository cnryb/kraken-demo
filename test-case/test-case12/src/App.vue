<template>
  <button @click="toggle">toggle visibility</button>

  <div>fuck vShow: {{ show }}</div>
  <div v-if="show" style="padding: 20px; background: red; color: white">content</div>
</template>

<script setup>
import { ref } from 'vue'

const show = ref(false)

function toggle() {
  show.value = !show.value
}
</script>