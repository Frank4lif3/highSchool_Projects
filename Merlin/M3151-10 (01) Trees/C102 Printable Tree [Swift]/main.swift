
// Add your code below:
import Foundation

class Node : CustomStringConvertible {

    var value: String
    var children: [Node]

    init() {
        self.value = ""
        self.children = [Node]()
    }

    init(value: String) {
        self.value = value
        self.children = [Node]()
    }



    public var description : String {
        var ret : String

        if children.count <= 0 {
            ret = "\(value)"
        } else {
            let ret2 = "\(value)\(children)"
            let ret3 = ret2.replacingOccurrences(of: "[", with: "{")
            ret = ret3.replacingOccurrences(of: "]", with: "}")
        }
        return ret
    } 
}

// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================

// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧