class coronaInfo{
  var name;
  int dead;
  int survived;
  int recovered;
  coronaInfo(var name,int dead,int survived,int recovered){
    this.name = name;
    this.dead = dead;
    this.survived = survived;
    this.recovered = recovered;
  }
  List liststring(){ // coronadata[number].liststring();
    var deadstring = this.dead.toString();
    var survivedstring = this.survived.toString();
    var recoveredstring = this.recovered.toString();
    List<dynamic> datalist = List<dynamic>();
    datalist.add(deadstring);
    datalist.add(survivedstring);
    datalist.add(recoveredstring);
    return datalist;
  }
}

main(){ //coda voorbeeld
  List<coronaInfo> coronaData = List<coronaInfo>();
  coronaInfo nederland = coronaInfo('nederland',1,2,3);
  coronaInfo duitsland = coronaInfo('duitsland',10,20,30);
  coronaData.add(nederland);
  coronaData.add(duitsland);
  List datalist = coronaData[1].liststring();
  print(datalist);
}