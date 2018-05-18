# 仓库介绍
## 缘起
因为要在TCP长连接上实现通道加密，需要TLS方案。目前网上C和Java两个平行世界里的人在openssl和keytool中自说自话，找不到多语言环境下的TLS完整方案，甚至有的demo对TLS方案存在误解。
## 脚本介绍
### key.sh

此脚本用来生成两端要用到的keystore和truststore。验证完后可以将[tls](https://github.com/robotspace/tls)仓库中生成的keystore 及　truststore拷贝过来，验证pem转jks方案。
