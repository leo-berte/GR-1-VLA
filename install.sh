#!/bin/bash

pip3 install packaging==21.3
pip3 install flamingo_pytorch
pip3 install tensorboard
pip3 install ftfy regex tqdm
pip3 install matplotlib
pip3 install torch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1
pip3 install transformers==4.5.1
pip3 install "setuptools<58"
pip3 install moviepy==1.0.3
pip3 install packaging==20.9

sudo apt-get -y install libegl1-mesa libegl1
sudo apt-get -y install libgl1
sudo apt-get -y install libosmesa6-dev
sudo apt-get -y install patchelf

export CALVIN_ROOT=/home/leonardo/Documents/Coding/calvin
export EVAL_DIR=eval_logs/
export POLICY_CKPT_PATH=logs/snapshot_ABCD.pt
export MAE_CKPT_PATH=logs/mae_pretrain_vit_base.pth


# To run the evaluation:
# bash evaluate_calvin.sh --dataset_dir /home/leonardo/Documents/Coding/calvin/dataset/calvin_debug_dataset --debug

# Notes on download order: CALVIN - CLIP - GR1
# In current env, I downloaded before GR1 and then CALVIN, and finally to fix at the end:
# pip install "transformers==4.5.1" "tokenizers==0.10.3" "torch==1.12.1" "torchvision==0.13.1" "torchaudio==0.12.1"
# pip install "packaging==20.9"

# Finally, since GPU in my laptop are too new, digit:
# pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu121
