FROM cypress/base:14.16.0

WORKDIR /app

# Instalar Cypress e dependências
COPY package.json ./
RUN npm install

# Copiar os arquivos de teste
COPY . .

# Comando para rodar os testes
CMD ["npx", "cypress", "run"]
