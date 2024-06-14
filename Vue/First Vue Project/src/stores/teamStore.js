import { defineStore } from 'pinia'

export let useTeamStore = defineStore('team', {
  state: () => ({
    name: '',
    spots: 0,
    members: []
  }),

  actions: {
    async fill() {
      // import('@/team.json').then(r => { // this is the old way if not async
        // let data = r.default;
        // this.$patch({
        //   name: data.name,
        //   spots: data.spots,
        //   members: data.members
        // });
      // });
        let r = await import('@/team.json');
        this.$state = r.default; 
    },

    grow(spots) {
      this.spots = spots;
    }
  },

  getters: {
    spotsRemaining() {
      return this.spots - this.members.length;
    }
  }
});
