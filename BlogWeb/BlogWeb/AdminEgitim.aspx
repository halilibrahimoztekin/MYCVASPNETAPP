<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitim.aspx.cs" Inherits="BlogWeb.AdminEgitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
    <table class="table table-bordered">

        <tr>

            <th>ID</th>
            <th>BASLIK</th>
            <th>ALTBASLIK</th>
            <th>AÇIKLAMA</th>
            
            <th>GNO</th>
            <th>TARİH</th>
            <th>İŞLEMLER</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID")%></td>
                        <td><%# Eval("BASLIK")%></td>
                        <td><%# Eval("ALTBASLIK")%></td>
                        <td><%# Eval("ACIKLAMA")%></td>
                        <td><%# Eval("GNOT")%></td>
                        <td><%# Eval("TARIH")%></td>
                       <td>
                           <asp:HyperLink NavigateUrl='<%# "AdminEgitimSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                           <asp:HyperLink NavigateUrl='<%# "AdminEgitimGuncelle.Aspx?ID="+ Eval ("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>

                       </td>
                    </tr>


                </ItemTemplate>



            </asp:Repeater>
        </tbody>

    </table>
    
    <asp:HyperLink NavigateUrl="~/AdminEgitimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary" BackColor="blue" >Eğitim Ekle</asp:HyperLink>
    </form>






</asp:Content>
