import { Component, OnInit } from '@angular/core';

import { Contact } from '../contact/contact';
import { Developer } from '../developer/developer';
import { DeveloperService } from '../developer/developer.service';

@Component({
  selector: 'contact-card',
  templateUrl: './contact-card.component.html',
  styleUrls: ['./contact-card.component.css'],
  providers: [DeveloperService]
})
export class ContactCardComponent implements OnInit {

  contact :Contact = null;

  constructor(private devService: DeveloperService) { }

  ngOnInit() {
    this.devService.fetch()
    .subscribe(
      response => {
        this.contact = response.contact;
      }
    );
  }

}
