cd  src/main/resources
keytool -genkeypair -alias flutterweb -keyalg RSA -keysize 2048 -storetype PKCS12 -keystore flutterweb.p12 -validity 3650
keytool -genkeypair -alias flutterweb -keyalg RSA -keysize 2048 -keystore flutterweb.jks -validity 3650
keytool -importkeystore -srckeystore flutterweb.jks -destkeystore flutterweb.p12 -deststoretype pkcs12


