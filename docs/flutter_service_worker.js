'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "a68b07202372de935273ac7702f0087a",
"version.json": "4096f5edb5b303d8f62f685c1e99e834",
"index.html": "691bb98cec82dc868b0593172c3fa1db",
"/": "691bb98cec82dc868b0593172c3fa1db",
"main.dart.js": "1c2a5d4d9ee6313598049268b7ae62c9",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"app-ads.txt": "913f62a83c6dc36d47a59883d9a54b5e",
"favicon.png": "1892ae4e69016633ef9940dbfebcc1ca",
"icons/Icon-192.png": "c05f36bbea0b11e8da6a3a12d537ef58",
"icons/Icon-maskable-192.png": "c05f36bbea0b11e8da6a3a12d537ef58",
"icons/Icon-maskable-512.png": "7b1bc8e8c66acf13a33fa6deebd47eb8",
"icons/Icon-512.png": "7b1bc8e8c66acf13a33fa6deebd47eb8",
"manifest.json": "f494ac700bcd50cc1615e75d6c4dfdb5",
"assets/AssetManifest.json": "fa4f360962cd44669a5e56ff768a0207",
"assets/NOTICES": "5f57e45e7f0e5ea252ae12f4810bb0d4",
"assets/FontManifest.json": "bf25b58a803ffb844307fdd625c38770",
"assets/AssetManifest.bin.json": "6e017f6a5db6c2184cd1a75dfe2ce0e9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "befb3792fee90d45776e5971ca86318f",
"assets/fonts/MaterialIcons-Regular.otf": "06a3ee9237a68499af7ddb26a6936204",
"assets/assets/icons/logo_oorish.png": "2a77047f82705142f9ba06137d77b0c3",
"assets/assets/icons/hc/appearance_p_select.png": "be88358bdbc20b633bcfaf0d8f5b5894",
"assets/assets/icons/hc/profile_p_appearance.png": "deba19809f441251ff7bcb42ba36b4d6",
"assets/assets/icons/hc/about_p_privacy.png": "c5e8ef1257935de9905283a61981ddc1",
"assets/assets/icons/hc/settings_p_language.png": "a7f4973f8a0780bf5da809326350b4c9",
"assets/assets/icons/hc/profile_p_settings.png": "6d1995cbe380387b2e57fa40c5445ae7",
"assets/assets/icons/hc/language_p_select.png": "c5bbf2ce16aa9673e4780fc0930244a2",
"assets/assets/icons/hc/account_p_delete.png": "008f31127dd09fc039bd93195bc9dd88",
"assets/assets/icons/hc/my_carts_p_profile.png": "02879dcd3773765fe710f62d51c5ccc5",
"assets/assets/icons/hc/delete_p_confirm.png": "f8289508e41db6f367f52afd9b800b2b",
"assets/assets/icons/hc/profile_p_account.png": "26dad7f1c05c43af1b90acd4aa49343e",
"assets/assets/icons/hc/profile_p_about.png": "06b381c7210dc992fe2470308d57e1b0",
"assets/assets/icons/image_google_store.png": "b4e068f749bf82c330ffa23e5412445e",
"assets/assets/icons/image_share_carts.png": "435e0118b730fd157372809b7e66d96d",
"assets/assets/icons/baby_phone/baby_phone_learn_ocean_animals.png": "f2726fd5f0bcb970472896989cd6e33d",
"assets/assets/icons/baby_phone/baby_phone_learn_veggies.png": "1e4db9e00beaef4ea12316d13f3100e2",
"assets/assets/icons/baby_phone/launch_home.png": "5f5a1426d09f4cef2d52b9bc5a780932",
"assets/assets/icons/baby_phone/baby_phone_guess_color_shape.png": "fe5edde099f6d1ebdfc3b3b7fa7cba0a",
"assets/assets/icons/baby_phone/baby_phone_learn_fruits.png": "91b1b302de173bf4ffa1e446b3b464d2",
"assets/assets/icons/baby_phone/baby_phone_learn_forest_animals.png": "ea7e2c78e12c84a0aa8e7c5a1a156137",
"assets/assets/icons/baby_phone/baby_phone_learn_time.png": "0307b9f13204d8beeac4217f09f4661b",
"assets/assets/icons/baby_phone/baby_phone_coloring.png": "b8a0ab4a663476f9265d04ad0be48b3d",
"assets/assets/icons/baby_phone/baby_phone_pixel_art.png": "831ccc6310780c199aa572be2da3e913",
"assets/assets/icons/baby_phone/baby_phone_memory_match.png": "88f43d4cfb4f8e820dfa14e297ba64ce",
"assets/assets/icons/baby_phone/baby_phone_mini_games.png": "dba934ae8ca6a698b44c57808d3df1bc",
"assets/assets/icons/baby_phone/baby_phone_telephony.png": "1a27c863152189d221fe94b6340619f2",
"assets/assets/icons/baby_phone/ic_launcher.png": "99b0c4509dca23c44d9d9952b245bf76",
"assets/assets/icons/baby_phone/baby_phone_learn_domestic_animals.png": "c6d54d7466bb9ceaff2274b1d803f1d6",
"assets/assets/icons/baby_phone/baby_phone_guess_animal.png": "dd27d927a06b8bfb3be1d77c996691f0",
"assets/assets/icons/image_app_store.png": "69cb970a0df6f84202d930237e7c941b",
"assets/assets/icons/image_calorie_counter.png": "0df779043f241af81587d79efb5f8272",
"assets/assets/icons/shop_list_cal_coun_2_in_1.png": "9d4248a155b03423cc32e0d3db181f89",
"assets/assets/icons/image_build_in_chat.png": "4a0d2e40399204d02a2498739d46271b",
"assets/assets/fonts/Nunito-Medium.ttf": "d26cecc95cdc8327b337357e6c5c1f5b",
"assets/assets/fonts/Nunito-ExtraBoldItalic.ttf": "e01118312e526f062fc8ad8f3c64de0e",
"assets/assets/fonts/Nunito-ExtraBold.ttf": "5b5a206f5cd32fa496c93925d0caf609",
"assets/assets/fonts/Nunito-ExtraLightItalic.ttf": "f9088a8e7dae2fc4e88975f6e1726c93",
"assets/assets/fonts/OpenSans-Italic.ttf": "60fdf6ed7b4901c1ff534577a68d9c0c",
"assets/assets/fonts/Nunito-Light.ttf": "7de99c591b88e33ceda578f9ee140263",
"assets/assets/fonts/Nunito-Regular.ttf": "b83ce9c59c73ade26bb7871143fd76bb",
"assets/assets/fonts/Nunito-SemiBold.ttf": "38257ec36f55676f98fcdf1264adb69d",
"assets/assets/fonts/Nunito-Bold.ttf": "ba43cdecf9625c0dcec567ba29555e15",
"assets/assets/fonts/Nunito-BoldItalic.ttf": "dc69781f4856bdb711087d1ae07ca208",
"assets/assets/fonts/Nunito-Black.ttf": "27ee28fd596c0bd4235fa792d0d8b1ce",
"assets/assets/fonts/Nunito-ExtraLight.ttf": "ef7ff1b92707646c2e02a39067aab385",
"assets/assets/fonts/Nunito-SemiBoldItalic.ttf": "4c2772c15392fbfdb077342b7851f66c",
"assets/assets/fonts/Nunito-BlackItalic.ttf": "47e66b00cd98f1925da80dd6b7ff29a1",
"assets/assets/fonts/OpenSans-Bold.ttf": "0a191f83602623628320f3d3c667a276",
"assets/assets/fonts/Nunito-Italic.ttf": "fac5c8ffb51e06094affdbb7fff9000e",
"assets/assets/fonts/OpenSans-Regular.ttf": "931aebd37b54b3e5df2fedfce1432d52",
"assets/assets/fonts/Nunito-LightItalic.ttf": "cdf25a6c9cbb6def64afcc30d3e511b9",
"assets/assets/fonts/Nunito-MediumItalic.ttf": "bd282ec988480f875b2f7cb0465ff7fa",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b"};
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
