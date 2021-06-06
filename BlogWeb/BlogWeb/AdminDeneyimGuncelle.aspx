<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeneyimGuncelle.aspx.cs" Inherits="BlogWeb.AdminDeneyimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
    <div class ="form-group">
            <div>

               <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label> 
               <asp:TextBox ID="GuncellemeID" runat="server" CssClass="form-control"></asp:TextBox>

           </div>

           <div>

               <asp:Label ID="Label1" runat="server" Text="BAŞLIK"></asp:Label> 
               <asp:TextBox ID="BaslikText" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
           <br />
           <div>
               <asp:Label ID="Label2" runat="server" Text="ALTBAŞLIK"></asp:Label>

               <asp:TextBox ID="AltbaslikText" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
            <br />
           <div>
               <asp:Label ID="Label3" runat="server" Text="AÇIKLAMA"></asp:Label>

               <asp:TextBox ID="AciklamaText" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>

           </div>
            <br />
           <div>
               <asp:Label ID="Label4" runat="server" Text="TARİH"></asp:Label>

               <asp:TextBox ID="TarihText" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
            
           

           <br />

           <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />

       </div>
    </form>
</asp:Content>
