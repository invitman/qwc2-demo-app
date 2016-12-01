QGIS Web Client 2 Demo Application
==================================

Quick Start
-----------

Clone the repository with the --recursive option to automatically clone submodules:

`git clone --recursive git@github.com:sourcepole/qwc2-demo-app.git`

Install NodeJS, if needed, from [here](https://nodejs.org/en/blog/release/v0.12.7/).

Start the development application locally:

`npm install`

`npm start`

The application runs at `http://localhost:8081` afterwards.

Read more on the [wiki](git@github.com:sourcepole/qwc2.git/wiki).


Configuration
--------------

### Viewer application

The viewer application is configured in `localConfig.json`.


### Map

The map projection is configured in the Map plugin in `localConfig.json`.


### Themes

Themes and map scales are configured in `themesConfig.json`.

Configuration format:
```
{
  "themes": {
    "items": [
      {
        "url": "<http://localhost/wms/theme>",
        "title": "<Custom theme title>",            // optional, use WMS title if not set
        "thumbnail": "<theme.png>",                 // optional image file in assets/img/mapthumbs/, use WMS GetMap if not set
        "attribution": "<Attribution>",             // optional theme attribution
        "attributionUrl": "<attribution URL>",      // optional theme attribution URL
        "default": true,                            // optional, set this as the initial theme
        "scales": [25000, 10000, 5000, 2500],       // optional custom map scales
        "tiled": true,                              // optional, use tiled WMS (default is false)
        "backgroundLayers": [                       // optional background layers
          {
            "name": "<background layer name>",      // background layer name from list below
            "printLayer": "<WMS layer name>",       // optional equivalent WMS layer name for printing
            "visibility": true                      // optional initial visibility on topic selection
          }
        ],
        "searchProviders": ["<search provider>"]    // optional search providers
      }
    ],
    "groups": [                                     // optional, nested groups
      {
        "title": "<Group title>",
        "items": [
          {
            "url": "<http://localhost/wms/group_theme>"
          }
        ]
        "groups": [
          // subgroups
        ]
      }
    ],
    "backgroundLayers": [                           // optional list of background layers for themes
      {
        "name": "<background layer name>",          // referenced by themes
        "title": "<Background layer title>",
        ...                                         // layer params (excluding "group" and "visibility")
      }
    ]
  },
  "defaultScales": [50000, 25000, 10000, 5000]      // optional default map scales
}
```

`npm run themesconfig` requests the capabilities of all WMS services and generates a runtime configuration `themes.json`.


Preparation for developers
--------------------------

### Short MapStore2 introduction

* https://github.com/geosolutions-it/MapStore2/wiki/ReactJS-and-Redux-introduction

### ECMAScript 2015

* https://babeljs.io/docs/learn-es2015/

### ReactJS

* https://facebook.github.io/react/docs/thinking-in-react.html
* https://medium.com/@diamondgfx/learning-react-with-create-react-app-part-1-a12e1833fdc
* https://medium.com/@diamondgfx/learning-react-with-create-react-app-part-2-3ad99f38b48d
* https://medium.com/@diamondgfx/learning-react-with-create-react-app-part-3-322447d14192


### Redux

* http://redux.js.org/
* https://egghead.io/courses/getting-started-with-redux
* https://egghead.io/courses/building-react-applications-with-idiomatic-redux
