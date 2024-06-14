<template>
    <div class="result">
      <div class="current-value">{{ calculator.currentValue }}</div>
      <div class="previous-value">{{ calculator.previousValue }}</div>
    </div>
</template>

<script setup>
import { useCalculatorStore } from '@/stores/calculatorStore.js'
let calculator = useCalculatorStore()
</script>

<style scoped>
.result {
  border-radius: 10px;
  padding-right: .5rem;
  margin: 0.5rem;
  height: 75px;
  text-align: end;
  background-color: lightgray;
  border: 1px solid black;
  box-shadow: 0 0 2px black;
}
.current-value {
  font-size: 2rem;
  font-weight: bold;
  margin-bottom: -.5rem;
}
.previous-value {
  font-size: 1rem;
}
</style>