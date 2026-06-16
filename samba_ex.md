# CONFIGURANDO SAMBA

##1. O cliente criou um usuário e senha e compatilho uma pasta na rede:
 -Clinete disse: 
   -smb://192.168.0.178/nome_da_pasta/
   -User: usuario_ex
   -Senha: XBp~senha-F4lsa

```bash
w3m 'smb://192.168.0.178/nome_da_pasta'                                       484  mount -t cifs //192.168.0.178/nome_da_pasta -o username='usuarios_ex',password=XBp~senha-F4lsa' /mnt/backup/
mount -t cifs //192.168.0.178/nome_da_pasta -o username='usuario_ex',password='XBp~senha-F4lsa' /mnt/backup/                                                        486  cd backup/
l
> a
sudo vim /etc/rc.local
cat /etc/rc.local
sudo vim /etc/rc.local
sudo vim /etc/rc.local
cat /etc/rc.local
cat /etc/fstab    
umount /mnt/backup
mount /mnt/backup/
cd /mnt/backup/
l
cd ..
```

