<template>
  <!-- sticky 对象设置了 overflow:hidden; 以后失去粘性定位能力。删除后即可回复正常。 -->
  <div>
    <div style="position: sticky;  overflow:hidden; top: 56px; background-color: #666">A</div>
    <div v-for="i in 300" :key="i">{{ i }}</div>
  </div>
</template>
