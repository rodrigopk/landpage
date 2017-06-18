import { Periodical } from '../periodical'

export class Education extends Periodical {

  constructor(
    public id: number,
    public institution: string,
    public institution_url: string,
    public start_date: string,
    public period: any,
    public graduated: boolean,
    public title: string,
    public field: string,
    public end_date?: string,
  ) {
      super(period);
  }

  public static arrayFromJson(json){
     var xpArray: Education[] = [];

    json.forEach(function(xp) {
          xpArray.push(
            new Education(
              xp.id,
              xp.institution,
              xp.institution_url,
              xp.start_date,
              xp.period,
              xp.graduated,
              xp.title,
              xp.field,
              xp.end_date
            )
          );
        });
    return xpArray;
  }

}
