<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DoAnNhom.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img {
            height: 300px;
        }

        .fs-18 {
            font-size: 18px;
        }

        .color-prim {
            color: #0a58ca;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
        <asp:DataList ID="dl_chi_tiet" runat="server">
            <ItemTemplate>
                <div class="card mb-3" style="max-width: 100%;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <asp:Image ID="Image2" CssClass="img-fluid rounded-start" runat="server" ImageUrl='<%# "img/" + Eval("anh_san_pham") %>' />
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title fs-4 mb-4">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ten_san_pham") %>'></asp:Label>
                                </h5>
                                <p class="card-text fs-18">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod laborum ut id odit excepturi necessitatibus a ducimus quae corrupti aspernatur ad repellendus dolorem assumenda, ipsam quia voluptas quidem aliquam at, minima facilis! Ullam voluptatem vitae, sapiente vero numquam architecto enim facilis repudiandae, sint voluptates, modi corporis ipsa deserunt! Vero, id.
                                </p>
                                <p class="card-text fs-18 fw-bold">
                                    <small class="text-body-secondary">
                                        <label>Giá Bán: </label>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("gia_ban") %>'></asp:Label>
                                    </small>
                                </p>
                                <p class="card-text fs-18 fw-bold">
                                    <small class="text-body-secondary">
                                        <label>Số Lượng</label>
                                        <asp:TextBox AutoCompleteType="Email" CssClass="form-control mt-2" ID="txt_num" runat="server"></asp:TextBox>
                                    </small>
                                </p>
                                  <small class="text-body-secondary">
                                      <asp:Button CssClass="btn btn-outline-primary" ID="Button2" runat="server" Text="Mua Hàng" />
                                      <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Thêm Vào Giỏ Hàng" OnClick="Button1_Click" CommandArgument='<%# Eval("id_san_pham") %>' />
                                  </small>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:Label CssClass="text-warning" ID="lb_thong_bao" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
