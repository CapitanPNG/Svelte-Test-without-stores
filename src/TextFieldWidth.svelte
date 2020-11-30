<script>

$: console.debug("Width: " + window.image.width);

let keydownCallback = function (e) {
    switch(e.key) {
        case "ArrowUp":
            window.image.width++;
        break;
        case "ArrowDown":
            window.image.width--;
        break;
    }
}

</script>

<span class="textfield-wrapper" id="tf_width">
    <input class="textfield" type="text" bind:value={window.image.width} tabindex=0 on:keydown={keydownCallback}>
</span>

<style>

</style>