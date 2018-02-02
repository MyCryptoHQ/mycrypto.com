<!DOCTYPE html>
<html lang="en" ng-app="mycryptoApp">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>MyCrypto.com</title>
<meta property="og:title" content="MyCrypto.com: MyCrypto.com">
<meta property="og:site_name" content="MyCrypto.com: MyCrypto.com">
<meta name="twitter:title" content="MyCrypto.com: MyCrypto.com">
<meta name="apple-mobile-web-app-title" content="MyCrypto.com: MyCrypto.com">
<link href="https://mycrypto.com" rel="canonical">
<meta content="https://mycrypto.com" property="og:url">
<meta content="https://mycrypto.com" name="twitter:url">
<link rel="stylesheet" href="css/mycrypto-master.min.css">
<script type="text/javascript" src="js/mycrypto-static.min.js"></script>
<script type="text/javascript" src="js/mycrypto-master.js"></script>
<meta name="description" content="MyCrypto is a free, open-source interface for interacting with the blockchain more easily. Developed by and for the community since 2015, we’re focused on building awesome products that put the power in people’s hands.">
<meta property="og:description"  content="MyCrypto is a free, open-source interface for interacting with the blockchain more easily.">
<meta name="twitter:description" content="MyCrypto is a free, open-source interface for interacting with the blockchain more easily.">
<meta name="robots" content="index,follow">
<meta name="googlebot" content="index,follow">
<meta name="google-site-verification" content="dRWkvANAUNAhNyMnTyc7M7S3lnucotMY8j8R-gsZhbo" />
<link href="./images/fav/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
<link href="./images/fav/favicon-32x32.png" rel="icon" type="image/png" sizes="32x32">
<link href="./images/fav/favicon-16x16.png" rel="icon" type="image/png" sizes="16x16">
<link href="./images/fav/manifest.json" rel="manifest">
<link href="./images/fav/safari-pinned-tab.svg" rel="mask-icon" color="#067997">
<link href="./images/fav/favicon.ico" rel="shortcut icon">
<meta name="apple-mobile-web-app-title" content="MyCrypto">
<meta name="application-name" content="MyCrypto">
<meta name="msapplication-config" content="./images/fav/browserconfig.xml">
<meta name="theme-color" content="#06495e">
<meta property="og:url" content="https://mycrypto.com" />
<meta property="og:title" content="MyCrypto: free, open-source interface for interacting with the blockchain more easily." />
<meta property="og:type" content="website">
<meta property="og:image" content="./images/mycrypto-logo-banner.png" />
<meta property="og:image" content="./images/mycrypto-logo.png" />
<meta property="og:image" content="./images/mycrypto-logo-square.png" />
<meta name="twitter:image" content="./images/mycrypto-logo-twitter.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@MyCrypto">
<meta name="twitter:creator" content="@MyCrypto">

<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type" : "Organization",
"name" : "MyCrypto",
"legalName" : "MyCrypto, Inc.",
"url" : "https://mycrypto.com/",
"contactPoint" : [{
  "@type" : "ContactPoint",
  "email" : "support@mycrypto.com",
  "url"   : "https://support.mycrypto.com",
  "contactType" : "customer service"
}],
"logo" : "https://mycrypto.com/images/mycrypto-logo.png",
"description": "MyCrypto is a free, open-source interface for interacting with the blockchain more easily.",
"sameAs" : [
  "https://mycrypto.com/",
  "https://www.facebook.com/MyCryptoHQ/",
  "https://twitter.com/mycrypto",
  "https://medium.com/@mycrypto",
  "https://support.mycrypto.com/",
  "https://github.com/MyCryptoHQ",
  "https://www.reddit.com/r/MyCrypto/",
  "https://www.linkedin.com/company/mycrypto/"
]
}
</script>
</head>
<body>

<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

<section class="header-branding">
  <section class="container">

    @@if (site === 'web' ) {
      <a class="brand" href="/" aria-label="Go to homepage">
        <img src="images/logo.svg" height="53" width="190" alt="MyCrypto Logo" />
      </a>
    }
    @@if (site === 'cx'  ) {
      <a class="brand" href="/cx-wallet.html" aria-label="Go to homepage">
        <img src="images/logo.svg" height="53" width="190" alt="MyCrypto Logo" />
      </a>
    }

    <div class="tagline">

      <span class="hidden-xs">3.12.0</span>

      <span class="dropdown dropdown-lang" ng-cloak>
        <a tabindex="0"
           aria-haspopup="true"
           aria-expanded="false"
           aria-label="change language. current language {{curLang}}"
           class="dropdown-toggle"
           ng-click="dropdown = !dropdown">
              {{curLang}}<i class="caret"></i>
        </a>
        <ul class="dropdown-menu" ng-show="dropdown">
          <li><a ng-class="{true:'active'}[curLang=='Català']"          ng-click="changeLanguage('ca','Català'         )"> Català          </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Deutsch']"         ng-click="changeLanguage('de','Deutsch'        )"> Deutsch         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Ελληνικά']"        ng-click="changeLanguage('el','Ελληνικά'       )"> Ελληνικά        </a></li>
          <li><a ng-class="{true:'active'}[curLang=='English']"         ng-click="changeLanguage('en','English'        )"> English         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Español']"         ng-click="changeLanguage('es','Español'        )"> Español         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Farsi']"           ng-click="changeLanguage('fa','Farsi'          )"> Farsi           </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Suomi']"           ng-click="changeLanguage('fi','Suomi'          )"> Suomi           </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Français']"        ng-click="changeLanguage('fr','Français'       )"> Français        </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Magyar']"          ng-click="changeLanguage('hu','Magyar'         )"> Magyar          </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Haitian Creole']"  ng-click="changeLanguage('ht','Haitian Creole' )"> Haitian Creole  </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Indonesian']"      ng-click="changeLanguage('id','Indonesian'     )"> Bahasa Indonesia</a></li>
          <li><a ng-class="{true:'active'}[curLang=='Italiano']"        ng-click="changeLanguage('it','Italiano'       )"> Italiano        </a></li>
          <li><a ng-class="{true:'active'}[curLang=='日本語']"           ng-click="changeLanguage('ja','日本語'          )"> 日本語          </a></li>
          <li><a ng-class="{true:'active'}[curLang=='한국어']"            ng-click="changeLanguage('ko','한국어'          )"> 한국어           </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Nederlands']"      ng-click="changeLanguage('nl','Nederlands'     )"> Nederlands      </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Norsk Bokmål']"    ng-click="changeLanguage('no','Norsk Bokmål'   )"> Norsk Bokmål    </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Polski']"          ng-click="changeLanguage('pl','Polski'         )"> Polski          </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Português']"       ng-click="changeLanguage('pt','Português'      )"> Português       </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Русский']"         ng-click="changeLanguage('ru','Русский'        )"> Русский         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='ภาษาไทย']"         ng-click="changeLanguage('th','ภาษาไทย'        )"> ภาษาไทย         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Türkçe']"          ng-click="changeLanguage('tr','Türkçe'         )"> Türkçe          </a></li>
          <li><a ng-class="{true:'active'}[curLang=='Tiếng Việt']"      ng-click="changeLanguage('vi','Tiếng Việt'     )"> Tiếng Việt      </a></li>
          <li><a ng-class="{true:'active'}[curLang=='简体中文']"         ng-click="changeLanguage('zhcn','简体中文'      )"> 简体中文         </a></li>
          <li><a ng-class="{true:'active'}[curLang=='繁體中文']"         ng-click="changeLanguage('zhtw','繁體中文'      )"> 繁體中文         </a></li>
          <li role="separator" class="divider"></li>
          <li><a data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></li>
        </ul>
      </span>

    <span class="dropdown dropdown-gas" ng-cloak>

      <a tabindex="0"
         aria-haspopup="true"
         aria-label="adjust gas price"
         class="dropdown-toggle"
         ng-click="dropdownGasPrice = !dropdownGasPrice">
          <span translate="OFFLINE_Step2_Label_3">Gas Price</span>:
            {{gas.value}} Gwei
            <i class="caret"></i>
      </a>

      <ul class="dropdown-menu" ng-show="dropdownGasPrice">
        <div class="header--gas">
          <span translate="OFFLINE_Step2_Label_3">
            Gas Price</span>: {{gas.value}} Gwei
            <input type="range" ng-model="gas.value" min="{{gas.min}}" max="{{gas.max}}" step="{{gas.step}}" ng-change="gasChanged()"/>
            <p class="small col-xs-4 text-left">Cheaper</p>
          <p class="small col-xs-4 text-center">Balanced</p>
          <p class="small col-xs-4 text-right">Faster</p>
          <p class="small" style="white-space:normal;font-weight:300;margin: 1rem 0 0;" translate="GAS_PRICE_Desc"></p>
          <a class="small" translate="x_ReadMore" href="https://support.mycrypto.com/gas/what-is-gas-ethereum.html" target="_blank" rel="noopener noreferrer"></a>
        </div>
      </ul>

    </span>


    <span class="dropdown dropdown-node" ng-cloak>
      <a tabindex="0"
         aria-haspopup="true"
         aria-label="change node. current node {{curNode.name}} node by {{curNode.service}}"
         class="dropdown-toggle"
         ng-click="dropdownNode = !dropdownNode">
           <span translate="X_Network">Network</span>:
           {{curNode.name}}
           <small>({{curNode.service}})</small>
           <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownNode">
        <li ng-repeat="(key, value) in nodeList">
          <a ng-class="{true:'active'}[curNode == key]" ng-click="changeNode(key)">
            {{value.name}}
            <small> ({{value.service}}) </small>
            <img ng-show="value.service=='Custom'" src="images/icon-remove.svg" class="node-remove" title="Remove Custom Node" ng-click="removeNodeFromLocal(value.name)"/>
          </a>
        </li>
        <li>
          <a ng-click="customNodeModal.open(); dropdownNode = !dropdownNode;" translate="X_Network_Custom">
            Add Custom Network / Node
          </a>
        </li>
      </ul>
    </span>

    </div>
  </section>
</section>

<nav role="navigation" aria-label="main navigation" class="container nav-container overflowing">
  <a aria-hidden="true"
     ng-show="showLeftArrow"
     class="nav-arrow-left"
     ng-click="scrollLeft(100);"
     ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
  <div class="nav-scroll">
    <ul class="nav-inner">
      @@if (site === 'web' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.mew"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
      @@if (site === 'cx' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.cx"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
      <li class="nav-item help">
        <a href="https://support.mycrypto.com/" target="_blank" rel="noopener noreferrer">
          <span translate="NAV_Help">
            Help
          </span>
        </a>
      </li>
    </ul>
  </div>
  <a aria-hidden="true"
     ng-show="showRightArrow"
     class="nav-arrow-right"
     ng-click="scrollRight(100);"
     ng-mouseover="scrollHoverIn(false,2);"
     ng-mouseleave="scrollHoverOut()">&#187;</a>
</nav>

@@if (site === 'web' ) { @@include( './header-node-modal.tpl', { "site": "web" } ) }
@@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
