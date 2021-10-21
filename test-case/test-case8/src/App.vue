<template>
  <div style="position: sticky; top: 0px; background: #fff; display: flex; ">
    <h1>布局</h1>
  </div>
  <div style="background-color: #efefef; box-sizing: border-box;">
    <div v-for="i in 300"
         :key="i">{{ i }}</div>
  </div>
</template>
