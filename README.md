# terraform-devops-path
Konieczne jest, edytowanie pliku resources/main.tf

W polu project, nalezy wpisac swoje nazwisko bez polskich znaków.

W polach adresów IP nalezy zmienic drugi oktet (częśc po kropce) np. 172.xxx.0.0/16


ID obrazów (ami-id)

us-east-1 / ami-0557a15b87f6559cf
us-east-2 / ami-00eeedc4036573771
us-west-1 / ami-0d50e5e845c552faf
us-west-2 / ami-0735c191cf914754d

W polu key_name wpisujemy nazwę swojego klucza ssh (domyślnie jest to inicjał imienia i nazwisko - jgolab)

-----------------------------------------
po sklonowaniu repozytorium przechodzimy do katalogu resources

 cd resources  

 Potem inicjalizujemy terraform

 terraform init

 Następnie

 terraform apply

 potwierdzamy plan wpisując 

 yes
