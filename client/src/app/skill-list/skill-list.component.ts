import { Component, OnInit } from '@angular/core';

import { Skill } from '../skill/skill'
import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service';

@Component({
  selector: 'skill-list',
  templateUrl: './skill-list.component.html',
  styleUrls: ['./skill-list.component.css'],
  providers: [ DeveloperService ]
})
export class SkillListComponent implements OnInit {
  skills :Skill[] = [];

  constructor(private _devService: DeveloperService) { }

  ngOnInit() {
    this._devService.fetch()
    .subscribe( response => {
      this.skills = response.skills;
    });
  }

}
