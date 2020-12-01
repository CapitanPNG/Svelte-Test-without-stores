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

    switch(e.key) {
        case "ArrowUp":
        case "ArrowDown":
            document.getElementById("tf_height").value = window.image.height;

            document.getElementById("img").height = window.image.height;
        break;
    }
}

let keyupCallback = function (e) {
    window.image.height = e.target.value;

    document.getElementById("img").height = window.image.height;
}

</script>

<span class="textfield-wrapper">
    <input id="tf_height" class="textfield" type="text" tabindex=0 on:keydown={keydownCallback} on:keyup={keyupCallback}>
</span>

<style>
    
</style>