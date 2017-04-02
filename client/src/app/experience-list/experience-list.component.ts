import { Component, OnInit } from '@angular/core';

import { Experience } from '../experience/experience'
import { ExperienceService } from '../experience/experience.service'

@Component({
  selector: 'experience-list',
  templateUrl: './experience-list.component.html',
  styleUrls: ['./experience-list.component.css'],
  providers: [ExperienceService]
})
export class ExperienceListComponent implements OnInit {

  experiences : Experience[] = [];

  constructor( private xpService: ExperienceService) { }

  ngOnInit() {
    this.xpService.listExperiences()
    .subscribe(
      response => {
        var responseArray = response.json();
        var xpArray = [];
        responseArray.forEach(function(xp) {
          xpArray.push(
            new Experience(
              xp.id,
              xp.title,
              xp.date_started,
              xp.period,
              xp.current,
              xp.description,
              xp.company,
              xp.company_url,
              xp.date_ended
            )
          );
        });
        this.experiences = xpArray;
      }
    );
  }

}
