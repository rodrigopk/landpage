module String {
    export function pluralize(count :number, word: string): string {
      return (count == 1 ? word : word+'s') 
    }
}

export class Experience {

  public periodString: string = "";

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
      if (period.years > 0){
          this.periodString += period.years + " " + String.pluralize(period.years, "year");
      }
      if (period.months > 0){
          this.periodString += " " + period.months + " " + String.pluralize(period.months, "month");          
      }

  }
}