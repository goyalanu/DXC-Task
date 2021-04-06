class Node 
{ 
    constructor(data) 
    { 
        this.data = data; 
        this.left = null; 
        this.right = null; 
    } 
}  
class BinarySearchTree 
{ 
	constructor() 
	{ 
		this.root = null; 
	} 
	insert(data) 
	remove(data) 
    BFS(node)
} 
insert(data) 
{ 
	var newNode = new Node(data);  
	if(this.root === null) 
		this.root = newNode; 
	else
		this.insertNode(this.root, newNode); 
} 
insertNode(node, newNode) 
{ 
	if(newNode.data < node.data) 
	{ 
		if(node.left === null) 
			node.left = newNode; 
		else
			this.insertNode(node.left, newNode); 
	} 
	else
	{ 
		if(node.right === null) 
			node.right = newNode; 
		else
			this.insertNode(node.right,newNode); 
	} 
}  
remove(data) 
{  
	this.root = this.removeNode(this.root, data); 
}  
removeNode(node, key) 
{ 
	if(node === null) 
		return null; 
	else if(key < node.data) 
	{ 
		node.left = this.removeNode(node.left, key); 
		return node; 
	}  
	else if(key > node.data) 
	{ 
		node.right = this.removeNode(node.right, key); 
		return node; 
	} 
	else
	{ 
		if(node.left === null && node.right === null) 
		{ 
			node = null; 
			return node; 
		} 
		if(node.left === null) 
		{ 
			node = node.right; 
			return node; 
		} 
		
		else if(node.right === null) 
		{ 
			node = node.left; 
			return node; 
		} 

		var aux = this.findMinNode(node.right); 
		node.data = aux.data; 

		node.right = this.removeNode(node.right, aux.data); 
		return node; 
	} 

} 

BFS(node) 
{
    let q = new Queue(this.nodes.length);
    let explored = new Set();
    q.enqueue(node);
 
    add(node);
 
    while (!q.isEmpty()) {
       let t = q.dequeue();
       console.log(t);
       this.edges[t]
       .filter(n => !explored.has(n))
       .forEach(n => {
          explored.add(n);
          q.enqueue(n);
       });
    }
 }
 let g = new Graph();
g.insertNode("India");
g.insertNode("Asia");
g.insertNode("America");
g.insertNode("china");
g.insertNode("russia");
g.insertNode("rome");
g.insertNode("Germany");

g.addEdge("India", "America");
g.addEdge("India", "Asia");
g.addEdge("India", "china");
g.addEdge("china", "russia");
g.addEdge("russia", "rome");
g.addEdge("Asia", "Germany");

g.BFS("India");