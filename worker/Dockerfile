#Copy ruby image
from ruby:3.2.8

# Search for updates, install them without cmd confirmation
RUN apt update
RUN apt upgrade -y
RUN apt install lsb-base lsb-release

# PostgresSQL adapter.
# Create the repository configuration file:
RUN . /etc/os-release
RUN bash -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"

# Import the repository signing key:
RUN apt install curl ca-certificates

#Instead of doing this 2 lines down
#RUN install -d /usr/share/postgresql-common/pgdg
#RUN curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc

#Make this
# Cria repositório do PostgreSQL 16 com chave GPG moderna
RUN curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/pgdg.gpg \
 && echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" \
    > /etc/apt/sources.list.d/pgdg.list

# Update everything to reflect changes made and add lib, optionals + postgresql v16
RUN apt update \
    && apt install -y libpq-dev \
                      vim \
                      htop \
                      postgresql-16

# Install gem that is being used on gemfile
RUN gem install pg

# Create and set work directory (Entry point via cmd line)
ADD . /home/app/web
WORKDIR /home/app/web

# Bundle install with retries in case of eventual failure.
RUN bundle install --jobs 5 --retry 5

COPY ./worker/entrypoint.sh /home/app/web/worker/entrypoint.sh
RUN chmod +x /home/app/web/worker/entrypoint.sh

CMD bash /home/app/web/worker/entrypoint.sh