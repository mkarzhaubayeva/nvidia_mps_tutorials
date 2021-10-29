//you will need to change the line 7 of the code. Follow these three lines.
//nvidia-smi -c compute_mode -i target_gpu_id
//compute_mode  = 0/Default, 1/Exclusive_Thread, 2/Prohibited, 3/Exclusive_Process
//target_gpu_id = Id number found by running the following command: nvidia-smi -q

export CUDA_VISIBLE_DEVICES="0"
nvidia-smi -c 2 -i EXCLUSIVE_PROCESS
nvidia-cuda-mps-control -d
