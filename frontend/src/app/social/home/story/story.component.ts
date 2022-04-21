import { Component, OnInit } from '@angular/core';

declare var $: any;

@Component({
  selector: 'app-story',
  templateUrl: './story.component.html',
  styleUrls: ['./story.component.css']
})
export class StoryComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
    this.loadScriptCarousel();
  }

  loadScriptCarousel(){
    $('.category-card').owlCarousel({
      loop:false,
      margin:7,
      nav:true,
      autoplay:false,  
      dots:false,
      navText:['<i class="ti-angle-left"></i>','<i class="ti-angle-right"></i>'],
      autoWidth:true
    })
  }
}
