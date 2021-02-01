import Foundation
import Network

class Requester {
    public var running = true
    private var host:NWEndpoint.Host
    private var port:NWEndpoint.Port
    private var parameter: NWParameters
    private var header = """
    GET / HTTP/1.1
    Host: www.khan.co.kr
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    init(host:NWEndpoint.Host, port:NWEndpoint.Port, parameter: NWParameters) {
        self.host = host
        self.port = port
        self.parameter = parameter
//        self.header = self.createHeader(host)
    }

//    func createHeader(_ host : NWEndpoint.Host)->String{
//        var url = host.debugDescription
//    }
    func startConnection() {
        let connection = NWConnection(host: host, port: port, using: parameter)
        connection.stateUpdateHandler = { state in
            switch state {
            case .ready:
                print(self.host.debugDescription)
                print("🙌 Connection is success!")
                self.sendMessage(connection)
            case .waiting(let error):
                print("Connection is waiting")
                print(error)
            case .failed(let error):
                print("Connection is failed")
                print(error)
            default:
                print("Connection is \(connection.state)")
                break
            }
        }
        connection.start(queue: DispatchQueue.global())
    }

    func sendMessage(_ connection: NWConnection) {
        let data = header.appending("\n\n").replacingOccurrences(of: "\n", with: "\r\n").data(using: .utf8)
        let completion = NWConnection.SendCompletion.contentProcessed { (error: NWError?) in
        }
        connection.send(content: data, completion: completion)
        self.receiveMessage(connection)
    }
    
    
    func receiveMessage(_ connection: NWConnection){
        print("Receiving Data....Wait a minute🙏")
        connection.receiveMessage(completion: {data, context, bool, error in
            if let data = data {
                print("\n\n", String(data: data, encoding: .utf8)! )
            } else { print("Error:", error!) }
        })
    }
}
