FROM nginx:alpine
COPY nginx.conf /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY *.jpg /usr/share/nginx/html/images/
RUN mkdir -p /usr/share/nginx/html/images/ig && cd /usr/share/nginx/html/images && for f in [0-9]*.jpg; do mv "$f" ig/; done
ENV PORT=80
