keytool -genkey -keystore ./server_ks.jks -storepass server -keyalg RSA -keypass server

keytool -genkey -keystore ./client_ks.jks -storepass client -keyalg RSA -keypass client

keytool -export -keystore ./server_ks.jks -storepass server -file ./server.cer

keytool -export -keystore ./client_ks.jks -storepass client -file ./client.cer

keytool -import -keystore ./serverTrust_ks.jks -storepass client -file ./server.cer

keytool -import -keystore ./clientTrust_ks.jks -storepass server -file ./client.cer
