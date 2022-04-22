import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { SocialComponent } from './social.component';

const routes: Routes = [
  {
    path: '',
    component: SocialComponent,
    children: [
      {
        path: '',
        redirectTo: 'home',
        pathMatch: 'full'
      },
      {
        path: 'home',
        loadChildren: () => import("./home/home.module").then(m=>m.HomeModule)
      },
      {
        path: 'chat',
        loadChildren: () => import("./chat/chat.module").then(m=>m.ChatModule)
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class SocialRoutingModule { }
