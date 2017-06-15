import { Component, OnInit } from '@angular/core';

import { Interest } from '../interest/interest'
import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service';

@Component({
  selector: 'interest-list',
  templateUrl: './interest-list.component.html',
  styleUrls: ['./interest-list.component.css'],
  providers: [ DeveloperService ]
})
export class InterestListComponent implements OnInit {

  interests : Interest[] = [];
  constructor(private _devService: DeveloperService) { }

  ngOnInit() {
    this._devService.fetch()
    .subscribe( response => {      
      this.interests = response.interests;
    });
  }

}
