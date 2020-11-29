<script>

import { image } from './stores/image';

$: console.debug("Height: " + $image.height);

let keydownCallback = function (e) {
    switch(e.key) {
        case "ArrowUp":
            $image.height++;
        break;
        case "ArrowDown":
            $image.height--;
        break;
    }
}

</script>

<span class="textfield-wrapper" id="tf_height">
    <input class="textfield" type="text" bind:value={$image.height} tabindex=0 on:keydown={keydownCallback}>
</span>

<style>
    
</style>