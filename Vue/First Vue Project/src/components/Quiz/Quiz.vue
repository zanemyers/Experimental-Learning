<!-- <template> -->
<template>
  <QuizHeader />

  <QuizQuestion />

  <QuizFooter/>
</template>

<script setup>
import QuizHeader from '@/components/Quiz/QuizHeader.vue'
import QuizQuestion from '@/components/Quiz/QuizQuestion.vue'
import QuizFooter from '@/components/Quiz/QuizFooter.vue'
// import { state } from '@/stores/quizStore.js'
// import { provide } from 'vue';

// let props = defineProps({
//   quiz: {
//     type: Object
//   }
// });

// provide('quiz', props.quiz);
</script>
