FROM httpd:latest

ADD  error /usr/local/apache2/htdocs/error

RUN rm -f /usr/local/apache2/htdocs/index.html && \
    ln -s /usr/local/apache2/htdocs/error/404/matrix/index.html /usr/local/apache2/htdocs/index.html && \
    ln -s /usr/local/apache2/htdocs/error/404/matrix/style.css /usr/local/apache2/htdocs/style.css