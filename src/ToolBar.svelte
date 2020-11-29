<script>

import TextFieldWidth from './TextFieldWidth.svelte';
import TextFieldHeight from './TextFieldHeight.svelte';

import ButtonGreyscale from './ButtonGreyscale.svelte';
import ButtonDownload from './ButtonDownload.svelte';

</script>

<div class="tool-bar">
    <div class="img-size">
        <TextFieldWidth />
        x
        <TextFieldHeight />
    </div>

    <ButtonGreyscale />

    <ButtonDownload />
</div>

<style>
    .tool-bar {
        width: 1024px;
        padding: 10px;
        display: flex;
        flex-direction: row;
        justify-content: space-around;
        align-items: center;
        background-color: #515151;
        border-radius: 4px;
        box-shadow: 1px 1px 10px 1px #242424;
    }
    .img-size {
        display: table;
        color: #ffffff;
    }
</style>