<script>

import Image from './Image.svelte';
import ToolBar from './ToolBar.svelte';

import { onMount } from 'svelte';

window.image = {
    width:  640,
    height: 360
};

window.grayscale = false;

onMount(function() {
    let buttons = document.querySelectorAll(".button");

    buttons.forEach(function(button) {
        button.addEventListener(
            "keydown",
            function(e) {
                //console.debug(e);

                if(e.key === "Enter") {
                    button.click();

                    let a = button.querySelectorAll("a");
                    
                    if(a.length) {
                        a[0].click();
                    }
                }
            }
        )
    });

    let img = document.getElementById("img");

    for(let key in window.image) {
        img[key] = window.image[key];

        document.getElementById("tf_" + key).value = window.image[key];
    }
});

const keyMap = {
    "g": "grayscale",
    "d": "download"
};

let keydownCallback = function (e) {
    if(keyMap[e.key] !== undefined) {
        document.getElementById("btn_" + keyMap[e.key]).click();
    }
};

</script>

<svelte:head>
    <title>Image Editor</title>

    <link rel="stylesheet" href="./fonts/Montserrat/font.css">
</svelte:head>

<svelte:window on:keydown={keydownCallback} />

<main>
    <Image />

    <ToolBar />
</main>

<style>
    :global(*) {
        margin: 0;
        padding: 0;
        outline: none;
        box-sizing: border-box;
        font-family: "Montserrat";
    }
    main {
        width: 100%;
        height: 100%;

        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;

        position: absolute;
        left: 0;
        top: 0;

        background-color: #393939;
    }
    
    :global(.textfield) {
        width: 100px;
        margin: 0;
        padding: 6px 20px;
        background-color: #e4e4e4;
        color: #5c5c5c;
        border: 1px solid transparent;
        font-weight: 500;
        font-size: 14px;
        text-align: center;
        border-radius: 5px;
    }
    :global(.button) {
        display: table;
        padding: 10px 20px;
        background-color: #e4e4e4;
        color: #5c5c5c;
        font-family: "Montserrat";
        font-weight: 600;
        font-size: 14px;
        border-radius: 5px;
        cursor: pointer;
        user-select: none;
    }
    :global(
        .textfield:hover,
        .textfield:focus,

        .button:hover,
        .button:focus
    ) {
        /*background-color: #a58dc7;*/
        background-color: #409b75;
        color: #ffffff;
    }

    :global(
        .textfield::-moz-selection,
        .textfield::selection
    ) {
        background-color: #ffffff;
        color: #a58dc7;
    }
</style>