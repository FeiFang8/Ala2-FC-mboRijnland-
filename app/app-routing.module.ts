import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {LoginComponent} from './login/login.component';
import {DashboardComponent} from './dashboard/dashboard.component';
import {TeamsComponent} from './teams/teams.component';
import {SpelersComponent} from './spelers/spelers.component';
import {RegisterComponent} from './register/register.component';
import {TeamComponent} from './team/team.component';
import {SpelerComponent} from './speler/speler.component';


const routes: Routes = [
  {
    path: "",
    component: LoginComponent
  },
  {
    path: "dashboard",
    component: DashboardComponent
  },
  {
    path: "teams",
    component: TeamsComponent
  },
  {
    path: "spelers",
    component: SpelersComponent
  },
  {
    path: "register",
    component: RegisterComponent
  },
  {
    path: "team",
    component: TeamComponent
  },
  {
    path: "speler",
    component: SpelerComponent
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
