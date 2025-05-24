theme=$1

result=$(python3 scripts/autoset-plasma-colorscheme/setcolor.py)

echo "$result theme"

if [ "$result" != "" ]; then
  plasma-apply-colorscheme "$result"
fi