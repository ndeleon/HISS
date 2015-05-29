class Htmelement {
  String htmlType;
  ArrayList<Htmelement> children;
  
  Htmelement(String ht){
    htmlType = ht;
  }
  
  void addChildren(ArrayList<Htmelement> addedChild) {
    for (int j = 0; j < children.size() ; j++) {
      //htmlType = addedChild.get(j);
    }
  }
  
  String toString() {
    String hmatch;
    
    if (htmlType.equals("text")) {
      hmatch = "p";
      return "<" + hmatch + ">";
    } else if (htmlType.equals("oList")) {
      hmatch = "ol";
      return "<" + hmatch + ">";
    } else if (htmlType.equals("uList")) {
      hmatch = "ul";
      return "<" + hmatch + ">";
    }
    return "not a valid tag";
  }
}
