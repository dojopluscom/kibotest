import { Component, OnInit } from '@angular/core';
import { WpService } from '../../../services/wp/wp.service';

import * as $ from 'jquery';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
    data;

    constructor(protected wpService: WpService) { }

    ngOnInit() {

        this.wpService.getHeaderMenu()
            .subscribe(
                (data) => { // Success
                    this.data = data;
                },
                (error) => {
                    console.error(error);
                }
        );

        $(window).on('scroll', function(){
            if ( $(window).scrollTop() > 0 ){
                $('header').addClass('menu-fixed');
            } else {
                $('header').removeClass('menu-fixed');
            }
        });

    }

}
