import UIKit

class DatesTask {
    
    private let key = "KeyTarefas"
    private var listTask: Array<String> = []
    
    func salve(task: String){
        
    //recuperar tarefas já salvas
    listTask = listar() 
        
    //salvar tarefas
        listTask.append(task)
        UserDefaults.standard.set(task, forKey: "key")
        
    }
    
    func listar() -> Array<String>{
        let dates = UserDefaults.standard.object(forKey: "key")
     
        if dates != nil{
            return dates as! Array<String>
        }else {
            return []
        }
    }
    
    
}
