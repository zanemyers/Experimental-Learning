<script setup>
// import {useFlash} from "@/composables/useFlash.js"
import { counter } from "@/stores/counterStore";

// let { flash } = useFlash();
</script>

<template>
  <div>
    <p>
      About Page. The current count is {{ counter.count }}.
      <!-- <button @click="flash('HEY!', 'It works!', 'info')">Click Me!</button> -->
    </p>
  </div>
</template>

