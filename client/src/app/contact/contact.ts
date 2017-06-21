export class Contact {

  public formattedPhone: string;

  constructor(
    public id: number,
    public phone: string,
    public email: string,
    public linkedin_url: string,
    public github_url: string,
    public twitter: string
  ) { 
    
  }

  public static fromJson(json){
    return new Contact(
              json.id,
              json.phone,
              json.email,
              json.linkedin_url,
              json.github_url,
              json.twitter
            );
  }

  public static builder(){
    return new Contact(0,'','','','','');
  }



}