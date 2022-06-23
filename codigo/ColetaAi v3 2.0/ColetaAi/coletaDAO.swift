import Foundation

class Coleta {
    
    var distancia: Float
    
    
    init(json: [String: AnyObject]) {
        self.distancia = json["distancia"] as? Float ?? 0.0
        
    }
}


class ColetaDAO {
    
    static func getColeta (callback: @escaping ((Coleta) -> Void)) {
        
        let endpoint: String = "https://rasptest.mybluemix.net/listar"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        
                        let coleta = Coleta(json: json[0])
                        
                        let distanciaColeta = coleta.distancia
                        
                        print("\(distanciaColeta) tem \(coleta.distancia) dados.")
                        
                        callback(coleta)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }
    
    
}
