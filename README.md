## Ansible with Docker/Vagrant

### Upping Container

```
cp ~/.ssh/id_rsa.pub ./authorized_keys

docker-compose up -d 
```

### Upping VMs

```
vagrant up
```

replace this output without '/16' in ansible/hosts
```
docker inspect ansiblevagrantdocker_foss --format='{{range .Containers}}{{println .IPv4Address}}{{end}}'
```

to use ad hoc commands ```cd ansible``` and

```
ansible all -a 'uname -a'
ansible docker -a 'uname -a'
ansible vm -a 'uname -a'
```
