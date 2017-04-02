import { Component, OnInit } from '@angular/core';

import { SkillService } from '../skill/skill.service'
import { Skill } from '../skill/skill'


@Component({
  selector: 'skill-list',
  templateUrl: './skill-list.component.html',
  styleUrls: ['./skill-list.component.css'],
  providers: [ SkillService ]
})
export class SkillListComponent implements OnInit {
  skills :Skill[] = [];

  constructor(private skillService: SkillService) { }

  ngOnInit() {
    this.skillService.listSkills()
    .subscribe( response => {
      var skillArray = [];
      response.json().forEach(function(obj){
        skillArray.push( 
          Skill.fromJSON(obj)
        );
      });
      this.skills = skillArray;
    });
  }

}
