import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_service.dart';
import 'src/hero_detail_component.dart';
import 'dart:async';

@Component(
  selector: 'my-app',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  providers: const [HeroService]
)
class AppComponent implements OnInit {
  final HeroService _heroService;
  final title = 'Tour of heroes';
  List<Hero> heroes;
  Hero selectedHero;

  AppComponent(this._heroService);

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroesSlowly();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;
}
