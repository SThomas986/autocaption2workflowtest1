# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.4.1-base

# install custom nodes into comfyui
RUN comfy-node-install comfyui_auto_caption@2.0.0

# copy all input data (like images or videos) into comfyui
COPY input/ /comfyui/input/