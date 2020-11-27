<script>

import Image from './Image.svelte';

import TextFieldWidth from './TextFieldWidth.svelte';
import TextFieldHeight from './TextFieldHeight.svelte';

import ButtonGreyScale from './ButtonGrayScale.svelte';
import ButtonDownload from './ButtonDownload.svelte';

let width  = null;
let height = null;

let greyScale = false;

let setGrayScale = function (value) {
    img.style.grayScale((value ? 1 : 0));

    return value;
}

$: console.debug("Width: " + width);
$: console.debug("Height: " + height);

$: console.debug("GreyScale: " + greyScale);

</script>

<main>
    Image Utility (example)
    
    <br>

    <Image />

    <br><br>

    <TextFieldWidth />
    x
    <TextFieldHeight />

    <br><br>

    <ButtonGreyScale />

    <ButtonDownload />
</main>

<style>
	
</style>