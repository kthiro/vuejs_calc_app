<template>
  <div class="hello">
    <h1>{{ title }}</h1>
    <p>{{ msg }}</p>
    <hr>
    <div>
      <input type="text" v-model="nameInput">
      <button @click="showName">上と右下のテキストを入力値で書き換える</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    title: String, 
  }, 
  data: function() {
    return {
      msg: 'お名前は？', 
      nameInput: '名前を入力', 
    };
  }, 
  methods: {
    showName: function () { 
      this.msg = 'こんにちわ！' + this.nameInput + 'さん!';
      this.$emit('callNameInput', this.nameInput)
     }
  }, 
}
</script>

<style>
div {
  margin: 0px;
  padding: 0px;
  text-align: left;
}

h1 {
  font-size: 72pt ;
  font-weight: bold;
  text-align: right;
  letter-spacing: -8px;
  color: #f0f0f0;
  margin: 0px;
}

p {
  margin: 0px;
  color: #666;
  font-size: 16px;
}
</style>
