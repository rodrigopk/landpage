import { Injectable } from '@angular/core';
import { Http } from '@angular/http'

@Injectable()
export class ExperienceService {

  constructor(private _http: Http) { }

  listExperiences(){
    return this._http.get('/api/experiences.json');
  }

}
