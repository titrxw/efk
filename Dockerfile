FROM fluent/fluentd
ADD fluent.conf /etc/fluent/
RUN echo "source 'https://mirrors.tuna.tsinghua.edu.cn/rubygems/'" > Gemfile && gem install bundler
RUN gem install fluent-plugin-elasticsearch --no-document
CMD ["fluentd"]