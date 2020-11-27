<script>

export let img = document.getElementById("img");

$: img.style.width  = width;
$: img.style.height = height;

</script>

<div class="img-container">
    <img src="sample.jpg" alt="img" id="img">
</div>

<style>

</style>