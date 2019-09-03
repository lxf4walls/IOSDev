import Cocoa

//扑克初始化
struct poker {
    var suit: String
    var number: String
}

var Poker = [poker]()
for i in 1...10{
    Poker.append(poker(suit: "Heart",number: String(i)))
}
Poker.append(poker(suit: "Heart",number: "J"))
Poker.append(poker(suit: "Heart",number: "Q"))
Poker.append(poker(suit: "Heart",number: "K"))
for i in 1...10{
    Poker.append(poker(suit: "Spade",number: String(i)))
}
Poker.append(poker(suit: "Spade",number: "J"))
Poker.append(poker(suit: "Spade",number: "Q"))
Poker.append(poker(suit: "Spade",number: "K"))
for i in 1...10{
    Poker.append(poker(suit: "Diamond",number: String(i)))
}
Poker.append(poker(suit: "Diamond",number: "J"))
Poker.append(poker(suit: "Diamond",number: "Q"))
Poker.append(poker(suit: "Diamond",number: "K"))
for i in 1...10{
    Poker.append(poker(suit: "Club",number: String(i)))
}
Poker.append(poker(suit: "Club",number: "J"))
Poker.append(poker(suit: "Club",number: "Q"))
Poker.append(poker(suit: "Club",number: "K"))

Poker.append(poker(suit: "Joker",number: "B"))
Poker.append(poker(suit: "Joker",number: "R"))



//人数，发牌
var Person = 4 //默认4人，可修改
var PN = 13 //默认13张，可修改
if Person * PN > Poker.count{
    print("Error")
    exit(0)
}
var PPoker = [poker]()
var Haved = 0
while Haved != 54{
    let i = Int(arc4random())%(54 - Haved)
    PPoker.append(Poker[i])
    Haved += 1
    Poker.remove(at: i)
}

var Find = 0
var All = Person * PN - 1
while Find < All{
    if Find % PN == 0{
        print("\(Find/PN + 1):")
    }
    print(PPoker[Find])
    Find += 1
}


//固定四人，分数组保存
/*
for i in 0...51{
    print("Suit:\(Poker[i].suit),Number:\(Poker[i].number)")
}
*/

 
/*
var A = [poker]()
var B = [poker]()
var C = [poker]()
var D = [poker]()
var Haved = 0
while Haved != 52{
    let i = Int(arc4random())%(52 - Haved)
    if Haved < 13{
        A.append(Poker[i])
    }
    else if Haved < 26{
        B.append(Poker[i])
    }
    else if Haved < 39{
        C.append(Poker[i])
    }
    else{
        D.append(Poker[i])
    }
    Haved += 1
    Poker.remove(at: i)
}
print("A")
for i in A{
    print(i)
}
print("B")
for i in B{
    print(i)
}
print("C")
for i in C{
    print(i)
}
print("D")
for i in D{
    print(i)
}

*/
