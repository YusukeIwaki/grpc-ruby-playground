# using skelton: https://github.com/grpc/grpc/blob/master/examples/ruby/greeter_client.rb

this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'health_check_services_pb'

def main
  stub = HealthCheck::Stub.new('localhost:50051', :this_channel_is_insecure)
  message = stub.ping(PingRequest.new)
  p "Greeting: #{message.inspect}"
end

main
