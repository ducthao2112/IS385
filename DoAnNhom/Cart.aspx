<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="DoAnNhom.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Giỏ Hàng</h5>
            </div>
            <div class="card-body">
                <asp:GridView CssClass="table table-bordered text-center align-content-center" ID="grid_cart" runat="server"></asp:GridView>
            </div>
            <div class="card-footer text-end">
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Mua Hàng" OnClick="Button1_Click" />
            </div>
        </div>
        <asp:Label ID="lb_thong_bao" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
