
  {if STOMT_ENABLE==1}
<script>

// check user language
var languageRestrictionString = '{STOMT_LANGUAGE_RESTRICTION}';
var languageRestrictions = languageRestrictionString.split(',').map(function(item) {
  return item.trim();
});
var userLanguageCode = '{$__wcf->getLanguage()->languageCode}';
var languageAllowed = (languageRestrictions.length === 1 && languageRestrictions[0] === '')
                      ||  languageRestrictions.indexOf(userLanguageCode) !== -1;

if (languageAllowed) {
  var options = {
     appId: '{STOMT_APP_ID}' || 'AfRaltKwqi39T8nSXdzPsmCtx',
    position: '{STOMT_POSITION}',
    label: '{STOMT_LABEL}',
    colorText: '{STOMT_TEXT_COLOR}',
    colorHover: '{STOMT_HOVER_COLOR}',
    colorBackground: '{STOMT_BACKGROUND_COLOR}',
    lang: userLanguageCode,
    preload: !!{STOMT_PRELOAD},
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
}
</script>
  {/if}
  

	
