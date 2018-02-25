<main class="tab-pane block--container active"
      ng-if="globalService.currentTab==globalService.tabs.generateWallet.id"
      ng-controller='walletGenCtrl'
      role="main"
      ng-cloak>

  <article class="block__wrap gen__1" ng-show="!wallet && !showGetAddress">

    <section class="block__main gen__1--inner">
      <br />
      <h1 translate="NAV_GenerateWallet" aria-live="polite">
        Create New Wallet
      </h1>
      <div class="ves_backup_message">
        <span translate="x_VES_Generate1">Choose a strong, hard to guess password for your new wallet.<br/>You can back up your password with</span>
        <a href="https://www.vesvault.com" target="_blank" class="ves_icon_prp" title="VESvault"></a>
        <span translate="x_VES_Generate2">after this step.</span>
      </div>
      <h4 translate="GEN_Label_1">
        Enter password
      </h4>
      <div class="input-group">
        <input name="password"
             class="form-control"
             type="{{showPass && 'password' || 'text'}}"
             placeholder="{{'GEN_Placeholder_1' | translate }}"
             ng-model="password"
             ng-class="isStrongPass() ? 'is-valid' : 'is-invalid'"
             aria-label="{{'GEN_Label_1' | translate}}"/>
        <span tabindex="0"
              aria-label="make password visible"
              role="button"
              class="input-group-addon eye"
              ng-click="showPass=!showPass">
        </span>
      </div>
      <a tabindex="0"
         role="button"
         class="btn btn-primary"
         ng-click="genNewWallet()"
         translate="NAV_GenerateWallet">
           Generate Wallet
      </a>
      <p translate="x_PasswordDesc"></p>
      <div class="text-center">
        <strong>
          <a href="https://support.mycrypto.com/getting-started/creating-a-new-wallet-on-mycrypto.html"
             target="_blank"
             rel="noopener noreferrer"
             translate="GEN_Help_5">
               How to Create a Wallet
          </a>
          &nbsp;&nbsp;&middot;&nbsp;&nbsp;
          <a href="https://support.mycrypto.com/getting-started/getting-started-new.html"
             target="_blank"
             rel="noopener noreferrer"
             translate="GEN_Help_6">
               Getting Started
          </a>
        </strong>
      </div>
      <br>
    </section>

    <section class="block__help">

      <h2 translate="GEN_Help_0">
        Already have a wallet somewhere?
      </h2>

      <ul>
        <li>
          <p>
            <strong>
              Ledger / TREZOR / Digital Bitbox
            </strong>:
            <span translate="GEN_Help_1">
              Use your
            </span>
            <a ng-click="globalService.currentTab=globalService.tabs.sendTransaction.id">
              hardware wallet
            </a>.
            <span translate="GEN_Help_3">
              Your device * is * your wallet.
            </span>
          </p>
        </li>
      </ul>

      <ul>
        <li>
          <p>
            <strong>
              MetaMask
            </strong>
            <span>
              Connect via your
            </span>
            <a ng-click="globalService.currentTab=globalService.tabs.sendTransaction.id">
              MetaMask Extension
            </a>.
            <span translate="GEN_Help_MetaMask">
              So easy! Keys stay in MetaMask, not on a phishing site! Try it today.
            </span>
          </p>
        </li>
      </ul>

      <ul>
        <li>
          <p>
            <strong>
              Jaxx / imToken
            </strong>
            <span translate="GEN_Help_1">Use your</span>
            <a ng-click="globalService.currentTab=globalService.tabs.sendTransaction.id" translate="x_Mnemonic">
              Mnemonic Phrase
            </a>
            <span translate="GEN_Help_2">
              to access your account.
            </span>
        </p>
        </li>
      </ul>

      <ul>
        <li>
          <p>
            <strong>
              Mist / Geth / Parity:
            </strong>
            <span translate="GEN_Help_1">
              Use your
            </span>
            <a ng-click="globalService.currentTab=globalService.tabs.sendTransaction.id" translate="x_Keystore2">
              Keystore File (UTC / JSON)
            </a>
            <span translate="GEN_Help_2">
              to access your account.
            </span>
          </p>
        </li>
      </ul>

    </section>

  </article>

<article role="main" class="block__wrap gen__2" ng-show="wallet && !showPaperWallet && !ves" > <!-- -->
<section class="block__main gen__2--inner">
      <br />
      <h1 translate="x_VES_Label2">
        Backup your wallet password with VES
      </h1>
      <a tabindex="0" role="button"
         class="btn ves_backup_btn"
         ng-click="ves_backup()">
        
        <span translate="x_VES_Keystore2">
         Backup your wallet password with VES
        </span>
        <span class="ves_icon"></span>
      </a>
      <div class="ves_msg">
        <span class="ves_loading_msg" ng-show="ves_status=='starting'" translate="x_VES_starting">Connecting to VES...</span>
        <span class="ves_loading_msg" ng-show="ves_status=='loading'" translate="x_VES_backup_loading">Backing up your wallet password with VES...</span>
        <span class="ves_success_msg" ng-show="ves_status=='ok'" translate="x_VES_backup_ok">Your wallet password has been backed up with VES.</span>
        <span class="ves_warn_msg" ng-show="ves_status=='error'" ng-bind="ves_error_msg"></span>
      </div>
      <div class="ves_info_links">
        <a href="https://www.vesvault.com" target="_blank" translate="x_VES_link_vesvault">Visit VESvault to learn more</a> &nbsp; &nbsp; &nbsp;
        <a href="https://wallet.ves.world/assets/download/VES-Wallet-Overview.pdf" target="_blank" translate="x_VES_link_download">VES integration overview</a><br/><br/>
      </div>
      <a tabindex="0" role="button"
         class="ves_link ves_cancel_link"
         ng-click="ves_cancel()">
        
        <span translate="x_VES_Keystore3">
        Proceed without VES
        </span>
      </a>
      <div class="ves_cancel_msg" translate="x_VES_Keystore4">(you'll be able to back up the password with VES the next time you unlock your wallet)</div>
      
    </section>
</article>

  <article role="main" class="block__wrap gen__2" ng-show="wallet && !showPaperWallet && ves" > <!-- -->
    <section class="block__main gen__2--inner">
      <br />
      <h1 translate="GEN_Label_2">
        Save your Keystore File (UTC / JSON)
      </h1>

      <a tabindex="0" role="button"
         class="btn btn-primary"
         href="{{blobEnc}}"
         download="{{encFileName}}"
         aria-label="{{'x_Download'|translate}} {{'x_Keystore'|translate}}"
         aria-describedby="x_KeystoreDesc"
         ng-click="downloaded()"
         target="_blank" rel="noopener noreferrer">
        <span translate="x_Download">
          DOWNLOAD
        </span>
        <span translate="x_Keystore2">
          Keystore File (UTC / JSON)
        </span>
      </a>

      <div class="ves_message">
        <span class="ves_success_msg" ng-show="ves_status=='ok'" translate="x_VES_backup_ok">Your wallet password has been backed up with VES.</span>
      </div>

      <div class="warn">
        <p translate="GEN_Warning_1">
          **Do not lose it!** It cannot be recovered if you lose it.
        </p>
        <p translate="GEN_Warning_2">
          **Do not share it!** Your funds will be stolen if you give this information to anyone.
        </p>
        <p translate="GEN_Warning_3">
          **Make a backup!** Secure it like the millions of dollars it may one day be worth.
        </p>
      </div>

      <p>
        <a tabindex="0"
           role="button"
           class="btn btn-danger"
           ng-class="fileDownloaded ? '' : 'disabled' "
           ng-click="continueToPaper()">
            <span translate="GET_ConfButton">
              I understand. Continue.
            </span>
        </a>
      </p>

    </section>

    <section class="block__help">
      <h2 translate="GEN_Help_8">
        Not Downloading a File?
      </h2>
      <ul>
        <li translate="GEN_Help_9">
          Try using Google Chrome
        </li>
        <li translate="GEN_Help_10">
          Right click &amp; save file as. Filename:
        </li>
        <input value="{{encFileName}}" class="form-control input-sm" />
      </ul>

      <h2 translate="GEN_Help_11">
        Don't open this file on your computer
      </h2>
      <ul>
        <li translate="GEN_Help_12">
          Use it to unlock your wallet via MyCrypto (or Mist, Geth, Parity &amp; other wallet clients.)
        </li>
      </ul>

      <h2 translate="GEN_Help_4">Guides &amp; FAQ</h2>
      <ul>
        <li>
          <a href="https://support.mycrypto.com/getting-started/backing-up-your-new-wallet.html" target="_blank" rel="noopener noreferrer">
            <strong translate="GEN_Help_13">
              How to Back Up Your Keystore File
            </strong>
          </a>
        </li>
        <li>
          <a href="https://support.mycrypto.com/private-keys-passwords/difference-beween-private-key-and-keystore-file.html" target="_blank" rel="noopener noreferrer">
            <strong translate="GEN_Help_14">
              What are these Different Formats?
            </strong>
          </a>
        </li>
      </ul>

    </section>

  </article>


  <article role="main" class="block__wrap gen__3" ng-show="showPaperWallet">

    <section class="block__main gen__3--inner">

      <br />

      <h1 translate="GEN_Label_5"> Save your Private Key</h1>
      <textarea aria-label="{{'x_PrivKey'|translate}}"
             aria-describedby="{{'x_PrivKeyDesc'|translate}}"
             class="form-control"
             readonly="readonly"
             rows="3"
             style="max-width: 50rem;margin: auto;"
      >{{wallet.getPrivateKeyString()}}</textarea>
      <br />

      <a tabindex="0"
         aria-label="{{'x_Print'|translate}}"
         aria-describedby="x_PrintDesc"
         role="button"
         class="btn btn-primary"
         ng-click="printQRCode()"
         translate="x_Print">
          PRINT
      </a>

      <div class="warn">
        <p translate="GEN_Warning_1">
          **Do not lose it!** It cannot be recovered if you lose it.
        </p>
        <p translate="GEN_Warning_2">
          **Do not share it!** Your funds will be stolen if you give this information to anyone.
        </p>
        <p translate="GEN_Warning_3">
          **Make a backup!** Secure it like the millions of dollars it may one day be worth.
        </p>
      </div>

      <br />

      <a class="btn btn-default btn-sm" ng-click="getAddress()">
        <span translate="GEN_Label_3"> Save your Address </span> →
      </a>

    </section>

    <section class="block__help">
      <h2 translate="GEN_Help_4">
        Guides &amp; FAQ
      </h2>
      <ul>
        <li><a href="https://support.mycrypto.com/getting-started/backing-up-your-new-wallet.html" target="_blank" rel="noopener noreferrer">
          <strong translate="HELP_2a_Title">
            How to Save & Backup Your Wallet.
          </strong>
        </a></li>
        <li><a href="https://support.mycrypto.com/getting-started/protecting-yourself-and-your-funds.html" target="_blank" rel="noopener noreferrer">
          <strong translate="GEN_Help_15">Preventing loss &amp; theft of your funds.</strong>
        </a></li>
        <li><a href="https://support.mycrypto.com/private-keys-passwords/difference-beween-private-key-and-keystore-file.html" target="_blank" rel="noopener noreferrer">
          <strong translate="GEN_Help_16">What are these Different Formats?</strong>
        </a></li>
      </ul>

      <h2 translate="GEN_Help_17">
        Why Should I?
      </h2>
      <ul>
        <li translate="GEN_Help_18">
          To have a secondary backup.
        </li>
        <li translate="GEN_Help_19">
          In case you ever forget your password.
        </li>
        <li>
          <a href="https://support.mycrypto.com/offline/ethereum-cold-storage-with-mycrypto.html" target="_blank" rel="noopener noreferrer" translate="GEN_Help_20">Cold Storage</a>
        </li>
      </ul>

      <h2 translate="x_PrintDesc"></h2>

    </section>

  </article>

  <article class="text-left" ng-show="showGetAddress">
    <div class="clearfix collapse-container">

      <div ng-click="wd = !wd">
        <a class="collapse-button"><span ng-show="wd">+</span><span ng-show="!wd">-</span></a>
        <h1 traslate="GEN_Unlock">Unlock your wallet to see your address</h1>
        <p translate="x_AddessDesc"></p>
      </div>

      <div ng-show="!wd">
          @@if (site === 'web' ) {  <wallet-decrypt-drtv></wallet-decrypt-drtv>         }
          @@if (site === 'cx' )  {  <cx-wallet-decrypt-drtv></cx-wallet-decrypt-drtv>   }
      </div>
    </div>

    <div class="row" ng-show="wallet!=null" ng-controller='viewWalletCtrl'>
      @@if (site === 'cx' ) {  @@include( './viewWalletInfo-content.tpl', { "site": "cx" } )    }
      @@if (site === 'web') {  @@include( './viewWalletInfo-content.tpl', { "site": "web" } )   }
    </div>

  </article>

</main>
