import { Component, OnInit } from '@angular/core';
import { WpService } from '../../../services/wp/wp.service';

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

    }

}
