## District de Lomé
Consulter ce [fichier JSON](lome-communes.json) pour toute les données

Liste des attributs


| Nom   | Description | Type |
|----------|:-------------:|------:|
| code | Code (administratif) de la commune| string |
| nom | Nom de la commune | string |
| codePostaux | Liste des codes postaux de la commune | array[string] |
| population | Nombre d'habitants de la commune | number |
| superficie | Superficie de la commune exprimée en km2 | number | 
| lat | Latitude (en dégrés) | number |
| lon | Longitude (en dégrés) | number |
| canton | Canton représentant la commune | string |
| chefLieu | Chef lien de la commune | string |
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
    "chefLieu": {
      "description": "Chef lien de la commune",
      "type": "string"
    },
    "population": {
      "description": "Le nombre d'habitants par km2",
      "type": "number"
    },
    "lat": {
      "description": "Latitude",
      "type": "number"
    },
    "lon": {
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
