FROM google/dart
# uncomment next line to ensure latest Dart and root CA bundle
#RUN apt -y update && apt -y upgrade
WORKDIR /app
COPY pubspec.* .
RUN pub get
COPY . .
RUN pub get --offline
RUN dart2native /app/bin/server.dart -o /app/bin/server
FROM subfuzion/dart-scratch
COPY --from=0 /app/bin/server /app/bin/server
# COPY any other directories or files you may require at runtime, ex:
#COPY --from=0 /app/static/ /app/static/
EXPOSE 8000
ENTRYPOINT ["/app/bin/server"]