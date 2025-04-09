# How to Run Code

This model use Python Version 3.8.10.

For better result use venv in Python

```bash
python -m venv name-venv/
source ./name-venv/Scripts/activate
```

## Download Dataset
URL: http://s.id/nerd07

## Install Requirements

```bash 
pip install -r requirements.txt
```

## Train MODEL REINFORCEMENT LEARNING in MAELNET

Change your working directory to main directory, then run this command.

```bash 
bash ./scripts/NEW_RL/[dataset]_scripts/train_[model].sh
```

## Test MODEL REINFORCEMENT LEARNING in MAELNET

Change your working directory to main directory, then run this command.

```bash 
bash ./scripts/NEW_RL/[dataset]_scripts/test.sh
```

## Install torch, torchaudio, torchvision with CUDA support
```bash
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
```