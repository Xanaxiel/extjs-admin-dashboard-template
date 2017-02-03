{
    /**
     * The application's namespace.
     */
    "name": "{appName}",
    
    /**
     * The version of the application.
     */
    "version": "1.0.0.0",

    /**
     * The relative path to the application's markup file (html, jsp, asp, etc.).
     */
    "indexHtmlPath": "index.html",

    /**
     * The list of directories or files to search for classes.
     *
     * Any classes declared in these locations will be available in your class "requires"
     * or in calls to "Ext.require". The "app.dir" variable below is expanded to the path
     * where the application resides (the same folder in which this file is located).
     */
    "classpath": [
        "app",
        "${toolkit\.name}/src"
    ],

    /**
     * Comma-separated string with the paths of directories or files to search.
     *
     * Any classes declared in these locations will be automatically required and included
     * in the build.
     *
     * If any file defines an Ext JS override (using Ext.define with an "override" property),
     * that override will in fact only be included in the build if the target class specified
     * in the "override" property is also included.
     */
    "overrides": [
        "overrides",
        "${toolkit\.name}/overrides"
    ],

    /**
     * The Sencha Framework for this application.
     */
    "framework": "ext",

    /**
     * The list of required packages (with optional versions; default is "latest").
     */
    "requires": [
        "charts",
        "font-awesome",
        "ux"
    ],

    /**
     * Sass configuration properties.
     */
    "sass": {
        /**
         * The root namespace to use when mapping *.scss files to classes in the
         * sass/src and sass/var directories. For example, "{appName}.view.Foo" would
         * map to "sass/src/view/Foo.scss". If we changed this to "{appName}.view" then
         * it would map to "sass/src/Foo.scss". To style classes outside the app's
         * root namespace, change this to "". Doing so would change the mapping of
         * "{appName}.view.Foo" to "sass/src/{appName}/view/Foo.scss".
         */
        "namespace": "{appName}",

        /**
         * File used to save sass variables edited via Sencha Inspector. This file
         * will automatically be applied to the end of the scss build.
         */
        // "save": "sass/${build\.id}.json"

        /**
         * Comma-separated list of files or folders containing extra Sass. These
         * files are automatically included in the Sass compilation. By default this
         * is just "etc/all.scss" to allow import directives to control the order
         * other files are included.
         *
         * All "etc" files are included at the top of the Sass compilation in their
         * dependency order:
         *
         *      +-------+---------+
         *      |       | base    |
         *      | theme +---------+
         *      |       | derived |
         *      +-------+---------+
         *      | packages        |  (in package dependency order)
         *      +-----------------+
         *      | application     |
         *      +-----------------+
         */
        "etc": [
            "sass/etc/all.scss",
            "${toolkit\.name}/sass/etc/all.scss"
        ],

        /**
         * Comma-separated list of folders containing Sass variable definitions
         * files. These file can also define Sass mixins for use by components.
         *
         * All "var" files are included after "etc" files in the Sass compilation in
         * roughly reverse dependency order:
         *
         *      +-----------------+
         *      | application     |
         *      +-------+---------+
         *      |       | derived |
         *      | theme +---------+
         *      |       | base    |
         *      +-------+---------+
         *      | packages        |  (in package dependency order)
         *      +-----------------+
         */
        "var": [
            "sass/var/all.scss",
            "sass/var",
            "${toolkit\.name}/sass/var/all.scss",
            "${toolkit\.name}/sass/var"
        ],

        /**
         * Comma-separated list of folders containing Sass rule files.
         *
         * All "src" files are included after "var" files in the Sass compilation in
         * dependency order (the same order as "etc"):
         *
         *      +-------+---------+
         *      |       | base    |
         *      | theme +---------+
         *      |       | derived |
         *      +-------+---------+
         *      | packages        |  (in package dependency order)
         *      +-----------------+
         *      | application     |
         *      +-----------------+
         */
        "src": [
            "sass/src",
            "${toolkit\.name}/sass/src"
        ]
    },

    /**
     * List of all JavaScript assets in the right execution order.
     *
     * Each item is an object with the following format:
     *
     *      {
     *          // Path to file. If the file is local this must be a relative path from
     *          // this app.json file.
     *          //
     *          "path": "path/to/script.js",   // REQUIRED
     *
     *          // Set to true on one file to indicate that it should become the container
     *          // for the concatenated classes.
     *          //
     *          "bundle": false,    // OPTIONAL
     *
     *          // Set to true to include this file in the concatenated classes.
     *          //
     *          "includeInBundle": false,  // OPTIONAL
     *
     *          // Specify as true if this file is remote and should not be copied into the
     *          // build folder. Defaults to false for a local file which will be copied.
     *          //
     *          "remote": false,    // OPTIONAL
     *
     *          // If not specified, this file will only be loaded once, and cached inside
     *          // localStorage until this value is changed. You can specify:
     *          //
     *          //   - "delta" to enable over-the-air delta update for this file
     *          //   - "full" means full update will be made when this file changes
     *          //
     *          "update": "",        // OPTIONAL
     *
     *          // A value of true indicates that is a development mode only dependency.
     *          // These files will not be copied into the build directory or referenced
     *          // in the generate app.json manifest for the micro loader.
     *          //
     *          "bootstrap": false   // OPTIONAL
     *      }
     *
     */
    "js": [{
        "path": "app.js",
        "bundle": true
    }],

    /**
     * Settings specific to classic toolkit builds.
     */
    "classic": {
        "js": [
//            // Remove this entry to individually load sources from the framework.
//            {
//                "path": "${framework\.dir}/build/ext-all-rtl-debug.js"
//            }
        ]
    },

    /**
     * Settings specific to modern toolkit builds.
     */
    "modern": {
        "js": [
//            // Remove this entry to individually load sources from the framework.
//            {
//                "path": "${framework\.dir}/build/ext-modern-all-debug.js"
//            }
        ]
    },

    /**
     * List of all CSS assets in the right inclusion order.
     *
     * Each item is an object with the following format:
     *
     *      {
     *          // Path to file. If the file is local this must be a relative path from
     *          // this app.json file.
     *          //
     *          "path": "path/to/stylesheet.css",   // REQUIRED
     *
     *          // Specify as true if this file is remote and should not be copied into the
     *          // build folder. Defaults to false for a local file which will be copied.
     *          //
     *          "remote": false,    // OPTIONAL
     *
     *          // If not specified, this file will only be loaded once, and cached inside
     *          // localStorage until this value is changed. You can specify:
     *          //
     *          //   - "delta" to enable over-the-air delta update for this file
     *          //   - "full" means full update will be made when this file changes
     *          //
     *          "update": ""      // OPTIONAL
     *      }
     */
    "css": [{
        // This entry uses an ant variable that is the calculated value of the generated
        // output css file for the app, defined in .sencha/app/defaults.properties
        "path": "${build\.out\.css\.path}",
        "bundle": true,
        "exclude": ["fashion"]
    }],

    /**
     * This option is used to configure the dynamic loader. At present these options
     * are supported.
     *
     */
     "loader": {
         // This property controls how the loader manages caching for requests:
         //
         //   - true: allows requests to receive cached responses
         //   - false: disable cached responses by adding a random "cache buster"
         //   - other: a string (such as the build.timestamp shown here) to allow
         //     requests to be cached for this build.
         //
         "cache": false,

         // When "cache" is not true, this value is the request parameter used
         // to control caching.
         //
         "cacheParam": "_dc"
     },

    /**
     * Settings specific to production builds.
     */
    "production": {
        "output": {
            "appCache": {
                "enable": false,
                "path": "../cache.appcache"
            }

        },
        "loader": {
            "cache": "${build\.timestamp}"
        },
        "cache": {
            "enable": false
        }
    },

    /**
     * Settings specific to testing builds.
     */
    "testing": {
        "output": {
            "appCache": {
                "enable": false
            }
        },
        "cache": {
            "enable": false
        }
    },

    /**
     * Settings specific to development builds.
     */
    "development": {
        "tags": [
            // You can add this tag to enable Fashion when using app watch or
            // you can add "?platformTags=fashion:1" to the URL to enable Fashion
            // without changing this file.
            //
            // "fashion"
        ]
    },

    /**
     * Controls the output structure of development-mode (bootstrap) artifacts. May
     * be specified by a string:
     *
     *      "bootstrap": "${app\.dir}"
     *
     * This will adjust the base path for all bootstrap objects, or expanded into object
     * form:
     *
     *      "bootstrap": {
     *          "base": "${app\.dir},
     *          "manifest": "bootstrap.json",
     *          "microloader": "bootstrap.js",
     *          "css": "bootstrap.css"
     *      }
     *
     * You can optionally exclude entries from the manifest. For example, to exclude
     * the "loadOrder" (to help development load approximate a build) you can add:
     *
     *      "bootstrap": {
     *          "manifest": {
     *              "path": "bootstrap.json",
     *              "exclude": "loadOrder"
     *          }
     *      }
     *
     */
    "bootstrap": {
        "base": "${app\.dir}",
        "manifest": "${build\.id}.json",
        "microloader": "bootstrap.js",
        "css": "bootstrap.css"
    },

    /**
     * Controls the output directory for build resources.  May be set with
     * either a string:
     *
     *      "${workspace\.build\.dir}/${build\.environment}/${app\.name}"
     *
     * or an object containing values for various types of build artifacts:
     *
     *      {
     *          "base": "${workspace\.build\.dir}/${build\.environment}/${app\.name}",
     *          "page": {
     *              "path": "../index.html",
     *              "enable": false
     *          },
     *          "css": "${app\.output\.resources}/${app\.name}-all.css",
     *          "js": "app.js",
     *          "microloader": {
     *              "path": "microloader.js",
     *              "embed": true,
     *              "enable": true
     *          },
     *          "manifest": {
     *              "path": "app.json",
     *              "embed": false,
     *              "enable": "${app\.output\.microloader\.enable}"
     *          },
     *          "resources": "resources",
     *          "slicer": {
     *              "path": "${app\.output\.resources}/images",
     *              "enable": false
     *          },
     *          // Setting the "enable" property of this object to a Truthy value will cause a Application Cache
     *          // manifest file to be generated based on this files appCache object. This file will then be injected
     *          // into the index.html file of the built application
     *          "appCache":{
     *              "enable": false"
     *          }
     *      }
     *
     */
    "output": {
        "base": "build/{appName}-dashboard/${build\.id}",
        "page": "../index.html",
        "manifest": "../${build\.id}.json",
        "appCache": {
            "enable": false
        }
    },

    /**
    * Controls for localStorage caching
    *   "cache": {
    *       // This property controls whether localStorage caching of this manifest file is on or off.
    *       // if disabled no deltas will be generated during a build and full updates will be disabled
    *       "enable": false,
    *
    *       // This property allows for global toggle of deltas.
    *       // If set to a string the value will be used as the path to where deltas will be generated relative to you build.
    *       // If set to a Truthy Value the default path ok "deltas" will be used
    *       // If set to a Falsey value or if this property is not present deltas will be disabled and not generated.
    *       //
    *       "deltas": "deltas"
    *   }
    */
    "cache": {
        "enable": false,
        "deltas": false
    },

    /**
     * Used to automatically generate cache.manifest (HTML 5 application cache manifest)
     * file when you build.
     */
    "appCache": {
        /**
         * List of items in the CACHE MANIFEST section
         */
        "cache": [
            "index.html"
        ],
        /**
         * List of items in the NETWORK section
         */
        "network": [
            "*"
        ],
        /**
         * List of items in the FALLBACK section
         */
        "fallback": []
    },

    /**
     * Extra resources to be copied into the resource folder as specified in the "resources"
     * property of the "output" object. Folders specified in this list will be deeply copied.
     */
    "resources": [
        {
            "path": "resources"
        },
        {
            "path": "${toolkit\.name}/resources"
        }
    ],

    /**
     * File / directory name patttern to ignore when copying to the builds. Must be a
     * valid regular expression.
     */
    "ignore": [
        "(^|/)CVS(/?$|/.*?$)"
    ],

    /**
     * Directory path to store all previous production builds. Note that the content
     * generated inside this directory must be kept intact for proper generation of
     * deltas between updates.
     */
    "archivePath": "archive",

    /**
     * Additional resources used during theme slicing operations
     */
    "slicer": {
        "js": [
            {
                "path": "sass/example/custom.js",
                "isWidgetManifest": true
            }
        ],
        "output": {
            "appCache": {
                "enable": false
            }
        },
        "cache": {
            "enable": false
        }
    },

    /**
     * This config object is used by the "sencha app publish" command to publish
     * a version of this application to Sencha Web Application Manager:
     *
     *      "manager": {
     *          // the space id for this application
     *          "id": 12345,
     *
     *          // space host
     *          "host": "https://api.space.sencha.com/json.rpc",
     *
     *          // Either a zip file path or a folder to be zipped
     *          // this example shows how to publish the root folder for all build profiles
     *          "file": "${app\.output\.base}/../",
     *
     *          // These may be specified here, but are best specified in your user
     *          // ~/.sencha/cmd/sencha.cfg file
     *          "apiKey": "",
     *          "secret": ""
     *      }
     */

    /**
     * Build Profiles. This object's properties are each a "build profile". You can
     * add as many as you need to produce optimized builds for devices, themes, locales
     * or other criteria. Your "Ext.beforeLoad" hook (see index.html) is responsible for
     * selecting the desired build profile by setting "Ext.manifest" to one of these
     * names.
     *
     *     "builds": {
     *         "classic": {
     *             "toolkit": "classic",
     *             "theme": "theme-neptune"
     *         },
     *
     *         "modern": {
     *             "toolkit": "modern",
     *             "theme": "theme-neptune"
     *         }
     *     }
     *
     */
    "builds": {
        // iOS Native Build profile example
       /* "ios": {
            "toolkit": "modern",
            "theme": "theme-triton",
            "packager": "cordova",
            "cordova" : {
                "config": {
                    "platforms": "ios",
                    "id": "com.foo.{appName}Dashboard",
                    "name": "{appName}Dashboard"
                }
            }
        },*/

        "classic": {
            "toolkit": "classic",
            "theme": "theme-triton"
        },

        "modern": {
            "toolkit": "modern",
            "theme": "theme-triton"
        }
    },

    /**
     * Uniquely generated id for this application, used as prefix for localStorage keys.
     * Normally you should never change this value.
     */
    "id": "39acbe74-575a-4e77-8062-a62324a1e58f"
}
