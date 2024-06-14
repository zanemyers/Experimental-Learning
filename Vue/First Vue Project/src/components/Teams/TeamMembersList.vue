<template>
  <table>
    <thead>
      <th>Name</th>
      <th>Email</th>
      <th>Status</th>
    </thead>

    <tbody>
      <TeamMember
        v-for="member in team.members"
        :key="member.id"
        :name="member.name"
        :email="member.email"
        :status="member.status"
      />
    </tbody>
  </table>

  <p v-show="!team.spotsRemaining" id="no-spots-notice">
    There are no remianing team spots. Upgrade to add more.
  </p>
</template>

<script setup>
import TeamMember from '@/components/Teams/TeamMember.vue'
import { useTeamStore } from '@/stores/teamStore.js';
let team = useTeamStore();
</script>

<style scoped>
table {
  width: 100%;
  table-layout: fixed;
  border-spacing: 2px;
}

th {
  text-align: left;
  padding: 0.5rem 1.5rem;
  font-weight: bold;
}

tr {
  background-color: #f3f4f6;
  padding: 1rem 3rem;
}

#no-sposts-notice {
  text-align: right;
  color: #718096;
  font-style: italic;
}
</style>
