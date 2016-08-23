<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BlockTrailTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $.get('https://api.blocktrail.com/v1/tbtc/transaction/3a1c0a8fa96fc6a6d107d2d7a579bd9ccc6b9406ddcb44d08ef453c0988f2380?api_key=MY_APIKEY',
            function (tx) {
                // lay thuoc tinh ngoai cung
                //alert(tx.confirmations);

                // lay gia tri thuoc tinh cua 1 doi tuong thuoc mang ben trong
                //alert(tx.inputs[0].address);
                //alert(tx.outputs[0].address);

                // duyet tat mang doi tuong
                $.each(tx.outputs, function (index, value) {
                    alert(index + ': ' + value.address);
                });

            });
        });
    </script>
</asp:Content>
