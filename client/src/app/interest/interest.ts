export class Interest {
  constructor(
    public title: string,
    public image: string
  ){}

  static fromJSON( obj: any){
    return new Interest(obj.title, obj.image)
  }
}
