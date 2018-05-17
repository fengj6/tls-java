#创建服务器秘钥库server_ks.jks，此处我给的密码为server（注意这里-storepass server和-keypass server要一致，否则会报出异常Cannot recover key） 
keytool -genkey -keystore ./server_ks.jks -storepass server -keyalg RSA -keypass server

#创建客户端秘钥库client_ks.jks，此处我给的密码为client(密码一致性同上) 
keytool -genkey -keystore ./client_ks.jks -storepass client -keyalg RSA -keypass client


#把服务器秘钥库server_ks.jks里的证书导出为server.cer  
keytool -export -keystore ./server_ks.jks -storepass server -file ./server.cer

#把客户端秘钥库client_ks.jks里的证书导出为client.cer
keytool -export -keystore ./client_ks.jks -storepass client -file ./client.cer

#把server.cer导入服务器信任秘钥库clientTrust_ks.jks，放于客户端告诉客户端哪些服务器是可以信任的
keytool -import -keystore ./serverTrust_ks.jks -storepass client -file ./server.cer

#把client.cer导入客户端信任秘钥库serverTrust_ks.jks
keytool -import -keystore ./clientTrust_ks.jks -storepass server -file ./client.cer
