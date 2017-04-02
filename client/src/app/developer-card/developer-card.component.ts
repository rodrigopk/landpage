import { Component, OnInit } from '@angular/core';

import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service'

@Component({
  selector: 'developer-card',
  templateUrl: './developer-card.component.html',
  styleUrls: ['./developer-card.component.css'],
  providers: [DeveloperService]
})
export class DeveloperCardComponent implements OnInit {
  developer =  Developer.builder();

  constructor( private devService :DeveloperService  ) { }

  ngOnInit() {
    this.devService.fetch()
      .subscribe(response => {
        var json = response.json();
        this.developer = new Developer(
                            json.name,
                            json.title,
                            json.picture,
                            json.age,
                            json.location,
                            json.pitch
                          );
    });
  }

}
