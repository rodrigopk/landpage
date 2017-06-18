import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { DeveloperCardComponent } from './developer-card/developer-card.component';
import { ExperienceListComponent } from './experience-list/experience-list.component';
import { SkillListComponent } from './skill-list/skill-list.component';
import { InterestListComponent } from './interest-list/interest-list.component';
import { EducationListComponent } from './education-list/education-list.component';

@NgModule({
  declarations: [
    AppComponent,
    DeveloperCardComponent,
    ExperienceListComponent,
    SkillListComponent,
    InterestListComponent,
    EducationListComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
