import { Component, OnInit } from '@angular/core';

import { Education } from '../education/education';
import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service';

@Component({
  selector: 'education-list',
  templateUrl: './education-list.component.html',
  styleUrls: ['./education-list.component.css'],
  providers: [DeveloperService]
})
export class EducationListComponent implements OnInit {

  educations : Education[] = [];

  constructor(private devService: DeveloperService) { }

  ngOnInit() {
    this.devService.fetch()
    .subscribe(
      response => {
        this.educations = response.educations;
      }
    );
  }

}
