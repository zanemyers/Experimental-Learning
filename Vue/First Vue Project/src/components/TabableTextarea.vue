<template>
    <textarea 
        @keydown.tab.prevent="onTab"
        @keyup="emit('update:modelValue', e.target.value)"
        v-text="modelValue"        
    />
</template>

<script setup>
    defineProps({
        modelValue: {
            type: String,
        }
    });

    let emit = defineEmits(['update:modelValue']);

    function onTab(e) {
        let textarea = e.target;
        let val = textarea.value,
            start = textarea.selectionStart,
            end = textarea.selectionEnd;

        textarea.value = val.substring(0, start) + '\t' + val.substring(end);

        textarea.selectionStart = textarea.selectionEnd = start + 1;
    }
</script>