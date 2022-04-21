import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PopStoryComponent } from './pop-story/pop-story.component';
import { PopChatComponent } from './pop-chat/pop-chat.component';



@NgModule({
  declarations: [
    PopStoryComponent,
    PopChatComponent
  ],
  imports: [
    CommonModule
  ],
  exports: [
    PopStoryComponent,
    PopChatComponent
  ]
})
export class PopupModule { }
