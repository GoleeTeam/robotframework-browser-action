FROM ghcr.io/marketsquare/robotframework-browser/rfbrowser-stable:v8.0.2

WORKDIR /home/pwuser

# Introduced to keep compatibility with ppodgorsek/docker-robot-framework
ENV ROBOT_REPORTS_DIR /home/pwuser/reports
ENV ROBOT_TESTS_DIR /home/pwuser/tests
RUN mkdir -p $ROBOT_REPORTS_DIR && mkdir -p $ROBOT_TESTS_DIR

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.sh .
CMD ["/bin/sh", "entrypoint.sh"]