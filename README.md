# Programação SQL Laboratório de Banco de Dados
## Prof. Leandro Colevati - FATEC ZL

Este repositório contém soluções para os exercícios propostos no Laboratório de Banco de Dados ministrado pelo Prof. Leandro Colevati na FATEC ZL.

## Exercícios:

### 1) Fazer em SQL Server os seguintes algoritmos:
a) **Fatorial de um número inteiro:**
   Dado um número inteiro, calcule e mostre o seu fatorial. (Não usar entrada superior a 12)

b) **Raízes de uma equação do 2º grau:**
   Dados A, B e C de uma equação do 2º grau da fórmula AX² + BX + C = 0, verifique e mostre a existência de raízes reais. Caso existam, calcule e mostre. Caso não existam, exiba uma mensagem.

c) **Crescimento de altura:**
   Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria, sabendo que Ana tem 1,10 m e cresce 3 cm ao ano, e Maria tem 1,5 m e cresce 2 cm ao ano.

d) **Série numérica:**
   Escreva uma aplicação que gere os N termos da seguinte série: 1, 4, 4, 2, 5, 5, 3, 6, 6, 4, 7, 7, ...

e) **Geração de massa de dados para tabela Produto:**
   Considerando a tabela abaixo, gere uma massa de dados com 50 registros para fins de teste, seguindo as regras estabelecidas:
   
   Tabela `Produto`:

Codigo (INT - PK)
Nome (VARCHAR(30))
Valor (DECIMAL(7,2))
Vencimento (DATE)

- Código inicia em 50001 e incrementa de 1 em 1
- Nome segue padrão simples: Produto 1, Produto 2, Produto 3, etc.
- Valor: gerar um número aleatório entre 10.00 e 100.00
- Vencimento: gerar um número aleatório entre 3 e 7 e somar esse valor à data de hoje.

## Como Utilizar
1. Clone este repositório.
2. Execute os scripts SQL para cada exercício no SQL Server.
3. Analise os resultados e adapte conforme necessário para suas aplicações.

## Contribuições
Contribuições são bem-vindas! Se você encontrou uma maneira de melhorar estas soluções ou corrigir possíveis problemas, sinta-se à vontade para abrir um problema ou enviar um pull request.




