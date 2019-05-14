FROM node:10-alpine
RUN adduser -h /home/aus -s /bin/bash aus; \
    chown -R aus /home/aus
USER aus
WORKDIR /home/aus
COPY --chown=aus . /home/aus
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "start:prod"]