class Node {
  var val = null;
  Node? left;
  Node? right;
  Node(this.val);

  @override
  String toString() {
    return this.val.toString();
  }
}

inOrder(root) {
  if (root != null) {
    inOrder(root.left);
    print(root);
    inOrder(root.right);
  }
}

preOrder(root) {
  if (root != null) {
    print(root);
    preOrder(root.left);
    preOrder(root.right);
  }
}

postOrder(root) {
  if (root != null) {
    postOrder(root.left);
    postOrder(root.right);
    print(root);
  }
}

main() {
  var root = Node(0);

  root.left = Node(1);
  root.right = Node(2);

  root.left!.left = Node(3);
  root.left!.right = Node(4);

  root.right!.left = Node(5);
  root.right!.right = Node(6);

  // inOrder(root);
  // preOrder(root);
  postOrder(root);
}
