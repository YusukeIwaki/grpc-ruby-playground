# grpc-ruby-playground

```
$ bundle install
$ bundle exec grpc_tools_ruby_protoc --ruby_out=lib --grpc_out=lib ./health_check.proto
```

and then

```
$ bundle exec ruby server.rb
```

```
$ bundle exec ruby client.rb
"Greeting: <PingResult: now: 1552557458>"
```

:)