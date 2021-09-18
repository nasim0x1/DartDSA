class Node {
  var val;
  Node? next;
  Node({required this.val, this.next});
}

class LinkedList {
  Node? root;
  LinkedList(val) {
    this.root = Node(val: val);
  }

  // it will return total node in linkedlist
  int length() {
    int len = 0;
    if (root != null) {
      Node? curr_node = this.root;
      while (curr_node != null) {
        len += 1;
        curr_node = curr_node.next;
      }
    }
    return len;
  }

  void insertHead(val) {
    if (this.root == null) {
      this.root = Node(val: val);
    } else {
      Node? pre = this.root;
      this.root = Node(val: val);
      this.root!.next = pre;
    }
  }

  // it will inset node at last of linkedlist
  void inset(val) {
    if (this.root == null) {
      this.root = Node(val: val);
    } else {
      Node? curr_node = this.root;
      while (true) {
        if (curr_node!.next == null) {
          curr_node.next = Node(val: val);
          break;
        }
        curr_node = curr_node.next;
      }
    }
  }

  // It will delete last node of linkedlist
  void delete() {
    if (root == null) {
      print("Oops! Nothing exist to delete");
    } else {
      Node? privious_node;
      Node? curr_node = this.root;
      while (curr_node!.next != null) {
        privious_node = curr_node;
        curr_node = curr_node.next;
      }
      privious_node!.next = null;
    }
  }

  void deleteHead() {
    if (root == null) {
      print("Oops! Nothing exist to delete");
    } else {
      Node? new_root = this.root!.next;
      this.root = new_root;
    }
  }

  void view() {
    if (this.root == null) {
      print("Opps! LinkedList is empty!");
    } else {
      Node? curr_node = this.root;
      String data = "";
      while (curr_node != null) {
        data += curr_node.val.toString() + " -> ";
        curr_node = curr_node.next;
      }
      print(data);
    }
  }
}

main(List<String> args) {
  LinkedList linkedList = LinkedList(1);
  linkedList.view();
  linkedList.insertHead(0);
  linkedList.inset(2);
  linkedList.view();
  print("Current LinkedList Length is " + linkedList.length().toString());
  linkedList.deleteHead();
  linkedList.view();
}
