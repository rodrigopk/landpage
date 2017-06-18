import { Experience } from '../experience/experience';
import { Skill } from '../skill/skill';
import { Interest } from '../interest/interest';
import { Education } from '../education/education';
 
export class Developer {
  constructor(
    public name: string,
    public title: string,
    public picture: string,
    public age: number,
    public location:string,
    public pitch:string,
    public experiences: Experience[],
    public skills: Skill[],
    public interests: Interest[],
    public educations: Education[]
   ) {}

  public static builder(){
    return new Developer('','','',0,'','',[],[],[],[]);
  }
}
