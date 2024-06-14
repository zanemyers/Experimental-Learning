<template>
  <TeamHeader/>
  <div class="member-list">
    <TeamMembersList />
  </div>

  <TeamFooter />
  
</template>

<script setup>
import TeamHeader from '@/components/Teams/TeamHeader.vue'
import TeamFooter from '@/components/Teams/TeamFooter.vue'
import TeamMembersList from '@/components/Teams/TeamMembersList.vue'
import { useTeamStore } from '@/stores/teamStore.js'

let team = useTeamStore()
team.fill()

</script>

<style scoped>
h2 {
  font-weight: 600;
  margin: 0;
}
.member-list {
  width: 725px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 0.75rem;
  margin: 0 auto;
}
</style>
