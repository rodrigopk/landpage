/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { InterestService } from './interest.service';

describe('InterestService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [InterestService]
    });
  });

  it('should ...', inject([InterestService], (service: InterestService) => {
    expect(service).toBeTruthy();
  }));
});
