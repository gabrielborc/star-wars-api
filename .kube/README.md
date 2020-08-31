# Api do Star Wars

Fazer o deploy da api star wars no minikube.

- [Deployment](#deployment)
- [Acessar](#acessar)

## Deployment

Execute esses dois comando no terminal onde os arquivos de deployment estão:

```
$ kubectl apply -f star-wars-deployment.yaml
```

```
$ kubectl apply -f star-wars-service.yaml
```

## Acessar

Foi configurado um service com o tipo NodePort, verifique o ip de acesso ao minikube:

```
$ minikube ip
```

Agora acesse no seu navegador pelo o ip que foi mostrado no terminal com a porta 30333, exemplo ```http://localhost:30333```, se não der certo, siga as observações abaixo.

###Observações

Caso tenha problema no acesso, pode ser que esteja rodando o minikube no docker, como no caso do windows usando wls, então deve executar o seguinte comando, para que o minikube libere uma porta de acesso.

```
minikube service star-wars-service
```