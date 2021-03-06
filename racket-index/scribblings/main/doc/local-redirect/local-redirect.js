// Autogenerated by `scribblings/main/private/local-redirect'
//  This script is included by generated documentation to rewrite
//  links expressed as tag queries into local-filesystem links.

var link_dirs = [];

function bsearch(str, a, start, end) {
   if (start >= end)
     return false;
   else {
     var mid = Math.floor((start + end) / 2);
     if (a[mid][0] == str)
       return mid;
     else if (a[mid][0] < str)
       return bsearch(str, a, mid+1, end);
     else
       return bsearch(str, a, start, mid);
   }
}

var link_target_prefix = false;

function hash_string(s) {
   var v = 0;
   for (var i = 0; i < s.length; i++) {
     v = (((v << 5) - v) + s.charCodeAt(i)) & 0xFFFFFF;
   }
   return v;
}

function demand_load(p, callback) {
   // Based on a StackOverflow answer, which cites:
   // JavaScript Patterns, by Stoyan Stefanov (O’Reilly). Copyright 2010 Yahoo!, Inc., 9780596806750.
   var script = document.getElementsByTagName('script')[0];
   var newjs = document.createElement('script');
   newjs.src = p;
   if (callback) {
      // IE
      newjs.onreadystatechange = function () {
          if (newjs.readyState === 'loaded' || newjs.readyState === 'complete') {
            newjs.onreadystatechange = null;
            callback();
          }
        };
      // others
      newjs.onload = callback;
   }
   script.parentNode.appendChild(newjs);
}

var loaded_link_targets = [];
var link_targets = [];
var num_link_target_bins = 1;

function convert_all_links() {
   var elements = document.getElementsByClassName("Sq");
   for (var i = 0; i < elements.length; i++) {
     var elem = elements[i];
     var tag = elem.href.match(/tag=[^&]*/);
     var doc = elem.href.match(/doc=[^&]*/);
     var rel = elem.href.match(/rel=[^&]*/);
     if (doc && rel) {
         var pos = bsearch(decodeURIComponent(doc[0].substring(4)),
                                     link_dirs,
                                     0,
                                     link_dirs.length);
         if (pos) {
           var p = link_dirs[pos][1];
           if (link_target_prefix) {
             p = link_target_prefix + p;
           }
           elem.href = p + "/" + decodeURIComponent(rel[0].substring(4));
           tag = false;
         }
     }
     if (tag) {
       var v = hash_string(decodeURIComponent(tag[0].substring(4))) % 1;
       if (!loaded_link_targets[v]) {
         loaded_link_targets[v] = true;
         var p = "file:///home/scheme/pltbuild/racket/build/user/7.6/doc/local-redirect_" + v + ".js";
         if (link_target_prefix) {
           p = link_target_prefix + p;
         }
         demand_load(p, false);
       }
     }
  }
}

AddOnLoad(convert_all_links);
