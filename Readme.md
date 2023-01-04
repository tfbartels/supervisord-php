# PHP Supervisord

Projeto para estudo e testes do Supervisord

## Subir o container
### Build
```
docker build -t php-supervisord .
```

### Run
```
docker run -it --rm --name php-supervisord php-supervisord bash
```

## Dentro do Container
### Iniciar Supervisor
```
service supervisor start
```

### Verificar processos em execução
```
supervisorctl
```

### Aplicar mudanças nos arquivos .conf
```
supervisorctl reread
supervisorctl update
```

### Iniciar processo
```
supervisorctl start <nome_processo>
```

### Finalizar processo
```
supervisorctl stop <nome_processo>
```

### Fonte
https://www.digitaloceanbr.com.br/monitorando-processos-supervisord.html