 ### 값 증가시키기
var gemCounter = /*#-editable-code yourFuncName*/0/*#-end-editable-code*/
//#-editable-code

for i in 1 ... 3 {
    
    while !isBlocked {
        moveForward()
        if isOnGem {
            collectGem()
            gemCounter = gemCounter + 1
            
        }
        
    }
    turnRight()
    
}