<script>

</script>

<div class="button" on:click={()=>{greyScale = !setGreyScale(greyScale)}}>
    {#if greyScale}
        Disable GreyScale
    {:else}
        Enable GreyScale
    {/if}
</div>

<style>

</style>