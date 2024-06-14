<template>
    <button id="add-member-button" :disabled="!team.spotsRemaining" @click="showModal = true">
        Add Member ({{ team.spotsRemaining }} Spots Left)
    </button> 

    <Teleport to="body">
     <Modal class="modal" :show="showModal" @close="showModal = false">
      <template #header>
        <h2>Add Team Member</h2>
      </template>
      <template #default>
        <form>
          <div class="form">
            <input class="form-input" type="email" placeholder="Email Address..." />
            <button>Add</button>
          </div>
        </form>
      </template>
    </Modal>
  </Teleport>
</template>

<script setup>
import Modal from '@/components/Modal.vue'
import { ref } from 'vue'
import { useTeamStore } from '@/stores/teamStore';

let showModal = ref(false)
let team = useTeamStore()
</script>

<style scoped>
.form {
  margin-top: 1rem;
  display: flex;
  gap: 0.75rem;
}
.form-input {
  font-size: 20px;
  flex: 1;
}

#add-member-button {
  background-color: #34d399;
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 0.25rem;
  border-color: transparent;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  cursor: pointer;
}

#add-member-button:hover {
  background-color: #10b981;
  box-shadow:
    0 12px 16px 0 rgba(0, 0, 0, 0.24),
    0 17px 50px 0 rgba(0, 0, 0, 0.19);
}

#add-member-button:disabled {
  background-color: #9ca3af;
  cursor: not-allowed;
}
</style>