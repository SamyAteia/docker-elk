ARG ELK_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

COPY config/sg/ config/sg/
COPY bin/ bin/

# Search Guard plugin
ARG ELK_VERSION
ARG SG_VERSION
RUN elasticsearch-plugin install --batch https://releases.floragunn.com/search-guard-7/${ELK_VERSION}-${SG_VERSION}/search-guard-7-${ELK_VERSION}-${SG_VERSION}.zip \
	&& chmod +x plugins/search-guard-7/tools/*.sh \
	&& chown -R elasticsearch config/sg/ \
	&& chmod -R go= config/sg/

# sgadmin and other third-party tools require a valid Java home
ENV JAVA_HOME /usr/share/elasticsearch/jdk

# Add NLP resources here
RUN mkdir -p /usr/share/elasticsearch/config/analysis
COPY /analysis/de_DR.xml /usr/share/elasticsearch/config/analysis/
COPY /analysis/dictionary-de.txt /usr/share/elasticsearch/config/analysis/

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install https://github.com/spinscale/elasticsearch-ingest-langdetect/releases/download/${ELK_VERSION}.1/ingest-langdetect-${ELK_VERSION}.1.zip
