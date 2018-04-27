import 'package:angular/angular.dart';
import 'src/heroes_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  directives: const [HeroesComponent],
  providers: const [HeroService],
  template: '''
    <h1>{{title}}</h1>
    <my-heroes></my-heroes>
  ''',
)

class AppComponent {
  final title = 'Tour of heroes';
}