# Rendu cours Kubernetes, spé DevOps A5

## Membres du groupe
[Victor Cabot](https://github.com/Denporty), [Victor Gaubin](https://github.com/victorgbn), [Yanny Ouzid](https://github.com/YannyOuzid), [Julie Souchet](https://github.com/SouchetJulie)

## Objectif
Convertir [un docker-compose](https://github.com/docker/awesome-compose/tree/master/nginx-golang-mysql) en manifests Kubernetes.

L'application initiale est composée de 3 services :
- un service web (Go)
- un service de base de données (MySQL)
- un service de proxy (Nginx)

## Script

### Build et apply

Pour build et apply utiliser le script bash build.sh
```
sh build.sh
```

### Start

Pour start utiliser le script bash start.sh
```
sh start.sh
```

### Clean 

Pour tout nettoyer, utiliser le script bash clean.sh
```
sh clean.sh
```
