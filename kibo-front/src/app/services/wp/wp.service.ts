import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class WpService {

  urlApi = 'http://localhost/app/wp-json/wp/v2/';

  constructor(protected http: HttpClient) { }

  getUsers() {
    return this.http.get(this.urlApi + 'home-blocks/8');
  }

}
