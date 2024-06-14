import Appbutton from "./AppButton.js";
import Assignments from "./assigments/Assignments.js";
import Card from "./assigments/Card.js"

export default {
    components: {
        'app-button': Appbutton,
        'assignments': Assignments,
        'card': Card,
    },

    template: `
        <div class="grid gap-6">
            <assignments></assignments>
        </div>
    `,
};