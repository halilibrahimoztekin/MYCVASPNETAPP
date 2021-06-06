<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSertifikaEkle.aspx.cs" Inherits="BlogWeb.AdminSertifikaEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
       <div class ="form-group">

           <div>

               <asp:Label ID="Label1" runat="server" Text="Sertifika"></asp:Label> 
               <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

           </div>
           <br />
           
           
           <asp:Button ID="Button1" runat="server" CssClass="btn btn-info"  Text="Ekle" OnClick="Button1_Click" />

       </div>


   </form>
</asp:Content>
