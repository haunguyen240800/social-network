import { Component, OnInit } from '@angular/core';

declare var $: any;

@Component({
  selector: 'app-right-bar',
  templateUrl: './right-bar.component.html',
  styleUrls: ['./right-bar.component.css']
})
export class RightBarComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
    this.loadScript();
  }

  loadScript(){
    $('.model-popup-chat').on('click', function () {
      $('.modal-popup-chat').toggleClass('d-block');
      return false;
    });
    $('.modal-popup-chat a').on('click', function () {
      $('.modal-popup-chat').removeClass('d-block');
      return false;
    });
  }
}
