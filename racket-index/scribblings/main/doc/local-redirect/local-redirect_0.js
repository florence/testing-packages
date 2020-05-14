link_targets[0] = [];


function convert_all_links_0() {
   var elements = document.getElementsByClassName("Sq");
   for (var i = 0; i < elements.length; i++) {
     var elem = elements[i];
     var tag = elem.href.match(/tag=[^&]*/);
     
     if (tag) {
       var pos = bsearch(decodeURIComponent(tag[0].substring(4)),
                                   link_targets[0],
                                   0,
                                   link_targets[0].length);
       if (pos) {
         var p = link_targets[0][pos][1];
         if (link_target_prefix) {
           p = link_target_prefix + p;
         }
         elem.href = p;
       }
     }
  }
}
convert_all_links_0();
