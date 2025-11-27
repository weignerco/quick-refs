# Test hosting an LLM in OCI GPU (NVIDIA A10) instance using Docker and vLLM

nvidia-smi
# nvidia-smi (nvidia system management interface) is a command line utility that comes with nvidia drivers for monitoring and managing nvidia gpus
# provides real-time information such as GPU temperature, memory usage, power consumption, and driver version, as well as the ability to manage GPU settings like clock speed and fan speed.

docker info
# checks if docker is installed

sudo docker run --rm --gpus all nvidia/cuda:12.4.0-base-ubuntu22.04 nvidia-smi
# runs a temporary docker container to test GPU access
# pulls the 12.4.0 cuda image based on ubuntu 22.04 and runs nvidia-smi inside the container

sudo docker pull vllm/vllm-openai:latest
# pulls the vllm image from Docker Hub
# vLLM is a high-performance inference engine for large language models (LLMs) that optimizes resource utilization and throughput, enabling efficient deployment of LLMs in production environments.
# the vllm-openai image provides an OpenAI-compatible API for serving large language models using the vLLM engine.

sudo docker run --rm -d --gpus all -p 8000:8000 --name llama3-server vllm/vllm-openai:latest --model neuralmagic/Meta-Llama3-8B-Instruct-quantized.w8a8
# runs the vllm container in detached mode (-d), mapping port 8000 and naming it llama3-server
# for some reason, this model exits the container right away suggesting it ran out of memory on the GPU
# alternative command to run a quantized model for better performance
# you might notice your container exits immediately using other models like meta-llama/Meta-Llama-3-8B-Instruct - possibly out of memory issues on the GPU

sudo docker ps
# lists running containers to verify the llama3-server is active

nvidia-smi
# checks GPU usage while the container is running

http://<instance_public_ip>:8000/v1/chat/completions
# open this on your local browser to access the LLM server; replace <instance_public_ip> with the actual IP address
# the output should show a message indicating the server is running and ready to accept requests


curl http://<instance_public_ip>:8000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "neuralmagic/Meta-Llama-3-8B-Instruct-quantized.w8a8",
    "messages": [
      {
        "role": "user",
        "content": "Explain why the sky is blue in two sentences."
      }
    ],
    "max_tokens": 100
  }'
# example curl command to interact with the LLM server, requesting an explanation about why the sky is blue