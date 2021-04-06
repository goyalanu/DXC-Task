class Node {
    constructor(country) {
    this.country = country;
    this.right = null;
    this.left = null;
    this.count = 0;
    };
};
class BST {
    constructor() {
    this.root = null;
    }
    create(country) {
    const newNode = new Node(country);
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
        if (country === current.country) {
        current.count++;
        return this;
        };
        if (country < current.country) addSide('left');
        else addSide('right');
    };
    };
};
function find(country) {
    if (!this.root) return undefined;
    let current = this.root,
        found = false;
    while (current && !found) {
    if (country < current.country) current = current.left;
    else if (country > current.country) current = current.right;
    else found = true;
    };
    if (!found) return 'Nothing Found!';
    return current;
};
function adelete(country) {
    if (!this.root) return undefined;
    let current = this.root,
        parent;
    const pickSide = side => {
    if (!current[side]) return 'No node found!';
        parent = current;
        current = current[side];
    };
    const deleteNode = side => {
        if (current.country === country && current.count > 1) current.count--;
        else if (current.country === country) {
        const children = this.BFS(current.country);
        parent[side] = null;
        children.splice(0, 1);
        children.forEach(child => this.create(child));
        };
    };
    while (current.country !== country) {
        if (country < current.country) {
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