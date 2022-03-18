## EC2 Access Using SSH

* Create an EC2 instance using AWS Management Console or AWS CLI
* Save the <code>.pem</code> keypair on your local PC
  
### SSH From Your PC to the EC2 instance:

```
$ ssh -i "file.pem" ec2-user@hostname
```

### Copy Files From Your PC to EC2 using SCP:

```
scp -i file.pem anyfile.anything ec2-user@hostname:~
```

### Demo: Update EC2 userdata using SCP
* Given we are using the following script in EC2 userdata field
```
#!/bin/bash
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
```

* Given index.html (new version) is a file we want to send to EC2 from our local PC
* And we want to save index.html in /var/www/html folder on EC2
* Then the new index.html will overwrite the existing index.html 
```
scp -i file.pem index.html ec2-user@hostname:~
ssh -i "file.pem" ec2-user@hostname
sudo cp index.html /var/www/html/index.html
```
