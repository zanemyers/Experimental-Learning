export default {
    template: `
        <form @submit.prevent="add">
            <div class="border border-gray-600 text-black mt-5 flex">
                <input v-model="newAssignment" placeholder="Add Assignment" class="p-2 shrink-1"/>
                <button type="submit" class="bg-white p-2 border-l">Add</button>
            </div>
        </form>
    `,
    data() {
        return {
            newAssignment: ''
        };
    },
    methods: {
        add() {
            this.$emit('add', this.newAssignment);
            this.newAssignment = '';
        }
    }
};