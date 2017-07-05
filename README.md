# Blog - Hibernate + Postgress


Desenvolva uma aplicação Web em Java utilizando-se de todos os padrões de
projeto já discutidos em aula como DAO, MVC, Singletons, etc. A aplicação será do tipo
“blog”, e em linhas gerais, permite aos usuários registrados colocarem posts, bem
como a qualquer usuário comentar os posts. O trabalho será avaliado conforme o
cumprimento dos seguintes requisitos:

- Permitir o cadastro de posts aos usuários devidamente cadastrados e
identificados;
- Posts somente podem ser removidos ou alterados pelo usuário administrador
do blog ou pelo usuário que o cadastrou;
- Somente o usuário administrador poderá cadastrar outros usuários;
- A tela inicial do blog mostra apenas o título, a data de cadastro e os 200
primeiros caracteres de cada um dos 10 últimos posts;
- Na mesma tela inicial o usuário poderá acessar o link “posts antigos”, de onde a
tela passará a exibir todos os posts e não apenas os 10 últimos;
- Ao clicar sobre o post o usuário poderá visualizar o post completo bem como os
comentários dos usuários, além de poder postar o seu comentário;
- Deverá ser utilizada a ferramenta de mapeamento objeto-relacional para
persistência dos dados;
- O site deverá ser imune às principais vulnerabilidades estudadas na Unidade 3
da disciplina; 



* DoS/DDoS
* SQL Injection:
    * Hibernate bloqueia injeções usando PreparedStatement do Criteria
* Cross-site scripting XSS
    * XSS Reflected
    * XSS Stored Cross Site Scripting 
    * XSS DOM-based
        * validação sistemática relacionada com: tipo de dados, tamanho, formato
        * http://www.securitybrigade.com/blog/fixing-cross-site-scripting-in-java/
        * http://www.securitybrigade.com/blog/fixing-cross-site-scripting-in-spring-mvc/
* Buffer Overflow
* Buffer Over-Read:
* Cookie Poisoning 
    * Usando SSL
    * Usar a sessão evitando jogar informações desnecessárias nos Cookies
* Hidden Manipulation - Form Field Manipulation 
    * Armazenando as informações na sessão, evitando o hidden nos formulário
    * Verificando e validando as informações vindas por Hidden input
* Brute Force
    * Usando captcha
* Session Atack
    * Session Hijacking
        * Usando invalidate Session, 
        * Senhas com criptografia, 
        * Usando SSL.
    * SessionFixationAttack 
        * Usando SSL.
        * Usando invalidate Session 
* Broken authentication , 
    * impedindo Força Bruta por excesso de tentativas, inativando o usuário se errar mais que 3 logins
* Replay Attack 
    * Usando SSL
* Auditoria de Acessos
    * Log guardando informações importantes
* Disclose of Confidential Data e Data Tampering /  Insecure Direct Object References
    * Autenticando todas as rotas mapeadas para garantir que somente usuários ligados tenham acesso a elas
