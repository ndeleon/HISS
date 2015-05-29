class Elem {
  ArrayList<StyleParam> sp;
  String elemType;
  Elem(String et){
    sp = new ArrayList<StyleParam>();
    elemType = et;
  }
  
  void addStyleParam(StyleParam a) {
    sp.add(a);
  }
  
  String toString() {
    String ematch;
    if (elemType.equals("text")) {
      ematch = "p";
      return ematch + " {";
    } else if (elemType.equals("list")) {
      ematch = "ol";
      return ematch + " {";
    }
    return "cannot be found";
  }
  
}
