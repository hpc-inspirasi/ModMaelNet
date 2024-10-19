# How to Run Code

## Python Version 3.8.10

## Install Requirements

```bash 
pip install -r requirements.txt
```

## TRAIN MODEL REINFORCEMENT LEARNING MAELNET

Change your working directory to main directory, then run this command.

```bash 
bash ./scripts/NEW_RL/[dataset]_scripts/train_[model].sh
```

## TEST MODEL REINFORCEMENT LEARNING MAELNET

Change your working directory to main directory, then run this command.

```bash 
bash ./scripts/NEW_RL/[dataset]_scripts/test.sh
```

## Install torch, torchaudio, torchvision with CUDA support
```bash
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
```