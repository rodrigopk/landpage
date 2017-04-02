import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

@Injectable()
export class SkillService {

  constructor(private _http: Http) { }

  listSkills(){
    return this._http.get('/api/skills.json');
  }

}
