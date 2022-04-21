import { Component, OnInit } from '@angular/core';
import { LazyLoadScriptService } from 'src/app/service/lazy-load-script.service';

declare var $: any;

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor(
    private lazyLoadService: LazyLoadScriptService) { }

  ngOnInit(): void {
    // this.handlePreloader();
    // this.pageLoad();
  }

  loadScript(){
    this.lazyLoadService.loadScript('/assets/jquery.min.js');
  }

  // handlePreloader() {
  //   if ($('.preloader').length > 0) {
  //       $('.preloader').delay(200).fadeOut(500);
  //   }
  // }

  // pageLoad() {
  //   $( window ).on( "load", function() {
  //         setInterval(function(){ 
  //             $('.preloader-wrap').fadeOut(300);
  //         }, 400);
  //         setInterval(function(){ 
  //             $('body').addClass('loaded');
  //         }, 600); 
  //   });
  // }
}
