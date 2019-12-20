FROM jobscale/nginx:alpine
COPY . .
RUN rm -fr html && ln -sfn docs html
