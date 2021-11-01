# nvidia_mps_tutorials
This repository contains three easy examples of CUDA code. They all work on the same principle, that is why below you will find the manual only for one of them - `twoKernels`.
This tutorial shows how to use Nvidia's Multi-Process Service (aka mps) that enables parallelism and concurrency of the threads on the shared server. The source tutorial is found [here](https://stackoverflow.com/questions/34709749/how-do-i-use-nvidia-multi-process-service-mps-to-run-multiple-non-mpi-cuda-app).

## Here is what you need to do

All the needed files are already created in this repository. You will, however, need to edit some depending on your device and also to give permission to run.

Run the twoKernels.cu file as follows:
```
%cd nvidia_mps_tutorials/
!nvcc -arch=sm_35 -o twoKernels twoKernels.cu
!./twoKernels
```
(% and ! are needed at the beginning of the line if you use Colab, otherwise, ignore them)

When you run this function, you would get this kind of output:
```
kernel duration: 6.051965s
```
Now, let's launch the test app `mps_run` without enabling the server.
```
!./mps_run
kernel duration: 6.118155s
kernel duration: 11.828112s
```
If we start the server first (for that, you need to edit `start_as_root.bash` in accordance with your GPU device), and repeat the test, the time taken for kernels to run is:
```
!./start_as_root.bash
!exit
!./mps_run
kernel duration: 6.167079s
kernel duration: 6.263062s
```
