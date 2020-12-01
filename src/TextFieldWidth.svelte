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

    switch(e.key) {
        case "ArrowUp":
        case "ArrowDown":
            document.getElementById("tf_width").value = window.image.width;

            document.getElementById("img").width = window.image.width;
        break;
    }
}

let keyupCallback = function (e) {
    window.image.width = e.target.value;

    document.getElementById("img").width = window.image.width;
}

</script>

<span class="textfield-wrapper">
    <input id="tf_width" class="textfield" type="text" tabindex=0 on:keydown={keydownCallback} on:keyup={keyupCallback}>
</span>

<style>

</style>