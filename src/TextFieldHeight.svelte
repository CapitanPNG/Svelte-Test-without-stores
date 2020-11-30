<script>

$: console.debug("Height: " + window.image.height);

let keydownCallback = function (e) {
    switch(e.key) {
        case "ArrowUp":
            window.image.height++;
        break;
        case "ArrowDown":
            window.image.height--;
        break;
    }
}

</script>

<span class="textfield-wrapper" id="tf_height">
    <input class="textfield" type="text" bind:value={window.image.height} tabindex=0 on:keydown={keydownCallback}>
</span>

<style>
    
</style>