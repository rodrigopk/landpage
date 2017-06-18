import {Periodical} from '../periodical'

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


/*
    institution: "Institution Federal de Educação, Ciência e Tecnologia do Ceará - IFCE",
    institution_url:"http://ifce.edu.br/",
    start_date: Date.new(2012,1,10),
    end_date: Date.new(2016,12,20),
    title: "Engineer’s Degree",
    field: "Computer Engineering",
    graduated: true
*/
