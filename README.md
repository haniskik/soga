# soga
```
docker run -d \
  --name soga \
  --restart always \
  --network host \
  -e TYPE=v2board \
  -e SERVER_TYPE=ss \
  -e NODE_ID=3 \
  -e SOGA_KEY=sadasdsadasdasas \
  -e WEBAPI_URL=https://example.com \
  -e WEBAPI_KEY=sadasdasdas \
  ghcr.io/haniskik/soga
```

# nezha v0
将面板中复制所得的指令中的sh的raw文件url替换成
```
https://cdn.jsdelivr.net/gh/haniskik/soga@main/agent.sh
```
