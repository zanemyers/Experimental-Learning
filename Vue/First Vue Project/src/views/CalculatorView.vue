<template>
  <div class="container">
    <CalculatorHeader />
    <CalculatorButtons v-for="row in calculator.rows" :key="row.id" :row="row" class="row" />
  </div>
</template>

<script setup>
import CalculatorHeader from '@/components/Calculator/ResultHeader.vue'
import CalculatorButtons from '@/components/Calculator/CalculatorButtons.vue'
import { useCalculatorStore } from '@/stores/calculatorStore'

let calculator = useCalculatorStore()
</script>

<style scoped>
.container {
  width: 250px;
  background-color: darkgray;
  margin: 1rem auto;
  padding: 0.1rem;
  border-radius: 10px;
  border: 1px solid black;
  box-shadow: 0 0 10px black;
}
</style>
