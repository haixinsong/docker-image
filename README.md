# docker image 仓库

some docker image

## 使用makefile管理

## 主要有两种版本的镜像

### 基于ubuntu系统

所有镜像以当前最新的LTS版为基础镜像, 如`FROM nediiii/ubuntu:18.04`

tag标记:
- nginx:latest
- nginx:1.17
- nginx:1.17.6

### 基于alpine系统

所有镜像以当前最新的大版本为基础镜像, 如`FROM nediiii/alpine:3.10`
所有镜像都在tag中标记alpine
tag标记:
- nginx:alpine
- nginx:1.17-alpine
- nginx:1.17.6-alpine
