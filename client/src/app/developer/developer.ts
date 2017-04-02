export class Developer {
  constructor(
    public name: string,
    public title: string,
    public picture: string,
    public age: number,
    public location:string,
    public pitch:string
   ) {}

  public static builder(){
    return new Developer('','','',0,'','');
  }
}
