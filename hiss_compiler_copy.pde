String[] lines;
ArrayList<Elem> allStyleElems;

void setup() {
  lines = loadStrings("template.hiss");
  String allCodeInOneLine = join(lines, "");
  String[] styleCode = splitTokens(allCodeInOneLine, "%");
  String allStyle = styleCode[0].substring(0, styleCode[0].length() - 1);
  
  allStyleElems = new ArrayList<Elem>();
  
  String[] elements = splitTokens(allStyle, "{}");
  for (int i = 0; i < elements.length; i+=2) {
    Elem x = new Elem(elements[i]);
    String styleParamStringsForThisElement = elements[i+1];
    String[] params = splitTokens(styleParamStringsForThisElement, ";");
    for (int j = 0; j < params.length; j++) {
      StyleParam y = new StyleParam(params[j]);
      x.addStyleParam(y);
    }
    allStyleElems.add(x);
  }
  String allCSS = "<!DOCTYPE html><html><head><style>";
  
  String[] generatedCode = new String[1];
  for (int d = 0; d < allStyleElems.size(); d++) {
    allCSS = allCSS + "\n " + allStyleElems.get(d).toString() + "\n ";
    for (int c = 0; c < allStyleElems.get(d).sp.size(); c++) {
      allCSS = allCSS + "\n " + allStyleElems.get(d).sp.get(c).toString() + "\n ";
    }
    allCSS = allCSS + "}";
  }
  allCSS = allCSS + "</style></head>";
  allCSS = allCSS + "<body><ol><li>hello</li></ol></body>";
  generatedCode[0] = allCSS;
  saveStrings("data/output.html", generatedCode);
}
 
 
String[] parseStyleParams(String commaSeparatedInputs) {
 return split(commaSeparatedInputs, ",");
} 

void draw() {
}
