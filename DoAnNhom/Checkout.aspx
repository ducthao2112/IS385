<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="DoAnNhom.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }

        .auto-style2 {
            width: 82px;
        }

        .auto-style3 {
            height: 28px;
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" py-5">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Xác Nhận Đơn Hàng
                        </h5>
                    </div>
                    <div class="card-body">
                        <asp:DataList ID="dl_chi_tiet_don_hang" runat="server" RepeatColumns="1">
                            <ItemTemplate>
                                <div class="d-flex w-100">
                                    <span style="min-width: 120px" class="me-3 mb-3">Tên Khách Hàng: </span>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ho_va_ten") %>'></asp:Label>
                                </div>
                                <div class="d-flex">
                                    <span style="min-width: 120px" class="me-3 mb-3">Số Điện Thoại: </span>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("so_dien_thoai") %>'></asp:Label>
                                </div>
                                <div class="d-flex">
                                    <span style="min-width: 120px" class="me-3 mb-3">Tổng Tiền: </span>
                                    <asp:Label ID="lb_tt" runat="server" Text='<%# Eval("thanh_tien") %>'></asp:Label>Đ
                            </ItemTemplate>
                        </asp:DataList>
                        
                </div>
                <asp:Label ID="lb_thong_bao" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>
    </div>
</asp:Content>
