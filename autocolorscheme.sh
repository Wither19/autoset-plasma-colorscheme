#!/bin/bash
colorscheme=$(python3 ./gethour.py)
plasma-apply-colorscheme $colorscheme
