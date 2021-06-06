<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitimGuncelle.aspx.cs" Inherits="BlogWeb.AdminEgitimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
       <div class ="form-group">
            <div>

               <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label> 
               <asp:TextBox ID="txtguncelleme" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
           <br />
           <div>

               <asp:Label ID="Label1" runat="server" Text="BAŞLIK"></asp:Label> 
               <asp:TextBox ID="txtbaslik" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
           <br />
           <div>
               <asp:Label ID="Label2" runat="server" Text="ALTBAŞLIK"></asp:Label>

               <asp:TextBox ID="txtaltbaslik" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
            <br />
           <div>
               <asp:Label ID="Label3" runat="server" Text="AÇIKLAMA"></asp:Label>

               <asp:TextBox ID="txtaciklama" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>

           </div>
            <br />
           <div>
               <asp:Label ID="Label5" runat="server" Text="Genel Not Ortalaması"></asp:Label>

               <asp:TextBox ID="txtgno" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>

           </div>
            <br />
           <div>
               <asp:Label ID="Label4" runat="server" Text="TARİH"></asp:Label>

               <asp:TextBox ID="txttarih" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
            
           <br />
           <asp:Button runat="server" Text="Güncelle" OnClick="Unnamed1_Click" CssClass="btn btn-success" BackColor="BlueViolet" />

       </div>


   </form>


</asp:Content>
