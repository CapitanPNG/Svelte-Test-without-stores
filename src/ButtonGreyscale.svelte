<script>

let setGrayscale = function (value) {
    img.style.filter = "grayscale(" + (value ? "100" : "0") + "%)";
}

let setGrayscaleButton = function () {
    window.grayscale = !window.grayscale;
    
    setGrayscale(window.grayscale);
}

</script>

<div class="button" id="btn_grayscale" on:click={()=>{setGrayscaleButton();}} role=button tabindex=0>
    {#if window.grayscale}
        Disable
    {:else}
        Enable
    {/if}

    Greyscale ( G )
</div>

<style>

</style>