From jenkins/jenkins:lts
ARG user=jenkins
USER root
RUN  apt-get update && apt-get install -y apt-utils curl nano wget
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs
RUN cd /var/jenkins_home/
RUN wget http://redrockdigimark.com/apachemirror//jmeter/binaries/apache-jmeter-4.0.tgz
RUN tar -xf apache-jmeter-4.0.tgz
# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

# install firefox
RUN apt-get update
RUN apt-get purge firefox
RUN apt-cache showpkg firefox
RUN apt-get install -y wget libfreetype6 libfontconfig1 libxrender1 libasound-dev libdbus-glib-1-dev libgtk2.0-0 libxt6 python-pip
RUN pip install selenium==2.48.0 robotframework==3.0 requests robotframework-requests robotframework-selenium2library==1.8.0 pymysql robotframework-databaselibrary
RUN pip install requests --upgrade
RUN wget https://ftp.mozilla.org/pub/firefox/releases/57.0/linux-x86_64/en-US/firefox-57.0.tar.bz2
RUN tar -xjf firefox-57.0.tar.bz2
RUN mv firefox /opt/firefox57
RUN ln -s /opt/firefox57/firefox /usr/bin/firefox
RUN ls /opt/firefox57
RUN firefox --version



# Download and install Gradle
RUN \
    cd /usr/local && \
    curl -L https://services.gradle.org/distributions/gradle-4.7-bin.zip -o gradle-4.7-bin.zip && \
    unzip gradle-4.7-bin.zip && \
    rm gradle-4.7-bin.zip

# Export some environment variables
ENV GRADLE_HOME=/usr/local/gradle-4.7
ENV PATH=$PATH:$GRADLE_HOME/bin JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

USER ${user}

