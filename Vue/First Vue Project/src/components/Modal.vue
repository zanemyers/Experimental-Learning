<template>
  <transition>
    <div v-show="show" class="modal-mask">
      <div class="modal-container">
        <header>
          <slot name="header">Default header</slot>
        </header>

        <slot>Default body</slot>

        <footer class="modal-footer">
          <slot name="footer">
            <button @click="$emit('close')">Cancel</button>
          </slot>
        </footer>
      </div>
    </div>
  </transition>
</template>

<script setup>
defineProps({
  show: {
    type: Boolean,
    required: true
  }
})
</script>

<style scoped>
.modal-footer {
  border-top: 1px solid #ddd;
  margin-top: 1rem;
  padding-top: 0.5rem;
  font-size: 0.8rem;
}
.modal-footer button {
  background: #ddd;
  padding: 0.25rem 0.75rem;
  border-radius: 0.25rem;
}
.modal-footer button:hover {
  background: #c8c8c8;
}
.modal-mask {
  position: fixed;
  inset: 0;
  background-color: rgba(0, 0, 0, 0.6);
  display: grid;
  place-items: center;
}
.modal-container {
  background: white;
  padding: 1rem;
  width: 80vw;
  max-width: 500px;
  border-radius: 0.5rem;
}

.v-enter-from,
.v-leave-to {
  opacity: 0;
  scale: 125%;
}
.v-enter-active {
  transition: opacity .3s;
}
.v-leave-active {
  transition: .2s;
}

.v-enter-to,
.v-leave-from {
  opacity: 100;
}
</style>
