<template>
<!-- 这个是下面代码在浏览器中代码的样子 -->
  <div><h3 style="background-color: #666;">这个是标题</h3><div style="height: 100px; background-color: #999; margin-top: 100px;" /></div>

<!-- 这种写法会出现异常 -->
  <card>
    <div style="height: 100px; backgroundColor: #999; marginTop: 100px" />
  </card>
</template>

<script setup>
import Card from './Card.vue'

</script>
