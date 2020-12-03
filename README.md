# Desafio Kabum fullstack developer
Desafio técnico proposto para avaliação de candidatura a emprego

### Instalação:
Proceda com os seguintes comandos:

    $ git clone https://github.com/codevenger/desafio_kabum
    $ cd desafio_kabum
    $ docker build -t nginx:kabum .
    $ docker-compose up
    $ docker exec -ti webserver service fcgiwrap start
    $ docker exec -ti webserver chmod a+rwx /var/run/fcgiwrap.socket

    
    
Acesse com seu navegador web o endereço [http://localhost/](http://localhost)



