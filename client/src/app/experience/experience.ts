import {Periodical} from '../periodical'

export class Experience extends Periodical{

  constructor(
    public id: number,
    public title: string,
    public date_started: string,
    public period: any,
    public current: boolean,
    public description: string,
    public company: string,
    public company_url: string,
    public date_ended?: string
  ) {
      super(period);
  }


  public static arrayFromJson(json){
     var xpArray: Experience[] = [];

    json.forEach(function(xp) {
          xpArray.push(
            new Experience(
              xp.id,
              xp.title,
              xp.date_started,
              xp.period,
              xp.current,
              xp.description,
              xp.company,
              xp.company_url,
              xp.date_ended
            )
          );
        });
    return xpArray;
  }

}
