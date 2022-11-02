import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

//edit
const components = [];

@NgModule({
  imports: [
    HttpClientModule,
  ],
  declarations: components,
  exports: components,
  providers: []
})
export class ApiModule {}
