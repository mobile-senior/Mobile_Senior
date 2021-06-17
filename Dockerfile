FROM ruby:2.7.0

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://nsolid-deb.nodesource.com/nsolid_setup_4.x | bash -

# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nsolid-fermium nsolid-console build-essential libpq-dev imagemagick git-all nano vim \
libmagickcore-dev libmagickwand-dev


# Seta nosso path
ENV INSTALL_PATH /app

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH

# Seta as permissões da pasta
RUN chmod -R 777 $INSTALL_PATH

# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

# Seta o path para as Gems
ENV BUNDLE_PATH /gems

# Copia nosso código para dentro do container
COPY . .
