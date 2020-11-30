<script>

$: console.debug("Width: " + image.width);

let keydownCallback = function (e) {
    switch(e.key) {
        case "ArrowUp":
            image.width++;
        break;
        case "ArrowDown":
            image.width--;
        break;
    }
}

</script>

<span class="textfield-wrapper" id="tf_width">
    <input class="textfield" type="text" bind:value={image.width} tabindex=0 on:keydown={keydownCallback}>
</span>

<style>

</style>