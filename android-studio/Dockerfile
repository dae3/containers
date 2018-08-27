FROM debian:jessie-slim

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -yq unzip curl xorg git kvm

WORKDIR /jdk
	# http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz
RUN curl http://javadl.oracle.com/webapps/download/AutoDL?BundleId=234464_96a7b8442fe848ef90c96a2fad6ed6d1 -Lo jdk.tar.gz && \
	tar zxf jdk.tar.gz && \
	rm jdk.tar.gz

WORKDIR /studio/
RUN curl https://dl.google.com/dl/android/studio/ide-zips/3.1.3.0/android-studio-ide-173.4819257-linux.zip \
	-Lo android-studio-ide-173.4819257-linux.zip && \
	unzip android-studio-ide-173.4819257-linux.zip && \
	rm android-studio-ide-173.4819257-linux.zip

# For Android emulator
RUN useradd -d /home -g kvm -u 1000 asuser

# For adb access to USB connected physical phone on host
#  udev rules on host give group ownership on phone
#  devices to adbusers 
RUN groupadd adbusers
VOLUME ["/projects","/sdk","/home","/keystore"]
RUN chmod 777 /home /sdk 

WORKDIR /studio/android-studio/bin
CMD ["sh","-c","./studio.sh"]
