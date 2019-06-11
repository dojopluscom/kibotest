import { Component, OnInit } from '@angular/core';
import { WpService } from '../../../services/wp/wp.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  data: any[] = [];

  constructor(protected wpService: WpService) { }

  ngOnInit() {

    this.wpService.getUsers()
    .subscribe(
      (data) => { // Success
        this.data = data["acf"];
      },
      (error) => {
        console.error(error);
      }
    );

  }

}
