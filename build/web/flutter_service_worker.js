'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "6caf4c7df14ef76da45b4a61e4c3313d",
"assets/AssetManifest.json": "f694d8f4d11ecddabdb293dec6b582de",
"assets/FontManifest.json": "1b00fac073a820c8fa3d36018adc3a12",
"assets/fonts/MaterialIcons-Regular.otf": "ce8ae45b769d55548dbf62ffba26ef12",
"assets/fonts/Raleway.ttf": "3ec1aa8901bbee53c49cc8b4e011a0e1",
"assets/lib/assets/wallpapers/webp/Wallpaper%25200.webp": "953b7e5721cf8f51af0abe6764285fb7",
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
"assets/lib/assets/wallpapers/webp/Wallpaper%25202.webp": "7020b36a775b28561f8b7ad8fb38a7e9",
"assets/lib/assets/wallpapers/webp/Wallpaper%252020.webp": "a5313f9554bfbcbbdfabc0523dc69d43",
"assets/lib/assets/wallpapers/webp/Wallpaper%252021.webp": "e4b9ab6a8057c7959636490e67110ace",
"assets/lib/assets/wallpapers/webp/Wallpaper%252022.webp": "e15597aa57c1f97456c643bd9ebe60c2",
"assets/lib/assets/wallpapers/webp/Wallpaper%252023.webp": "0d1de942bf9a986271f4b552c62b4bde",
"assets/lib/assets/wallpapers/webp/Wallpaper%252024.webp": "71663168c5145ca17786a85a403a5718",
"assets/lib/assets/wallpapers/webp/Wallpaper%252025.webp": "2d450a0aafcb913a5d93c8bac54c5a79",
"assets/lib/assets/wallpapers/webp/Wallpaper%25203.webp": "d42fa501e4c2bad004821fcdc4bebdce",
"assets/lib/assets/wallpapers/webp/Wallpaper%25204.webp": "caf0573adb54b38e6ab7a578fc0572ca",
"assets/lib/assets/wallpapers/webp/Wallpaper%25205.webp": "0e94199a8e689e1743839aab78c2defd",
"assets/lib/assets/wallpapers/webp/Wallpaper%25206.webp": "39863a221113030fad2b571f26ab82cc",
"assets/lib/assets/wallpapers/webp/Wallpaper%25207.webp": "db636b596865735a2e581fbb7b8c6932",
"assets/lib/assets/wallpapers/webp/Wallpaper%25208.webp": "e682232793aa6492d360bea38a2a5c51",
"assets/lib/assets/wallpapers/webp/Wallpaper%25209.webp": "44ec1415c8fef2a015a470b4615ee28a",
"assets/lib/assets/withoutProfilePhoto.png": "6d2f50de8b5868660a08973ccbe0f981",
"assets/NOTICES": "33d566d1689da4ba0be42ca2896a2153",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/emoji_dialog_picker/assets/emojis/activity.json": "5896827134d7d5ed7f9e94aa009a1387",
"assets/packages/emoji_dialog_picker/assets/emojis/animals_and_nature.json": "ca5243da7ef7fbba624e54cffe959c38",
"assets/packages/emoji_dialog_picker/assets/emojis/emojis.json": "a9506869b743185e14529d39bbcd9a45",
"assets/packages/emoji_dialog_picker/assets/emojis/flags.json": "832fcfe20affb770033243e984b957b2",
"assets/packages/emoji_dialog_picker/assets/emojis/food_and_drink.json": "5cfad6f46110be8243e4a55b427b10c5",
"assets/packages/emoji_dialog_picker/assets/emojis/objects.json": "553ebf561e50afce42b8cca777691563",
"assets/packages/emoji_dialog_picker/assets/emojis/people.json": "66dcd244bb50b20688f4afc82fc19aed",
"assets/packages/emoji_dialog_picker/assets/emojis/symbols.json": "1968c5a4380af22d32a59928a42bfd04",
"assets/packages/emoji_dialog_picker/assets/emojis/travel_and_places.json": "e6a888c210aa8332c5515072070ff2b7",
"assets/packages/eva_icons_flutter/lib/fonts/Eva-Icons.ttf": "fd47cfbf62fc4532483aade7c2093552",
"assets/shaders/ink_sparkle.frag": "57f2f020e63be0dd85efafc7b7b25d80",
"canvaskit/canvaskit.js": "1338eccfe817956d34753284f2b1cdf6",
"canvaskit/canvaskit.wasm": "c11489d0518b0dec53ef98bbdbba5510",
"favicon.png": "b32e291a75812229068bfbd34660d5a0",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "b32e291a75812229068bfbd34660d5a0",
"icons/Icon-512.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"icons/Icon-maskable-192.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"icons/Icon-maskable-512.png": "ba182cb3b036402aaafe67a5ea5ccccb",
"index.html": "ecbeef5d8f1eb279dfb8e85167deb849",
"/": "ecbeef5d8f1eb279dfb8e85167deb849",
"main.dart.js": "86d062aceca5bab96a317d990c7a7449",
"manifest.json": "f790db674aea2908a27ee83ea24bfc5a",
"splash/img/light-background.png": "2150da5543cd44bc38aa65e57a4b1454",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "d427ebd72d2bad5b78875c0824c1b0e6",
"version.json": "796e605bbf9f9cb3d2da7f7c5377d1d5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
