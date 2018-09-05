FROM docker.io/rails

RUN apt-get update -y 
RUN mkdir /app
ADD ./project_management_demo /app/project_management_demo
WORKDIR /app/project_management_demo
ENV DATABASE_HOST=mysql
ENV DATABASE_USERNAME=root
ENV DATABASE_PASSWORD=s3cr3t
ENV DATABASE_NAME=project_management
RUN bundle
EXPOSE 3000
RUN export DATABASE_HOST=mysql
CMD bash -C 'run.sh';'bash'

#CMD["DATABASE_HOST=mysql DATABASE_USERNAME=root DATABASE_PASSWORD=s3cr3t DATABASE_NAME=project_management rails s &"]
