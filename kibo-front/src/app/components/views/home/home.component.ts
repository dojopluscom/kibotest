import { Component, OnInit } from '@angular/core';
import { WpService } from '../../../services/wp/wp.service';
import * as $ from 'jquery';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  data = [];
  slideConfig = {"slidesToShow": 5, "slidesToScroll": 1, "centerMode": true};

  constructor(protected wpService: WpService) { }

  ngOnInit() {

    this.wpService.getHomeData()
    .subscribe(
      (data) => { // Success
        this.data = data["acf"];
      },
      (error) => {
        console.error(error);
      }
    );

  }

  
  slickInit(e) {
    var image_slide_center = $('.slick-center').find('img').attr('src');
    $('#imagen-seleccionada').css('background-image', 'url("' + image_slide_center + '")');
  }
  
  breakpoint(e) {
    //console.log('breakpoint');
  }
  
  afterChange(e) {
    var image_slide_center = $('.slick-center').find('img').attr('src');
    $('#imagen-seleccionada').css('background-image', 'url("' + image_slide_center + '")');
  }
  
  beforeChange(e) {
    //console.log('beforeChange');
  }

}
