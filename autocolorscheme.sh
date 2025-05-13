#!/bin/bash
# colorscheme=$(python3 autoset-plasma-colorscheme/gethour.py)
colorscheme=$(node autoset-plasma-colorscheme/gethour.js)
plasma-apply-colorscheme $colorscheme
