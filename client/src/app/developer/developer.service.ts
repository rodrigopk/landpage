import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

@Injectable()
export class DeveloperService {

  constructor(private _http: Http) { }

  fetch(){
    return this._http.get('/api/developers/1.json');
  }

}
