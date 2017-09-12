apt-add-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer
mkdir /opt/scala
wget http://downloads.lightbend.com/scala/2.12.1/scala-2.12.1.deb
dpkg -i scala-2.12.1.deb
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz
tar -xvf spark-2.0.2-bin-hadoop2.7.tgz
cp -rv spark-2.0.2-bin-hadoop2.7/* /opt/spark
cd /opt/spark
#./bin/spark-shell --master local[2]
