<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <div class="wrapper">
      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
        <RouterLink to="/contact">Contact</RouterLink>
        <RouterLink to="/counter">Counter</RouterLink>
        <RouterLink to="/team">Team</RouterLink>
        <RouterLink to="/calculator">Calculator</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  display: grid;
  border-bottom: 1px solid var(--color-border);
}

nav {
  text-align: left;
  font-size: 1rem;
  padding-top: 1rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a {
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}
</style>
