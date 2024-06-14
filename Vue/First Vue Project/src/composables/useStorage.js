import { ref, watch } from 'vue';

export function useStorage(key, val=null) {
    let storedVal = read();

    if (storedVal) {
        val = ref(storedVal);
    } else {
        val = ref(val);
        write();
    }

    // deep listens for changes to nested properties
    watch(val, write, { deep: true });

    function read() {
        return JSON.parse(localStorage.getItem(key));
    }

    function write() {
        if (val.value === "" || val.value === null) {
            localStorage.removeItem(key);
        }
        else {
            localStorage.setItem(key, JSON.stringify(val.value));
        }
    }

    return val;
}