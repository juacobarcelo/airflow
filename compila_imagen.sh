# docker build . -f Dockerfile.ci \
#   --build-arg PYTHON_BASE_IMAGE="python:3.7-slim-buster" \
#   --build-arg PYTHON_MAJOR_MINOR_VERSION=3.7 \
#   --build-arg AIRFLOW_INSTALLATION_METHOD="apache-airflow" \
#   --build-arg AIRFLOW_CONSTRAINTS_REFERENCE="constraints-1-10" \
#   --build-arg AIRFLOW_VERSION="1.10.15" \
#   --build-arg AIRFLOW_INSTALL_VERSION="==1.10.15" \
#   --build-arg AIRFLOW_SOURCES_FROM="empty" \
#   --build-arg AIRFLOW_SOURCES_TO="/empty" \
#   --build-arg AIRFLOW_EXTRAS="gcp" \
#   --build-arg AIRFLOW_EXTRAS="postgres" \
#   --build-arg AIRFLOW_EXTRAS="kubernetes" \
#   --tag 1.10.15-gcp-postgres-kubernetes

./breeze build-image \ 
      --python 3.8 \
      --extras "gcp, postgres,kubernetes" \
      --install-airflow-version=1.10.15 \
      --production-image \
      --disable-mysql-client-installation  

