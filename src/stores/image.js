import { writable } from 'svelte/store';

let image = writable({
    width:  640,
    height: 360
});

export { image };
