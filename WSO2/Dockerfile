# Usar a imagem base WSO2 IS
FROM wso2/wso2is:7.0.0

USER root

# Instalação de Maven e OpenJDK 11
RUN apt-get update && \
    apt-get install -y maven openjdk-11-jdk && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/wso2carbon

# Copiando o projeto Maven para o container
COPY custom-user-store-manager/pom.xml /home/wso2carbon/custom-user-store-manager/
# COPY custom-user-store-manager/user-mgt.xml /home/wso2carbon/custom-user-store-manager/
# COPY custom-user-store-manager/src /home/wso2carbon/custom-user-store-manager/src/

# Compilando o projeto Maven
WORKDIR /home/wso2carbon/custom-user-store-manager
RUN mvn clean install

# Copiando o JAR customizado para o servidor
# RUN cp target/custom-user-store-manager-1.0-SNAPSHOT.jar /home/wso2carbon/wso2is-7.0.0/repository/components/dropins/

# Copiando a configuração personalizada para o servidor
COPY custom-user-store-manager/deployment.toml /home/wso2carbon/wso2is-7.0.0/repository/conf/deployment.toml
# RUN cp custom-user-store-manager/user-mgt.xml /home/wso2carbon/wso2is-7.0.0/repository/conf/user-mgt.xml
# COPY custom-user-store-manager/etc/logging-bridge.properties /home/wso2carbon/wso2is-7.0.0/repository/conf/etc/logging-bridge.properties

# Ajustando permissões
# RUN chown -R 802:802 /home/wso2carbon/wso2is-7.0.0/repository/conf/
# RUN chown -R 802:802 /home/wso2carbon/wso2is-7.0.0/repository/components/dropins/
# RUN chmod -R 755 /home/wso2carbon/wso2is-7.0.0/repository/conf/
# RUN chmod -R 755 /home/wso2carbon/wso2is-7.0.0/repository/components/dropins/

# Verificando arquivos
# RUN ls -l /home/wso2carbon/wso2is-7.0.0/repository/conf/user-mgt.xml
# RUN ls -l /home/wso2carbon/wso2is-7.0.0/repository/components/dropins/custom-user-store-manager-1.0-SNAPSHOT.jar

# Mudando para o usuário 802 (wso2carbon)
# USER 802

# Expondo portas necessárias
EXPOSE 9443 9763

# Comando para iniciar o servidor
CMD ["sh", "wso2is-7.0.0/bin/wso2server.sh"]
