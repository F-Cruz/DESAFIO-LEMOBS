import { Component } from '@angular/core';

@Component({
  selector: 'my-app',
  template: `<h1>Bem-Vindo ao {{name}}</h1>`,
})
export class AppComponent  { name = 'Painel de Vendas!'; }
