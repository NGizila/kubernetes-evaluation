### Natalia

## Kubernetes evaluation

# Explications:

- deployment-redis.yml - un fichier qui déploie un serveur redis
- deployment-noderedis.yml - il déploie des nodes pour parler avec le serveur
- service-redis.yml - un service qui permet d'accèder le serveur redis sur le port 6379 (c'est un port de redis). La connection est effectuée dans le cluster d'ou cluster ip dans redis_url



# les commands:

Voir des logs: kubectl logs POD_ID  -f

Scale: kubectl scale -n default deployment DEPLOYMENT_NAME --replicas=5

# bonus:

1. Dockerfile
2. push image vers docker hub - image est present comme: ngizila/bonus-react:1.0.0
3. load image dans pod