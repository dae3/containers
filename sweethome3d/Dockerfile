FROM openjdk:10.0.2-13-jre-sid

WORKDIR /
RUN curl -sL https://sourceforge.net/projects/sweethome3d/files/SweetHome3D/SweetHome3D-5.7/SweetHome3D-5.7-linux-x64.tgz/download | tar zxf -

VOLUME /home
RUN useradd sh3d -d /home -M -N -u 1000
USER sh3d

VOLUME /data

CMD /SweetHome3D-5.7/SweetHome3D
