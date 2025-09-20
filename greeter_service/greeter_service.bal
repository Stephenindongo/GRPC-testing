import ballerina/grpc;

listener grpc:Listener grpcListener = new (9090);

@grpc:Descriptor {value: HELLOWORLD_DESC}
service "Greeter" on grpcListener {

    remote function sayHello(HelloRequest value) returns HelloReply|error {
        return {message: "Hello " + value.name};
    }
}