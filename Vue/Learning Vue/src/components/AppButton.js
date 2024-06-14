export default {
    template: `
        <button 
            :class="{
                'border rounded px-5 py-2 disabled:cursor-not-allowed': true,
                'bg-blue-200 hover hover:bg-blue-300': type === 'primary',
                'bg-yellow-200 hover hover:bg-yellow-300': type === 'secondary',
                'bg-gray-200 hover hover:bg-gray-300': type === 'muted',
                'is-loading': 'processing',
            }"
            :disabled="processing"
        >
            <slot/>
        </button>
    `,

    props: {
        type: {
            type: String,
            default: 'primary',
        },
        processing: {
            type: Boolean,
            default: false,
        },
    },
}