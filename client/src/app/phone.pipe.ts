import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'phone'
})
export class PhonePipe implements PipeTransform {

  transform(value: any, args?: any): any {
    return '+'+value.substring(0,2)+' ('+value.substring(2,4)+') '+value.substring(4,value.length);
  }

}
