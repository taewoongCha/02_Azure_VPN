#! /bin/bash
setenforce 0
grubby --update-kernel ALL --args selinux=0
echo -n '-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAxrOXFXMl5kGW0gVZLAVFYntU/+bvP2y9CzzQOfUh4qajpGKM
9xbYlNM6jzVZ0KIiMo1mS5qsDIXverlh7FxgXrr/bL6k/UfYAc8a3ez1Po0GaWse
lKjctZBMepyhbYmzZdFxkN3WTUilmw03pAQs8UF9AC/z/rFJ+P0sbbpY9YYMKKW2
ooQrn2Xi6noUzo8dvVmwFhluQmNFnwZ+C8ateybvaAvK8revDpr18zzEN6NJkOyh
fQJIpSnI05Y5Dm+CZfLlhcaAfBZjShBkBIy4wLIexr94WwfiAZTPaEKdIaK25pyH
UlCAOBrtkYzdTGuRZ0eFjpPokeoXOOrqU++d/QIDAQABAoIBABm2qemTsibe/AaH
vKduszDwZuqK1xEtIDWxE/08FLuA9xJR0o4zPancv+pCbDIMmUJTfBZymKsyNfB6
xwpQVgRMTLuk3DMOtgxd4cswW/hRRbAktZtlUtKILu17EYTcWgPmG700iAQOT6gG
CNpH1A0QfX2ltvyRstHu6W31vIdhK/JYxDSpQuu0+dmj/q1xeGxr1hLX4Xj/ZuDC
28Uxf8+4oDpePJM7yBDD4KuhaSG1Ooi+vyO+Zar4QcOSAL3UpSmNaf+4O8dfcMJi
y2R/rjzehMVM5kbAxdBP11eBul4XVtMFWsi3a/ySEsX/pzmjcc1x3NhNbSWgtcoM
J7zmZd0CgYEA8h3HzwkYXrG59steP+VSflPat+JRIvxvbPAJ93YgdBfyeDxvMub0
NyihPDib32mISg4kx/6NtVsFO+wXgAgzfGp+f47cH3bmTZpuq58Ju61jfQYD9t/o
3bPLYRsS/Br0H44zKT3KCATMWoLY48h1yNzJ5NZ6qYCyOvpNaPQwyesCgYEA0hh9
LMVL0SAGAhPicK7qKTXfH9hSpzDL6k6F0mC6BoTZIHqXlbzZUDf1whMwbmKis/0N
VtaE9BUMpt5i2jumhEVUmMMUpz4j+fs6jeMUXjmHZAed96LQJ/rortOonWEQqkpu
M/hECoIHJWSJYHAbtnajl4myJo4oomrO1Za9FbcCgYEA584vcT9J/8+1Nl57fD14
/84VCB08hXyeyfP/9tc4Ny5+TTO/W0LX6r+Rr3CbfAk0HYLxIDHNRydAGaDu1vwD
H0lul34VrmJOGVqUPuhjjzZwnFDYFtNFxo3PWMdtI8ZCmLuyq/emqIq/hKDmOx+/
9XG+MsROaF75RZJD7wpsc8UCgYEA0Dk3Ln0oBE7BxaNhhJ7HMyrSReSHHm7tWv6S
AQyeskFOVLNLszslAi1EJCISmQSnDs4ZP1yDDsoh7OxxeqsuAOAZ1QFbYdnjnClT
QjayBCTuO8SU2k8CEO3LWSIrdjcyZiQ4jsda4DM40+WNhgf2X2O8BT+SUkYIndhP
wD6SjocCgYBS9blWAPU7OhN5b3lV7xEsGaEGcCCSidvSLwBUNxyO3t/2gXUl7e96
TySbs27tUJuGwXk7YkINhMTcuJ6d1hCB3LVNiIhqX5uNLwJfltS9j8QMDqftZkni
w7+snT55M1akBidVc2Byv7GUYa/0jh3M64jzJvMla6XDbKbs00sHsg==
-----END RSA PRIVATE KEY-----' > /home/team4/.ssh/id_rsa
chmod 600 /home/team4/.ssh/id_rsa
chown team4:team4 /home/team4/.ssh/id_rsa
