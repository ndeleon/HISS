class StyleParam {
  String styleType;
  String styleVal;
  StyleParam(String b){
    styleType = trim(b.substring(0, b.indexOf("=")));
    styleVal = trim(b.substring(b.indexOf("="), b.length()));
    if (match(styleType, "color") != null || match(styleType, "colour") != null) {
      if (match(styleVal, "[" + "," + "," + "]") != null) {
        styleVal = colorDetect(styleType, styleVal);
        styleVal = valTransform(styleVal);
      }
    } else {
      styleType = nameChange(styleType);
      styleVal = trim(b.substring(b.indexOf("="), b.length()));
      styleVal = valTransform(styleVal);
    }
  }
  
  String colorDetect(String st, String sv){
    int startIndex = sv.indexOf("[");
    int endIndex = sv.indexOf(",");
    String tmp = trim(sv.substring(startIndex, endIndex));
    int c1 = int(tmp);

    String remainingString = trim(sv.substring(endIndex+1, sv.length()));
    startIndex = 0;
    endIndex = remainingString.indexOf(",");
    tmp = remainingString.substring(startIndex, endIndex);
    int c2 = int(tmp);

    remainingString = trim(remainingString.substring(endIndex+1, remainingString.length()));
    startIndex = 0;
    endIndex = remainingString.indexOf("]");
    tmp = remainingString.substring(startIndex, endIndex);
    int c3 = int(tmp);
    
    return "#" + hex(color(c1, c2, c3), 6);
  }
  
  String valTransform(String sv) {
    if (match(sv, "=") != null) {
      sv = sv.substring(sv.indexOf("[")+1, sv.indexOf("]"));
    }
    if (styleType.equals("font-size")) {
      sv = sv + "px";
    }
    return sv;
  }
  String nameChange(String st) {
    if (match(st, "size") != null){
      st = "font-size";
    }
    return st;
  }
  
  String toString() {
    return "  " + styleType + ": " + styleVal + ";";
  }
}
