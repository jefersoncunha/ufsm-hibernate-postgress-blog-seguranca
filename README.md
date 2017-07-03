# ufsm-hibernate-postgress-blog-seguranca


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



## Tenta evitar ataques
- Hidden Manipulation:
- DoS/DDoS (Denial of Service / Distributed DoS)
- Cross-site scripting
  - https://www.javacodegeeks.com/2012/08/cross-site-scripting-xss-and-prevention.html
- Buffer Overflow:
- Buffer over-read:
- Cookie Poisoning / Envenenamento de Cookies:
- Ataques de Injeção de Código
- Ataque na Sessão - SessionFixationAttack
  - session.invalidate(); 
