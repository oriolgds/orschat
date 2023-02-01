'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ad419a7fe7f5771a6007887a032bd0ed",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25201.jpg": "a2e62ace27b24b0d8fb8db95477d1c68",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252010.jpg": "2be043d56d15e32e8d8e73116e345b98",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252011.jpg": "2f91013b1f8f568cbe205eec97aeb896",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252012.jpg": "4abc31116d24867c7feba8ee4af8f043",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252013.jpg": "bb9b69747d319cc4084451a5b4f438d3",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252014.jpg": "789727457e86869eb059454c3cc7cef3",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252015.jpg": "df3779659cf086467400dd76de4fee67",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252016.jpg": "cc2e7590cd4569aff9df609a6a7b0c3e",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252017.jpg": "fb36d81d364489fc200b824280d102d7",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252018.jpg": "e1dbbbc063a2f217e20c8938472315f4",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252019.jpg": "06c8988f0f52c9896579dbef3b555092",
"assets/lib/assets/wallpapers/jpg/wallpaper%25202.jpg": "87c6a570e7ecececc655aac4f57b6146",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252020.jpg": "ba3f6015223ac6d947835ef5ae387ffe",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252021.jpg": "4e1939edb3a18fc0c01a905d7c5bb6b4",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252022.jpg": "613c8ea162858aa219490be268dba669",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252023.jpg": "1ed45d7bf5584681b683f453d33cd7d2",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252024.jpg": "8003010ad67091de32d132702b7d84c9",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252025.jpg": "558501896a3d87624431924a4a8997f8",
"assets/lib/assets/wallpapers/jpg/Wallpaper%252026.jpg": "31ced44d5b83e13d4ee7f8582d4e1ff5",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25203.jpg": "cb13e3db55a4d6e4fc357c81e8a4bf23",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25204.jpg": "d0b1c82739e035b383c41efc98d06aca",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25205.jpg": "7ee6b9e0710648870b99c5d7fe04e3fa",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25206.jpg": "32c78bc6a80f3a5c5fc1bed616789659",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25207.jpg": "c1da4d7344378b622ec3609f6004e145",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25208.jpg": "3e1001dd4c8f77f623dfdbd0db637697",
"assets/lib/assets/wallpapers/jpg/Wallpaper%25209.jpg": "8b6026a4c066a0de4df495df5485bdf0",
"assets/lib/assets/wallpapers/webp/Wallpaper%25201.webp": "ba8037fdcda75b998dd7a2d3d93895ca",
"assets/lib/assets/wallpapers/webp/Wallpaper%252010.webp": "dd52292a5b8c47326f973e1823b2b35f",
"assets/lib/assets/wallpapers/webp/Wallpaper%252011.webp": "80da14adacce3bb37ea81edeefb06a26",
"assets/lib/assets/wallpapers/webp/Wallpaper%252012.webp": "2a7f25fc82641f8402822971b3ca63ca",
"assets/lib/assets/wallpapers/webp/Wallpaper%252013.webp": "c905fc15376edb9840225d1f14b6d7be",
"assets/lib/assets/wallpapers/webp/Wallpaper%252014.webp": "80530642ee0d8314f534af216efdd00d",
"assets/lib/assets/wallpapers/webp/Wallpaper%252015.webp": "cf0b36b3e89ace86e02a304db37cc86f",
"assets/lib/assets/wallpapers/webp/Wallpaper%252016.webp": "066b8a052ed4509d6506296f1c89b7a8",
"assets/lib/assets/wallpapers/webp/Wallpaper%252017.webp": "cae65d2cea54655de4f493b96eb750ac",
"assets/lib/assets/wallpapers/webp/Wallpaper%252018.webp": "f46e35d8398189729ed2799ed47cc3a8",
"assets/lib/assets/wallpapers/webp/Wallpaper%252019.webp": "5518a139271c1b1fa6f2e73bf5bd542a",
"assets/lib/assets/wallpapers/webp/wallpaper%25202.webp": "7020b36a775b28561f8b7ad8fb38a7e9",
"assets/lib/assets/wallpapers/webp/Wallpaper%252020.webp": "50572cfab8c4822851ca9371c83ff28e",
"assets/lib/assets/wallpapers/webp/Wallpaper%252021.webp": "e4b9ab6a8057c7959636490e67110ace",
"assets/lib/assets/wallpapers/webp/Wallpaper%252022.webp": "e15597aa57c1f97456c643bd9ebe60c2",
"assets/lib/assets/wallpapers/webp/Wallpaper%252023.webp": "0d1de942bf9a986271f4b552c62b4bde",
"assets/lib/assets/wallpapers/webp/Wallpaper%252024.webp": "71663168c5145ca17786a85a403a5718",
"assets/lib/assets/wallpapers/webp/Wallpaper%252025.webp": "2d450a0aafcb913a5d93c8bac54c5a79",
"assets/lib/assets/wallpapers/webp/Wallpaper%252026.webp": "db636b596865735a2e581fbb7b8c6932",
"assets/lib/assets/wallpapers/webp/Wallpaper%25203.webp": "d42fa501e4c2bad004821fcdc4bebdce",
"assets/lib/assets/wallpapers/webp/Wallpaper%25204.webp": "caf0573adb54b38e6ab7a578fc0572ca",
"assets/lib/assets/wallpapers/webp/Wallpaper%25205.webp": "0e94199a8e689e1743839aab78c2defd",
"assets/lib/assets/wallpapers/webp/Wallpaper%25206.webp": "39863a221113030fad2b571f26ab82cc",
"assets/lib/assets/wallpapers/webp/Wallpaper%25207.webp": "953b7e5721cf8f51af0abe6764285fb7",
"assets/lib/assets/wallpapers/webp/Wallpaper%25208.webp": "e682232793aa6492d360bea38a2a5c51",
"assets/lib/assets/wallpapers/webp/Wallpaper%25209.webp": "44ec1415c8fef2a015a470b4615ee28a",
"assets/lib/assets/withoutProfilePhoto.png": "6d2f50de8b5868660a08973ccbe0f981",
"assets/NOTICES": "1c1af7a96477dd23b121bf6b33c55714",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "b32e291a75812229068bfbd34660d5a0",
"icons/Icon-192.png": "b32e291a75812229068bfbd34660d5a0",
"icons/Icon-512.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"icons/Icon-maskable-192.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"icons/Icon-maskable-512.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"index.html": "76e9326111c3afb1ee0e18d800532d4a",
"/": "76e9326111c3afb1ee0e18d800532d4a",
"main.dart.js": "265ebde1c3fd704db8e96ed36d8893d5",
"manifest.json": "f790db674aea2908a27ee83ea24bfc5a",
"version.json": "796e605bbf9f9cb3d2da7f7c5377d1d5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
