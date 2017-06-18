

export class Periodical {

  public periodString: string = "";

  constructor(period: any) {
    if (period.years > 0){
          this.periodString += period.years + " " + this.pluralize(period.years, "year");
      }
      if (period.months > 0){
          this.periodString += " " + period.months + " " + this.pluralize(period.months, "month");          
      }
  }

  protected pluralize(count :number, word: string): string {
      return (count == 1 ? word : word+'s') 
  }

}
