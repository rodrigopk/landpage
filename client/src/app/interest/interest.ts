export class Interest {
  constructor(
    public title: string,
    public image: string
  ){}

  static fromJSON( obj: any){
    return new Interest(obj.title, obj.image)
  }

  public static arrayFromJson(json){
     var intArray: Interest[] = [];

    json.forEach(function(obj) {
          intArray.push( 
            Interest.fromJSON(obj)
          );
    });
    return intArray;
  }
}
