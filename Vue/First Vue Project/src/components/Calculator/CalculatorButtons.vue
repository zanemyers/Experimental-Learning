<template>
  <div class="row">
    <button
      v-for="button in row"
      :key="button"
      :class="{
        'button-0': button === '0',
        'button-operator': isOperator(button),
        'button-other': isOther(button)
      }"
      @click="calculator.handleButtonClick(button)"
    >
      {{ button }}
    </button>
  </div>
</template>

<script>
import { useCalculatorStore } from '@/stores/calculatorStore'

export default {
  name: 'CalculatorButtons',

  props: {
    row: {
      type: Object,
      required: true
    }
  },
  methods: {
    isOperator(value) {
      return ['+', '-', 'x', '÷', '='].includes(value)
    },
    isOther(value) {
      return ['C', '±', '%', '.'].includes(value)
    }
  },
  setup() {
    let calculator = useCalculatorStore()

    return {
      calculator
    }
  },
}
</script>

<style scoped>
.row {
  display: flex;
  justify-content: space-between;
  margin: 0.5rem;
}
button {
  width: 50px;
  height: 50px;
  border-radius: 10px;
  font-size: 1.5rem;
  font-weight: bold;
  background-color: lightgray;
}
button:hover {
  background-color: rgb(147, 147, 147);
}
.button-0 {
  width: 110px;
}
.button-operator {
  background-color: rgba(0, 189, 126, 0.747);
}
.button-operator:hover {
  background-color: hsla(160, 100%, 27%, 1);
}
.button-other {
  background-color: darkgray;
}
.button-other:hover {
  background-color: rgb(147, 147, 147);
}
</style>
