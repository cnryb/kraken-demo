<template>
  <div style="position: relative;
            width: 100px;
            height: 100px;
            backgroundColor: lightblue;">
    相对定位
  </div>

  <div style="position: sticky;
            top: 100px;
            left: 100px;
            width: 100px;
            height: 100px;
            backgroundColor: mediumpurple;
            marginTop: 40px">
            <!-- 在浏览器中生效的是 marginTop ，会无视掉 top 的值。
            在 kraken 中，生效的似乎是 top 的值，当值大于 100px 时会生效 -->
    粘性定位
  </div>
</template>
