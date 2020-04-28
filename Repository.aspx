<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Repository.aspx.cs" Inherits="WebApplication2.Pages.Repository" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <div style="padding-left:260px">
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="lblTest" runat="server" Text="Test" />

        <div id="scrollable-container" style="width: 968px; height: 325px; overflow-y: auto; overflow-x: hidden; border-style: double; border-top: none; background-color:#e6e6e6" onscroll="$(scroll.Y).val(this.scrollTop);">
            <asp:GridView ID="gvLineDisplay" runat="server"></asp:GridView>
            <asp:HiddenField ID="hfScrollPosition" runat="server" Value="0" />
        </div>
    </div>

    <script type="text/javascript" language="javascript">
        var scroll = {
            Y: '#<%= hfScrollPosition.ClientID %>'
        };

        $(document).ready(function () {
            $("#scrollable-container").scrollTop($(scroll.Y).val());
        });
    </script>
</asp:Content>
