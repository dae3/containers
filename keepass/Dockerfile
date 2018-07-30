FROM mono:5

RUN apt-get update && apt-get install -y unzip xdotool

WORKDIR /keepass
RUN curl -L "https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.39.1/KeePass-2.39.1.zip/download?use_mirror=jaist&r=https%3A%2F%2Fkeepass.info%2Fdownload.html&use_mirror=jaist" > KeePass-2.39.1.zip && unzip KeePass-2.39.1.zip && rm -f KeePass-2.39.1.zip

# Sadly neither KeeCloud and KeeAnywhere work on mono 
#WORKDIR /keepass/Plugins
#RUN curl -LO https://bitbucket.org/devinmartin/keecloud/downloads/KeeCloud.1.2.1.11.plgx

VOLUME ["/config", "/data"]

USER kpuser

CMD ["mono", "/keepass/KeePass.exe", "-cfg-local:/config/keepass.localconfig.xml"]
