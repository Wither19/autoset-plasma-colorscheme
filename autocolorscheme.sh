#!/bin/bash
colorscheme=$(node ./gethour.js)
plasma-apply-colorscheme $colorscheme
