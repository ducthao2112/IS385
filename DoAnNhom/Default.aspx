    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DoAnNhom.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .page-content {
            padding: 1.5rem 0 1.5rem 0;
        }

        #ContentPlaceHolder1_dl_sp table tbody {
            display: flex
        }

        .title-sp {
            display: -webkit-box;
            max-width: 100%;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            font-size: 16px;
            line-height: 1.4;
            color: #000;
            text-decoration: none;
            overflow: hidden;
            text-overflow: ellipsis;
            height: 50px;
        }

        .color-prim {
            color:  #0a58ca;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="page-content">
            <div class="row mb-4">
                <div class="col-lg-8">
                    <div id="carouselExample" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                               <img src="img/3.png" class="d-block w-100" alt="..." />
                            </div>
                            <div class="carousel-item">
                                <img src="img/2.png" class="d-block w-100" alt="..." />
                            </div>
                            <div class="carousel-item">
                                <img src="img/1.png" class="d-block w-100" alt="..." />
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span></button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span></button>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="row mb-2">
                        <img src="img/4.png" class="d-block w-100" alt="..." />
                    </div>
                    <div class="row">
                        <img src="img/5.png" class="d-block w-100" alt="..." />
                    </div>
                </div>

            </div>
            <div class="row row-cols-1 row-cols-md-3 row-cols-xl-5">
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons rounded-circle mx-auto bg-light-primary text-primary mb-3"><i class="fa-solid fa-satellite-dish"></i></div>
                                <h4 class="my-1">Sales</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons rounded-circle mx-auto bg-light-danger text-danger mb-3"><i class="fa-solid fa-ticket"></i></div>
                                <h4 class="my-1">Voucher</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons rounded-circle mx-auto bg-light-info text-info mb-3"><i class="fa-solid fa-globe"></i></div>
                                <h4 class="my-1">Hàng Quốc Tế</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons rounded-circle mx-auto bg-light-success text-success mb-3"><i class="fa-solid fa-warehouse"></i></div>
                                <h4 class="my-1">Xả Kho</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons rounded-circle mx-auto bg-light-warning text-warning mb-3"><i class="fa-brands fa-aws"></i></div>
                                <h4 class="my-1">Dịch Vụ</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-content-container pb-5">
            <h5>ĐIỆN THOẠI NỔI BẬT</h5>
            <asp:DataList ID="dl_sp" runat="server" RepeatColumns="6">
                <ItemTemplate>
                    <div class="card p-3 me-1 ms-1 mb-2" style="min-height: 300px">
                        <asp:ImageButton CssClass="card-img-top mb-3" ID="ImageButton1" runat="server" ImageUrl='<%# "img/" + Eval("anh_san_pham") %>' CommandArgument='<%# Eval("id_san_pham") %>' OnClick="ImageButton1_Click" />
                        <asp:LinkButton CssClass="title-sp" ID="LinkButton1" runat="server" Text='<%# Eval("ten_san_pham") %>'></asp:LinkButton>
                        <div class="d-flex mt-1 gap-1">
                            <span class="color-prim">Giá Bán:</span>
                            <asp:Label CssClass="color-prim" ID="Label1" runat="server" Text='<%# Eval("gia_ban") %>'></asp:Label>
                            <span class="color-prim">đ</span>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

</asp:Content>
