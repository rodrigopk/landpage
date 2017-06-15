import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import {Observable} from 'rxjs/Observable';
import 'rxjs/Rx';
import 'rxjs/add/operator/publishReplay';

import { Developer } from '../developer/developer';
import { Experience } from '../experience/experience';


@Injectable()
export class DeveloperService {

  _developer :Observable<Developer> = null;
  
  constructor(private _http: Http) { }

  fetch(){
    if (!this._developer){
      this._developer =   this._http.get('/api/developers/1.json')
                                    .map( (res:Response) =>                                          
                                           new Developer(
                                                res.json().name,
                                                res.json().title,
                                                res.json().picture,
                                                res.json().age,
                                                res.json().location,
                                                res.json().pitch,
                                                Experience.arrayFromJson(res.json().experiences),
                                                res.json().skills,
                                                res.json().interests
                                            )                                           
                                    )
                                    .publishReplay(1)
                                    .refCount();
    }

    return this._developer;

  }

}
