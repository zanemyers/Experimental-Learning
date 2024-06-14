import { defineStore } from 'pinia'

export const useCalculatorStore = defineStore('calculator', {
  state: () => ({
    currentValue: '0',
    previousValue: '0',
    operator: '',
    rows: {
      1: ['C', '±', '%', '÷'],
      2: ['7', '8', '9', 'x'],
      3: ['4', '5', '6', '-'],
      4: ['1', '2', '3', '+'],
      5: ['0', '.', '=']
    },
    operators: ['C', '±', '%', '=', '+', '-', 'x', '÷'],
  }),

  actions: {
    handleButtonClick(value) {
      if ((!isNaN(value) || value === '.') && this.currentValue.length < 10) {
        this.currentValue = this.currentValue === '0' ? value : this.currentValue + value;
      }
      else if (this.operators.includes(value)) {
        this.handleOperator(value);
      }
    },
    handleOperator(value) {
      switch (value) {
        case 'C':
          this.setPreviousValue();
          break;
        case '±':
          this.currentValue = (parseFloat(this.currentValue) * -1).toString();
          break;
        case '%':
          this.currentValue = (parseFloat(this.currentValue) / 100).toString();
          break;
        case '=':
          this.calculate();
          break;
        case 'x':
          this.setPreviousValue();
          this.operator = '*';
          break;
        case '÷':
          this.setPreviousValue();
          this.operator = '/';
          break;
        default:
          this.setPreviousValue();
          this.operator = value;
          break;
      }
    },
    calculate() {
      let temp = this.currentValue;
      this.currentValue = parseFloat(eval(this.previousValue + this.operator + this.currentValue).toFixed(2)).toString();
      this.previousValue = temp;
    },
    setPreviousValue() {
      this.previousValue = this.currentValue;
      this.currentValue = '0';
      this.operator = '';
    }
  },
})
