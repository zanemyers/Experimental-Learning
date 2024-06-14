<template>
  <tr>
    <td id="name-col">
      <img id="profile-img" :src="`https://i.pravatar.cc/50?u=${email}`" alt="" />
      {{ name }}
    </td>
    <td id="email-col">{{ email }}</td>
    <td id="active-col">
      <button id="active-button">{{ status }}</button>
    </td>
  </tr>
</template>

<script setup>
defineProps({
  name: String,
  email: String,
  status: String
});
</script>

<style>
td {
  border-radius: 0.5rem;
}

#name-col {
  font-size: 1.25rem;
  font-weight: 500;
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 0.5rem 1.5rem;
}

#profile-img {
  border-radius: 0.5rem;
}

#email-col {
  color: #718096;
  padding: 0.5rem 1.5rem;
}

#active-col {
  padding: 0.5rem 1.5rem;
}

#active-button {
  color: #68d391;
  font-size: 1.25rem;
  background-color: transparent;
  border: transparent;
}
</style>
