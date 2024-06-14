<template>
  <div>
    <h1>{{ counter.count }}</h1>

    <button @click="counter.increment()" :disabled="!counter.remaining">
      Increment ({{ counter.remaining }} remianing)
    </button>
  </div>
</template>

<script setup>
// import { counter } from '@/stores/counterStore.js'
import { useCounterStore } from '@/stores/counterStore.js'

let counter = useCounterStore()
</script>
