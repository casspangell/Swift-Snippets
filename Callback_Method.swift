    
    //Method Definition
    typealias CompletionHandler = (_ callbackData:String) -> Void
    func myCompletionFunction(completionHandler: CompletionHandler) {
      //do stuff
      
      let doneString = "Done"
      completionHandler(_: doneString)
    }
       

   //How to Use
     myCompletionFunction( completionHandler: { (callbackData) -> Void in
          //Do stuff
     })
