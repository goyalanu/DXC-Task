class Node {
    constructor(val) {
    this.val = val;
    this.right = null;
    this.left = null;
    this.count = 0;
    };
};
class BST {
    constructor() {
    this.root = null;
    }
    create(val) {
    const newNode = new Node(val);
    if (!this.root) {
        this.root = newNode;
        return this;
    };
    let current = this.root;
const addSide = side => {
        if (!current[side]) {
        current[side] = newNode;
        return this;
        };
        current = current[side];
};
while (true) {
        if (val === current.val) {
        current.count++;
        return this;
        };
        if (val < current.val) addSide('left');
        else addSide('right');
    };
    };
};
function find(val) {
    if (!this.root) return undefined;
    let current = this.root,
        found = false;
    while (current && !found) {
    if (val < current.val) current = current.left;
    else if (val > current.val) current = current.right;
    else found = true;
    };
    if (!found) return 'Nothing Found!';
    return current;
};
function adelete(val) {
    if (!this.root) return undefined;
    let current = this.root,
        parent;
  
    const pickSide = side => {
      if (!current[side]) return 'No node found!';
  
      parent = current;
      current = current[side];
    };
  
    const deleteNode = side => {
      if (current.val === val && current.count > 1) current.count--;
      else if (current.val === val) {
        const children = this.BFS(current.val);
        parent[side] = null;
        children.splice(0, 1);
        children.forEach(child => this.create(child));
      };
    };
  
    while (current.val !== val) {
        if (val < current.val) {
            pickSide('left');
            deleteNode('left');
        };
        else {
        pickSide('right');
        deleteNode('right');
    };
    };
    return current;
}
let tree = new BST();
tree.add(10);
tree.add(4);
tree.add(4);
tree.add(12);
tree.add(2);
console.log(tree);