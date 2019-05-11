FROM python:3.7-slim

LABEL "maintainer"="Maxence Maireaux <maxence@maireaux.fr>"
LABEL "repository"="https://github.com/flemzord/ansibe-galaxy-actions"
LABEL "homepage"="https://github.com/flemzord/ansibe-galaxy-actions"

LABEL "com.github.actions.name"="ansible-galaxy"
LABEL "com.github.actions.description"="Run Ansible Galaxy"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="gray-dark"

RUN pip install ansible

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
