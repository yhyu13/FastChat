MODEL_NAME='vicuna-13b-v1.1'
MODEL_PATH=/home/hangyu5/Documents/Hugging-Face/vicuna-13B-1.1-HF/
DEVICE=cuda
GPUS='0,1'
NUM_GPUS=2
python3 -m fastchat.serve.model_worker --device $DEVICE --model-name $MODEL_NAME --model-path $MODEL_PATH --gpus $GPUS --num-gpus $NUM_GPUS
