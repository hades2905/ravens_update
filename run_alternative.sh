TASK=$1
AGENT=$2
ASSETS_ROOT=./ravens/environments/assets/

python ravens/test.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=1 --n_steps=20000
python ravens/test.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=10 --n_steps=20000
python ravens/test.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=100 --n_steps=20000
python ravens/test.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=1000 --n_steps=20000

python ravens/plot.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=1
python ravens/plot.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=10
python ravens/plot.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=100
python ravens/plot.py  --assets_root=$ASSETS_ROOT --task=${TASK} --agent=${AGENT} --n_demos=1000
