// Add your code below:
class Node {
    private var value : String
    private var childLeft : Node? = nil
    private var childRight : Node? = nil

    //goes here when no parameter supplied
    init() {
        self.value = ""
    }

    // goes here when string is a value
    init(value: String) {
        self.value = value
    }
    
    func add(leftChild:Node?) {
        childLeft = leftChild
    }

    func add(rightChild:Node?) {
        childRight = rightChild
    }

    func preorder() -> [Node]{
        var nodes = [Node]()
        //makes itself new root
        nodes.append(self)
        //recursively create new arrays for new "roots"
        if (childLeft != nil) {nodes += childLeft!.preorder()}
        if (childRight != nil) {nodes += childRight!.preorder()}               
        return nodes
    }

    func postorder() -> [Node]{
        var nodes = [Node]()
        if (childLeft != nil) {nodes += childLeft!.postorder()}
        if (childRight != nil) {nodes += childRight!.postorder()}
        nodes.append(self)
        return nodes
        
    }

    func inorder() -> [Node]{
        var nodes = [Node]()
        if (childLeft != nil) {nodes += childLeft!.inorder()}
        nodes.append(self)
        if (childRight != nil) {nodes += childRight!.inorder()}
        return nodes
    }

    //root left right left right

    func depthorder() -> [Node] {
        let treeHeight = height(node: self)
        guard treeHeight > 0 else {
            return [Node]()
        }
        var nodeList = [Node]()
        for level in 1 ... treeHeight {
            nodeList.append(contentsOf: depthOrderLevel(node:self, level:level))
        }
        return nodeList
    }


    func height(node: Node?) -> Int {
        if let node = node {
            let leftHeight = height(node: node.childLeft)
            let rightHeight = height(node: node.childRight)

            let maximumHeight = max(leftHeight, rightHeight)
            return maximumHeight + 1
        } else {
            return 0
        }
    }

    func depthOrderLevel(node: Node?, level: Int) -> [Node] {
        var orderedArray = [Node]()
        if let node = node{
            if level == 1 {
                return [node]
            }
            orderedArray.append(contentsOf: depthOrderLevel(node: node.childLeft, level: level - 1))
            orderedArray.append(contentsOf: depthOrderLevel(node: node.childRight, level: level - 1))
        } else {
            return[]
        }
        return orderedArray
    }    
    
    static func nodeValues(_ nodes:[Node]) -> [String] {        
        return nodes.map{$0.value}
    }
}



// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let C = Node(value:"root")
let values = Node.nodeValues(C.depthorder())
for value in values {
	print(value)
}
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧