import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_service.dart';
import 'hero_detail_component.dart';
import 'dart:async';

@Component(
  selector: 'my-heroes',
  directives: const [CORE_DIRECTIVES, HeroDetailComponent],
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css']
)
class HeroesComponent implements OnInit {
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selectedHero;

  HeroesComponent(this._heroService);

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;
}
