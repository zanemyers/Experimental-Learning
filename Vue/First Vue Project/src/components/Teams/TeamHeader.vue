<template>
  <header>
    <div>
      <AddMemberModal/>
    </div>
    <div>
      <h3>
        <img id="team-logo" src="/smiley.png" alt="" class="mr-2" />
        {{ team.name }} Team
        <BadgeNotification :count="team.spots" />
      </h3>
    </div>
  </header>
</template>

<script setup>
import BadgeNotification from '@/components/BadgeNotification.vue'
import { useTeamStore } from '@/stores/teamStore.js'
import AddMemberModal from './AddMemberModal.vue';
let team = useTeamStore()
</script>

<style scoped>
header {
  display: flex;
  justify-content: space-between;
  padding-top: 1rem;
}

h3 {
  display: inline-flex;
  align-items: center;
  position: relative;
  font-size: 1.875rem;
}

#team-logo {
  margin-right: 0.5rem;
  width: 2rem;
  height: 2rem;
}
</style>
