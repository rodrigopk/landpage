import { Component, OnInit } from '@angular/core';

import { Experience } from '../experience/experience';
import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service';

@Component({
  selector: 'experience-list',
  templateUrl: './experience-list.component.html',
  styleUrls: ['./experience-list.component.css'],
  providers: [DeveloperService]
})
export class ExperienceListComponent implements OnInit {

  experiences : Experience[] = [];

  constructor( private devService: DeveloperService) { }

  ngOnInit() {
    this.devService.fetch()
    .subscribe(
      response => {
        this.experiences = response.experiences;
      }
    );
  }

}
