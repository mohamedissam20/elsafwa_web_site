'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "96fff5d08fdab6824ade75848315ea1b",
"assets/AssetManifest.bin.json": "d48bf52d99b6704172101b2631f4144b",
"assets/AssetManifest.json": "c4bab54a2af6fd28bcc703d154572936",
"assets/assets/fonts/Debrosee-ALPnL.ttf": "f5efb07d4ace8d35317d3cc328bd89ae",
"assets/assets/fonts/Janna-LT-Bold.ttf": "0655ac2529565b93080fef53a0e85ffe",
"assets/assets/images/aboutUs.jpg": "4e97939d16191f643ea595d015276780",
"assets/assets/images/antar.jpg": "823fe81ed39f5ed84abe704600e33932",
"assets/assets/images/appbar.jpg": "3a2f1e5e9108897f08d9271aea44644f",
"assets/assets/images/ayman.jpg": "f48d1de597bdd263b434fca3986efeec",
"assets/assets/images/backkk.jpg": "b8003571340f4674c90ed97f080509ee",
"assets/assets/images/Elsafty.jpg": "de904ce398e265c6887944c9eac278c3",
"assets/assets/images/home1.png": "df96443ae381c76f21c7a2d892f5eb38",
"assets/assets/images/homeImage.jpg": "16aadb504c9abeb74b6966de3ed207b3",
"assets/assets/images/icon0.gif": "6219824186e481da942fd68ea3be362d",
"assets/assets/images/icon1.gif": "6ab60a7b9a8b40c1d92a2d835a1a4a13",
"assets/assets/images/icon2.gif": "9f5eece1bbcd3069c3f3f56c1afb6c5c",
"assets/assets/images/icon3.gif": "a87f335e11ed7e3a8c8ed55b0bd37020",
"assets/assets/images/icon4.gif": "82b6db35c88361b4927ce6dac474770c",
"assets/assets/images/icon5.gif": "870b863c56f4e9bf525f661dbf809601",
"assets/assets/images/icon6.gif": "43617bc51982cbc9108f6019ef5a7a85",
"assets/assets/images/image20.jpg": "5964091da7518eedd0e05065157da962",
"assets/assets/images/image25.jpg": "edef3c6460a34e64f7d1aa5cf219dc74",
"assets/assets/images/image3.jpg": "bd1e06079a0084684bf06fa9684bd1ea",
"assets/assets/images/image31.jpg": "15d7d57950daf9022d24d669704ba391",
"assets/assets/images/image32.jpg": "a1fccb1d57c278e8e91f2a11eb010a84",
"assets/assets/images/image33.jpg": "6bf461ef624936e004b9859b5aab901f",
"assets/assets/images/image34.jpg": "1eca90d90b91b25378348aa6fe085f48",
"assets/assets/images/image35.jpg": "f79645ba59501fad4ce0ff1ea0f5f972",
"assets/assets/images/llll.jpg": "991fd6c2fef1cc122c446842d51f126e",
"assets/assets/images/logo.gif": "97c5914504758b16ccb6044e658072db",
"assets/assets/images/logo.jpg": "7fd86d9d28e234874bbdd9192e8feb6b",
"assets/assets/images/logos.gif": "40e40755bbb9aac4480294e414a6939c",
"assets/assets/images/mwaser.png": "6a7b20a8f507b75c6d82157b9deba76f",
"assets/assets/images/news.jpg": "3234c5bc155f1ceaa475ae2253120731",
"assets/assets/images/photo.jpg": "e6e27041adea556e963c2d5a56f09f3d",
"assets/assets/images/plastic.png": "b0fabc80079d907a45614e1dfba80188",
"assets/assets/images/plastic2.png": "b1ad1133faa7ad794a4f848990833300",
"assets/assets/images/plastix1.jpg": "b056f0e573addd667f7713c30d243588",
"assets/assets/images/plastix4.jpg": "4c695452a5add4e2ce97c92eda3fa576",
"assets/assets/images/plastix7.jpg": "07fac2b684ad807a25c12115b6eb04b6",
"assets/assets/images/plastix8.jpg": "fea3ade5a9882012cd3ac94f29b875aa",
"assets/assets/images/salt.png": "99c9bc32fb1acfdbdae6e67308753ccd",
"assets/assets/images/taill.jpg": "f174445b39fd4c6d1b138bc88c6c11c6",
"assets/assets/images/trz1.jpg": "b5f0b2faddb7ca0cc0ac81956f8d9283",
"assets/assets/images/trz2.jpg": "29f92d42e0fa3170cead18971c3bff57",
"assets/assets/images/trz3.jpg": "ebabb8791613e3311887acaa6975d623",
"assets/assets/images/trz4.jpg": "b4ad9eba99b6efddaf86ad472cae7dd3",
"assets/assets/images/trz5.jpg": "65b2131b21c51139b2011861834e6cb7",
"assets/assets/images/trz6.jpg": "325c593dc08cbe27ed5e63e9a9e31d77",
"assets/assets/images/wepride.gif": "d0ccdcffa791fc8943fbdbf9e34cb54c",
"assets/assets/images/words.jpg": "6299fae3c065d93b61209e780f711874",
"assets/FontManifest.json": "04990ad81a5ede702299709a7e83aa85",
"assets/fonts/MaterialIcons-Regular.otf": "4d3df78a6411e2809012730c53de7fbd",
"assets/NOTICES": "365396bc9f9e5841c59ab5eb5ba67aec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "991fd6c2fef1cc122c446842d51f126e",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "da3ffc34c88acb9eaa4df7496beb0a8c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "1580342af9ea84bb8855a0738cff83a3",
"/": "1580342af9ea84bb8855a0738cff83a3",
"main.dart.js": "612fdf8c10ada4b274d078dc2216bbcc",
"manifest.json": "ab3de5ec44c60981cc0b8a434ccc6503",
"version.json": "8a95bcf3044c72392273d21238be76f5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
