FROM dala00/chromium-xvfb-angular-cli


RUN apt-get update && apt-get install -y default-jre
RUN export DISPLAY=:1
RUN Xvfb $DISPLAY -ac -screen 0 1280x1024x8 &
RUN xvfb-run webdriver-manager start &
WORKDIR /usr/src/app
