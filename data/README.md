## District de Lomé
Consulter ce [fichier JSON](lome-communes.json) pour toute les données

Liste des attributs


| Nom   | Description | Type |
|----------|:-------------:|------:|
| code | Code (administratif) de la commune| string |
| nom | Nom de la commune | string |
| codePostaux | Liste des codes postaux de la commune | array |
| population | Nombre d'habitants de la commune | number |
| superficie | Superficie de la commune exprimée en km2 | number | 
| lat | Latitude (en dégrés) | number |
| lon | Longitude (en dégrés) | number |
| quartiers | Liste des quartiers/villages de la commune | array [string] |

Schema JSON d'une commune

```json
{
   "$schema": "https://communes.tg/json/schema",
   "title": "Commune",
   "description": "Informations sure une commune donnée",
   "type": "object",
	
   "properties": {
      "nomCourt": {
        "description": "Le nom court/courrament donné à la commune",
        "type": "string"
      },	
      "nomComplet": {
        "description": "Le nom complet de la commune",
        "type": "string"
      },	
      "canton": {
        "description": "Canton représentant cette commune",
        "type": "string",
      },
      "chefLieu": {
        "description": "Chef lien de la commune",
        "type": "string"
      },
      "superficie": {
        "description": "La superficie de la commune",
        "type": "number",
      },
      "population": {
        "description": "Le nombre d'habitants par km2",
        "type": "string",
      },
      "limites": {
        "description": "Les communes périphériques",
        "type": "object",
      },
      "lat": {
        "description": "Latitude",
        "type": "string",
      },
      "lon": {
        "description": "Longitude",
        "type": "string",
      },
      "quartiers": {
        "description": "Liste des qurtiers/villages de la commune",
        "type": "array",
      },
   },
   "required": ["nomCourt", "name", "quartiers"]
}
```
