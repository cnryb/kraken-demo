<template>
<!-- 这段展示异常正常 -->

<div style="display: flex; justify-content: space-between; align-items: center;">
  <div
    v-for="color in 3"
    :key="color"
    style="border: 1px solid red;"
  >{{ color }}</div>
</div>

<!-- 这段正常 -->
<div style="display: flex; justify-content: space-between; align-items: center;">
    <div style="border: 1px solid red;">1</div>
    <div style="border: 1px solid red;">2</div>
    <div style="border: 1px solid red;">3</div>
</div>
</template>

