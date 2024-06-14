<template>
  <main>
    <!-- <p>What is your favorite food? <input type="text" v-model="food" /></p>
    <p>How old are you? <input type="text" v-model="age" /></p>
    <form>
      <TabableTextarea v-model="comment"></TabableTextarea>
    </form> -->

    <Quiz :quiz="state" />
  </main>
</template>

<script setup>
// import { useStorage } from '@/composables/useStorage'
// import TabableTextarea from '@/components/TabableTextarea.vue'
// import { ref } from 'vue'
import Quiz from '@/components/Quiz/Quiz.vue'
import { state } from '@/stores/quizStore.js'

// let food = useStorage('food', 'salad')
// let age = useStorage('age', 10)
// let obj = useStorage('obj', { name: 'John' })

// let comment = ref('test value')

// setTimeout(() => {
//   comment.value = 'new value'
//   // obj.value.name = 'new name'
// }, 2000)
</script>

<style scoped>
textarea {
  width: 100%;
  height: 300px;
}
</style>
