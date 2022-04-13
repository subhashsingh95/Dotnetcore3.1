pwd
whoami
sonar-scanner \
  -Dsonar.projectKey=dotnetubuntu1 \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://172.16.2.175:9000 \
  -Dsonar.login=6624e5a16e7dafdf0968bc368fc0dca6426fde4e
  
dotnet publish -c release
cd /var/lib/jenkins/workspace/dotnetUbuntu1/bin/Release/netcoreapp3.1/publish/
rm -rf /var/www/dotnetubuntu1.com
mkdir -p /var/www/dotnetubuntu1.com
cp -R * /var/www/dotnetubuntu1.com
chmod -R 775 /var/www/dotnetubuntu1.com
cp -r /var/lib/jenkins/workspace/dotnetUbuntu1/UbuntuScript/dotnetubuntu1.conf  /etc/apache2/sites-enabled/
cp -r /var/lib/jenkins/workspace/dotnetUbuntu1/UbuntuScript/dotnetubuntu1.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start dotnetubuntu1.service


