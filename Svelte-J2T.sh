#!/bin/bash

npm install --save-dev @tsconfig/svelte typescript svelte-preprocess svelte-check

npm install @rollup/plugin-typescript --save-dev

node scripts/setupTypeScript.js

npm install
