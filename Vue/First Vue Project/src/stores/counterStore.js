// import { reactive } from 'vue';

// export let counter = reactive({
//     // state
//     count: 0,

//     // action
//     increment() {
//         if (this.count >= 10){
//             return;
//         }
//         this.count++;
//     }
// });

import { defineStore } from 'pinia';

export let useCounterStore = defineStore('counter', {

    // state
    state() {
        return { count: 0 };
    },

    // methods
    actions: {
        increment() {
            if (this.count >= 10){
                return;
            }
            this.count++;
        },
    },
    
    // computed properties
    getters: {
        remaining() {
            return 10 - this.count;
        },
    },
})