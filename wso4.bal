import ballerina.lang.messages;
import ballerina.net.http;
import org.wso2.ballerina.connectors.facebook;

@http:BasePath {value:"/hello"}
service WSO4 {
    
    @http:GET{}
    @http:Path {value:"/"}
    resource sayHello (message m) {
        message response = {};
        messages:setStringPayload(response, "Hello, World!");
        reply response;
    
    }
    
}
