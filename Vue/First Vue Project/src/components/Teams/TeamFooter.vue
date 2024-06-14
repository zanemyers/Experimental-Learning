<template>
  <footer>
    <h5>{{ team.name }} - {{ team.spots }} Member Team</h5>
  </footer>
</template>

<script setup>
import { useTeamStore } from '@/stores/teamStore.js';
let team = useTeamStore();
</script>

<style scoped>
footer {
  margin-top: 3rem;
  background-color: #f3f4f6;
  padding: 1rem 0;
  text-align: center;
}
h5 {
  font-weight: 600;
  font-size: 1.125rem;
}
</style>
