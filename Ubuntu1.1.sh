dotnet publish -c release
cd /var/lib/jenkins/workspace/dotnetubuntu1.1/bin/Release/netcoreapp3.1/publish/
rm -rf /var/www/dotnetubuntu1.1.com
mkdir -p /var/www/dotnetubuntu1.1.com
cp -R * /var/www/dotnetubuntu1.1.com
chmod -R 775 /var/www/dotnetubuntu1.1.com
cp -r /var/lib/jenkins/workspace/dotnetubuntu1.1/UbuntuScript1.1/dotnetubuntu1.1.conf  /etc/apache2/sites-enabled/
cp -r /var/lib/jenkins/workspace/dotnetubuntu1.1/UbuntuScript1.1/dotnetubuntu1.1.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start dotnetubuntu1.1.service