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

### 올바른 포털 설정하기
bluePortal.isActive = false
pinkPortal.isActive = false
var gamCounter = 0
moveForward()
moveForward()
moveForward()

bluePortal.isActive = true
pinkPortal.isActive = true
while gamCounter < 4  {
    moveForward()
    if isOnGem {
        collectGem()
        gamCounter = gamCounter+1
    }
    if isBlocked {
        turnRight()
        turnRight()
        
    }
    if gamCounter == 3 {
        bluePortal.isActive = false
    }
    }
    
    