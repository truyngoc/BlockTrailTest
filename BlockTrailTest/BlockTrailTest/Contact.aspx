<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BlockTrailTest.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        //var address;
        // C1:
        $(document).ready(function () {
            $.ajax({
                type: 'GET',
                url: 'https://api.blocktrail.com/v1/tBTC/address/2NFmQG8bPRF2HAeBunjkvcMTLX7WoNhmNF7',
                data: { api_key: 'MY_APIKEY' },
                dataType: 'json',
                success: function (data) {
                    //alert(data.balance);
                    var balance = data.balance/100000000;


                    $("#balance").html(balance.toFixed(8));
                    
                }
            });
        });

        // C2:
        $.get('https://api.blocktrail.com/v1/BTC/address/1NcXPMRaanz43b1kokpPuYDdk6GGDvxT2T?api_key=MY_APIKEY',
        function (address) {
            var balance = address.balance / 100000000;
            alert(balance.toFixed(8) + '<br/>' + address.hash160);
        });


        
        //https://www.mkyong.com/jquery/jquery-loop-over-json-string-each-example/

        //var j = '[{"id":"1","name":"test1"},{"id":"2","name":"test2"},{"id":"3","name":"test3"},{"id":"4","name":"test4"},{"id":"5","name":"test5"}]';
        //var json = $.parseJSON(j);
        //$(json).each(function (i, val) {
        //    $.each(val, function (k, v) {
        //        alert(k + " : " + v);
        //    });
        //});


        //$.each(address, function (index, value) {
        //    alert(index + ': ' + value.Name);
        //});

    //    var json = [
	//{ "id": "1", "tagName": "apple" },
	//{ "id": "2", "tagName": "orange" },
	//{ "id": "3", "tagName": "banana" },
	//{ "id": "4", "tagName": "watermelon" },
	//{ "id": "5", "tagName": "pineapple" }
    //    ];

    //    $.each(json, function (idx, obj) {
    //        alert(obj.tagName);
    //    });
    </script>

    <label>Balance: </label> <div id="balance"></div>
</asp:Content>
