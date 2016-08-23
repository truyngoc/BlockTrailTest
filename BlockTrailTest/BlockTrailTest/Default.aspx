<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlockTrailTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- google translate language -->
    <div id="google_translate_element"></div>
    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'en', includedLanguages: 'de,en,fr,ja,ko,nl,pt,ru,vi', autoDisplay: false, multilanguagePage: true }, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


    <div class="row">
        <div class="col-md-4">
            <!-- Chart & price bitcoin --->
            <iframe src="http://btcwidget.com/price-chart/widget.php?color=FFFFFF&amp;bgcolor=FFFAFB&amp;chartbg=FFF5F8&amp;lineco=FF0A33&amp;xco=085AFF&amp;yco=FFDE0A" frameborder="0" width="245" height="242" scrolling="no"></iframe>
            <iframe src="http://btcwidget.com/price-ticker-v2/widg.php?color=&amp;font=Roboto&amp;bgcolor=&amp;footer=FFF3F0" frameborder="0" width="279" height="94" scrolling="no"></iframe>
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>
    
</asp:Content>
