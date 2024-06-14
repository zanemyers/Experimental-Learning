<template>
  <div id="badge-notification">
    {{ count }}
  </div>
</template>

<script setup>
defineProps({
  count: Number
});
</script>

<style scoped>
#badge-notification {
  background-color: #34d399; /* Use the appropriate color value */
  width: 1.25rem; /* Adjust as needed */
  height: 1.25rem; /* Adjust as needed */
  font-size: 0.75rem; /* Adjust as needed */
  color: white;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  right: -0.5rem; /* Adjust as needed */
  top: -0.25rem; /* Adjust as needed */
}
</style>
