## 🇹🇬 Subdivision administrative du Togo
Base de données complète des régions, préfectures, communes, cantons et quartiers disponible au format JSON, SQL, XML et CSV.

Dernière mise à jour : 30 Novembre 2021

### API
Pas encore disponible

<!-- ### Communes

Liste des attributs


| Nom   | Description | Type |
|----------|:-------------:|------:|
| code | Code (administratif) de la commune| string |
| nom | Nom de la commune | string |
| codePostaux | Liste des codes postaux de la commune | array[string] |
| population | Nombre d'habitants de la commune | number |
| superficie | Superficie de la commune exprimée en km2 | number | 
| latitude | Latitude (en dégrés) | number |
| longitude | Longitude (en dégrés) | number |
| canton | Canton représentant la commune | string |
| quartiers | Liste des quartiers/villages de la commune | array[string] |

Schema JSON d'une commune

```json
{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "type": "object",
  "properties": {
    "nom": {
      "description": "Le nom de la commune",
      "type": "string"
    },
    "canton": {
      "description": "Canton représentant la commune",
      "type": "string"
    },
    "population": {
      "description": "Le nombre d'habitants par km2",
      "type": "number"
    },
    "latitude": {
      "description": "Latitude",
      "type": "number"
    },
    "longitude": {
      "description": "Longitude",
      "type": "number"
    },
    "quartiers": {
      "description": "Liste des qurtiers/villages de la commune",
      "type": "array",
    }
  },
  "required": ["nom"]
}
```

### Préfectures -->



### Formats disponibles
Fichier | JSON | SQL | XML | CSV
:------------ | :-------------| :-------------| :------------- |:-------------
Régions | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark:
Préfectures | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark:
Communes | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark:
Régions+Préfectures | NA | NA | NA | NA | NA
Régions+Communes | NA | NA | NA | NA | NA
Villes+Communes | NA | NA | NA | NA | NA
Régions+Villes+Communes | NA |  NA | NA | NA | NA

### Statistiques
Nombre de Régions : 05 <br>
Nombre de Villes : 23 <br>
Nombre de Préfectures : 39 <br>
Nombre de Communes : 117 <br>
Nombre de Cantons : 394 <br>
Nombre de Villages : 3644 <br>

## Contributions
[Directives de contribution](https://github.com/Togodevelopers/Api_commune_Togo/blob/master/.github/CONTRIBUTING.md)

## License
La **Base de données des communes préfectures et villes du Togo** est disponible sous la licence [Open Database License](https://github.com/Togodevelopers/Api_commune_Togo/blob/master/LICENSE). Tous les droits sur le contenu individuel de la base de données sont régis par la [Database Contents License](https://github.com/Togodevelopers/Api_commune_Togo/blob/master/.github/CONTENT_LICENSE).