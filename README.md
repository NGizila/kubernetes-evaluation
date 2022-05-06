### Natalia

## Kubernetes evaluation

# Explications:

- deployment-redis.yml - un fichier qui déploie un serveur redis
- deployment-noderedis.yml - il déploie des nodes pour parler avec le serveur
- service-redis.yml - un service qui permet d'accèder le serveur redis sur le port 6379 (c'est un port de redis). La connection est effectuée dans le cluster d'ou cluster ip dans redis_url

# Execution: 

- D'abord il faut déployer deployment-redis.yml pour lancer un serveur.
- Pour vérifier que il est bien présent on peut faire: kubectl get deployment.
- Ensuite on lance un service: kubectl apply -f service-redis.yml.
- On aura besoin d'un IP_CLUSTER pour se co avec redis qui on peut trouver avec kubectl get services.
- On copie-colle IP_CLUSTER dans noderedis REDIS_URL avec un port 6379.
- On déploie le fichier.
- Pour vérifier la co on vérifie les logs avec la commande : kubectl logs POD_ID  -f. Pod id on peut trouver avec kubeclt get pods.



# les commandes:

Voir des logs: kubectl logs POD_ID  -f

Scale: kubectl scale -n default deployment DEPLOYMENT_NAME --replicas=5

# bonus:

1. Dockerfile
2. push image vers docker hub - image est present comme: ngizila/bonus-react:1.0.0
3. load image dans pod

## pour finir bonus:
- Il faut connecter react avec backend. Dans ce cas avec node_redis.