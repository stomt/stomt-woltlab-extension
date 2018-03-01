
  {if STOMT_APP_ID|strlen > 0  &&   STOMT_ENABLE==1}
<script>


var options = {
   appId: '{STOMT_APP_ID}',
  position: '{STOMT_POSITION}', 
  label: '{STOMT_LABEL}', 
  colorText: '{STOMT_TEXT_COLOR}', 
  colorHover: '{STOMT_HOVER_COLOR}', 
  colorBackground: '{STOMT_BACKGROUND_COLOR}',
  showClose: true
};
(function(w, d, n, r, t, s){
    w.Stomt = w.Stomt||[];
    t = d.createElement(n);
    s = d.getElementsByTagName(n)[0];
    t.async=1;
    t.src=r;
    s.parentNode.insertBefore(t,s);
  })(window, document, 'script', 'https://www.stomt.com/widget.js');
  Stomt.push(['addTab', options]);
  Stomt.push(['addFeed', options]);
  Stomt.push(['addCreate', options]);
 
  // Adjust the 'APP_ID' to your application id 
  // you can find it here: https://www.stomt.com/YOUR_PAGE/apps

</script>
  {/if}
  

	
