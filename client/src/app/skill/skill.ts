export class Skill {

  constructor(
    public id: number,
    public title: string,
    public experience: number,
    public description: string
  ){}

  static fromJSON( obj: any){
    return new Skill( obj.id,
                      obj.title,
                      obj.experience,
                      obj.description
                    );
  }
}
