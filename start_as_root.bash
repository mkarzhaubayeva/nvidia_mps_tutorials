#you will need to change the line 8 of the code. Set EXCLUSIVE_PROCESS to TARGET_GPU_ID. Follow these three lines.
#nvidia-smi -c compute_mode -i target_gpu_id
#compute_mode  = 0/Default, 1/Exclusive_Thread, 2/Prohibited, 3/Exclusive_Process
#target_gpu_id = Id number found by running the following command: nvidia-smi -q
#for my device it would be: nvidia-smi -c 3 -i 00000000:00:04.0

export CUDA_VISIBLE_DEVICES="0"
nvidia-smi -c 3 -i EXCLUSIVE_PROCESS
nvidia-cuda-mps-control -d
