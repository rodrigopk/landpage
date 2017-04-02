import { Component, OnInit } from '@angular/core';

import { Interest } from '../interest/interest'
import { InterestService } from '../interest/interest.service'

@Component({
  selector: 'interest-list',
  templateUrl: './interest-list.component.html',
  styleUrls: ['./interest-list.component.css'],
  providers: [ InterestService ]
})
export class InterestListComponent implements OnInit {

  interests : Interest[] = [];
  constructor(private interestService: InterestService) { }

  ngOnInit() {
    this.interestService.listInterest()
    .subscribe( response => {
      var intArray = [];
      response.json().forEach(function(obj){
        intArray.push( 
          Interest.fromJSON(obj)
        );
      });
      this.interests = intArray;
    });
  }

}
