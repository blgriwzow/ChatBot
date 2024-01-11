struct ConversationDelegate {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Why... hello... there!"
        } else if lowerQuestion.contains("sloth"){
            return "...hey..! That's... me..."
        }else if lowerQuestion == "where are the cookies?" {
            return "...in the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "...To the...\n ...North!"
        } else if lowerQuestion.contains("your name"){
            return "...my name? ...it's...\n Sloth...Bot"
        }else if lowerQuestion.contains("cheat"){
            return "... \n... \n...I'll never tell!"
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really... depends..."
            } else if defaultNumber == 1 {
                return "I think so... yes..."
            } else {
                return "Ask me again... \n...tomorrow..."
            }
        }
    }
    
}
