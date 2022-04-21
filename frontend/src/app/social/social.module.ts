import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { SocialRoutingModule } from './social-routing.module';
import { SocialComponent } from './social.component';
import { HeaderComponent } from './layout/header/header.component';
import { FooterComponent } from './layout/footer/footer.component';
import { RightBarComponent } from './layout/right-bar/right-bar.component';
import { LeftBarComponent } from './layout/left-bar/left-bar.component';
import { PopupModule } from './popup/popup.module';


@NgModule({
  declarations: [
    SocialComponent,
    HeaderComponent,
    FooterComponent,
    RightBarComponent,
    LeftBarComponent
  ],
  imports: [
    CommonModule,
    SocialRoutingModule,
    PopupModule
  ]
})
export class SocialModule { }
