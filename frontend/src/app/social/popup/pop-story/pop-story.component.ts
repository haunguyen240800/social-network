import { Component, OnInit } from '@angular/core';
declare var $: any;
@Component({
  selector: 'app-pop-story',
  templateUrl: './pop-story.component.html',
  styleUrls: ['./pop-story.component.css']
})
export class PopStoryComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
    this.loadScript();
  }

  loadScript(){
    $('.story-slider').owlCarousel({
      loop:true,
      margin:0,
      nav:true,
      autoplay:true,  
      dots:true,
      touchDrag:true,
      navText: ["<i class='ti-angle-left icon-nav'></i>","<i class='ti-angle-right icon-nav'></i>"],
      responsive:{
          0:{
              items:1,
          },
          600:{
              items:1,
          },
          1200:{
              items:1,
          }
          
      }      
    })
  }
}
