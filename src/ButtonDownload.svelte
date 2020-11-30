<script>

let downloadImage = function () {
    let canvas = document.createElement("canvas");

    canvas.width  =  window.image.width;
    canvas.height = window.image.height;

    canvas.style.position =           "absolute";

    canvas.style.width    =  window.image.width + "px";
    canvas.style.height   = window.image.height + "px";

    canvas.style.left     =                "0px";
    canvas.style.top      =                "0px";

    let ctx = canvas.getContext("2d");

    ctx.filter = "grayscale(" + (window.grayscale ? "100" : "0") + "%)";
    ctx.drawImage(
        document.getElementById("img"),
        0,
        0,
        window.image.width,
        window.image.height
    );

    /*document.body.innerHTML = "";
    document.body.append(canvas);
    return;*/

    let data = canvas.toDataURL("image/jpeg");

    let a = document.createElement("a");

    a.href = data;
    a.download = "image.jpg";

    a.click();

    window.setTimeout(
        function() {
            a.remove();
        },
        1000
    );
}

</script>
 
<div class="button" id="btn_download" role=button tabindex=0 on:click={downloadImage}>
    Download ( D )
</div> 

<style>

</style>