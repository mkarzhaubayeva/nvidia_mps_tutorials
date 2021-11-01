export CUDA_VISIBLE_DEVICES="0"
nvidia-smi -c 3 -i 00000000:00:04.0
nvidia-cuda-mps-control -d