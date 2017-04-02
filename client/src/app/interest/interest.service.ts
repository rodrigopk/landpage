import { Injectable } from '@angular/core';
import { Http } from '@angular/http'


@Injectable()
export class InterestService {

  constructor(private _http: Http) { }

  listInterest(){
    return this._http.get('/api/interests.json')
  }

}
