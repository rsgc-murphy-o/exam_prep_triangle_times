import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var Angle1 : Int = Int.max
var Angle2 : Int = Int.max
var Angle3 : Int = Int.max

// Loop until valid input is received
while Angle1 == Int.max {
    
    // Show the prompt
    print("Angle 1? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        //check if a number was inputted
        if let inputAsInt = Int(notNilInput) {
            
            //make sure its within range
            if inputAsInt >= 1 && inputAsInt <= 178 {
                
                //change the angle variable
                Angle1 = inputAsInt
            }
        }
        
    }
    
}

while Angle2 == Int.max {
    
    // Show the prompt
    print("Angle 2? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInt = Int(notNilInput) {
            if inputAsInt >= 1 && inputAsInt <= 178 {
                Angle2 = inputAsInt
            }
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        
    }
    
}



// this function takes three parameters (the three angles) and checks what type of triangle they are
//function name  parameter 1  parameter 2  parameter3      output
func angleCheck(angle1: Int , angle2: Int, angle3: Int) -> String {
    
    //if else ladder to check what type of triangle it is
    if angle1 + angle2 + angle3 != 180 {
        //what it returns is what it will say in the output... when it returns it ends the fucnction
        return("ERROR")
    } else if angle1 == angle2 && angle2 == angle3{
        return("e")
    } else if (angle1 == angle2 || angle2 == angle3 || angle1 == angle3){
        return("i")
    } else{
        return("s")
    }
    
}


//prints what the function retunrs
print(angleCheck(angle1: Angle1, angle2: Angle2, angle3: Angle3))


//func input(prompt: String)->Int{
//    while Int.max == Int.max {
//        
//        // Show the prompt
//        print("Angle 1? ", terminator: "")
//        
//        // Get the user's input
//        var input : String?
//        input = readLine()
//        
//        // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
//        if let notNilInput = input {
//            
//            //check if a number was inputted
//            if let inputAsInt = Int(notNilInput) {
//                
//                //make sure its within range
//                if inputAsInt >= 1 && inputAsInt <= 178 {
//                    
//                    //change the angle variable
//                    return inputAsInt
//                }
//            }
//        }
//        
//        
//        var Angle1 : Int = input(prompt: "Angle 1? ")
//        var Angle2 : Int = input(prompt: "Angle 2? ")
//        var Angle3 : Int = input(prompt: "Angle 3? ")
