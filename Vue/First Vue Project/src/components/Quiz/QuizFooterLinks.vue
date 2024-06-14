<template>
  <div>
    <h5>{{ state.name }}</h5>

    <button @click="state.name = 'new name'">Change name</button>

    <ul>
      <li><a href="#">Get a Job</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</template>

<script setup>
import { state } from '@/stores/quizStore.js'
// import { inject } from 'vue';

// let quiz = inject('quiz');
</script>
