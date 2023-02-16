# Rendu cours Kubernetes, spé DevOps A5

## Membres du groupe
[Victor Cabot](https://github.com/Denporty), [Victor Gaubin](https://github.com/victorgbn), [Yanny Ouzid](https://github.com/YannyOuzid), [Julie Souchet](https://github.com/SouchetJulie)

## Objectif
Convertir [un docker-compose](https://github.com/docker/awesome-compose/tree/master/nginx-golang-mysql) en manifests Kubernetes.

L'application initiale est composée de 3 services :
- un service web (Go)
- un service de base de données (MariaDB)
- un service de proxy (Nginx)

## Script

### Build et apply

Pour build et apply utiliser le script bash build.sh
```
sh build.sh
```

### Clean 

Pour clean les services, déploiements et pods utiliser le script bash clean.sh
```
sh clean.sh
```

### Proxy
Le proxy est accessible depuis l'extérieur et est configuré pour rediriger les requêtes vers le service web.

On le démarre avec la commande suivante :
```bash
kubectl apply -f manifests/proxy.yaml
```

Puis, on le rend accessible avec :
```bash
kubectl port-forward service/proxy 8080:80
```

On peut maintenant y accéder depuis [http://localhost:8080](http://localhost:8080).


## Nettoyage
Pour supprimer les ressources créées, on utilise la commande suivante :
```bash
kubectl delete -f manifests/
```
