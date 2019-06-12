import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class WpService {

    urlMenuApi = 'http://localhost/app/wp-json/menus/v2/header';

    urlApi = 'http://localhost/app/wp-json/wp/v2/';
    idHomeBlocks = 8;

    urlCf7Api = 'http://localhost/app/wp-json/contact-form-7/v1/contact-forms/';
    idCf7 = 7;

    constructor(protected http: HttpClient) { }

    getHeaderMenu() {
        return this.http.get(this.urlMenuApi);
    }

    getHomeData() {
        return this.http.get(this.urlApi + 'home-blocks/' + this.idHomeBlocks);
    }

    sendContact($post) {
        return this.http.post(this.urlCf7Api + this.idCf7 + '/feedback', $post);
    }

}
