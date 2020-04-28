<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript" language="javascript">
    var scroll = {
        Y: '#<%= hfScrollPosition.ClientID %>'
    };

    $(document).ready(function () {
        $("#scrollable-container").scrollTop($(scroll.Y).val());
    });
</script>

<div style="padding-left:260px">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Label ID="lblTest" runat="server" Text="Test" />

    <div id="scrollable-container" style="width: 968px; height: 325px; overflow-y: auto; overflow-x: hidden; border-style: double; border-top: none; background-color:#e6e6e6" onscroll="$(scroll.Y).val(this.scrollTop);">
        <asp:GridView ID="gvLineDisplay" runat="server"></asp:GridView>
        <asp:HiddenField ID="hfScrollPosition" runat="server" Value="0" />
    </div>
</div>

</asp:Content>
