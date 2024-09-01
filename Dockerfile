# Usar a imagem base do Apache
FROM httpd:2.4

# Copiar o conteúdo do diretório local html para o diretório padrão do Apache
COPY ./html/ /usr/local/apache2/htdocs/

# Copiar o diretório images para o diretório de imagens do Apache
COPY images/ /usr/local/apache2/htdocs/images/

# Expor a porta 80
EXPOSE 80

# Comando padrão para iniciar o Apache
CMD ["httpd-foreground"]
