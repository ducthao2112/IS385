<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DoAnNhom.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
        <div
            class="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
            <div class="container">
                <div class="col mx-auto">
                    <div class="row">
                        <div class="col-8">
                            <img class="d-block w-100"
                                style="height: 600px" src="img/hinhnendn.jpeg" />
                        </div>
                        <div class="col-4">
                            <div class="text-center">
                                <h3 class="">Đăng Nhập</h3>
                            </div>
                            <div class="login-separater text-center mb-4">
                                <span>ĐĂNG NHẬP VỚI EMAIL</span>
                                <hr />
                            </div>
                            <div class="form-body mt-3">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label for="inputEmailAddress" class="form-label">
                                            Email</label>
                                        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_email" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <label for="inputChoosePassword" class="form-label">
                                            Mật khẩu</label>
                                            <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_password" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-grid">
                                            <asp:Button CssClass="btn btn-danger" BackColor="#db4444" ID="Button1" runat="server" Text="Đăng Nhập" OnClick="Button1_Click" />
                                        </div>
                                        <p class="mt-4 text-center">
                                            Bạn chưa có tài khoản?
                   <a href="Register.aspx" style="color: #db4444; cursor: pointer">Đăng Ký tại đây
                   </a>
                                        </p>
                                    </div>
                                    <div class="col-12">
                                        <asp:Label CssClass="form-label text-danger" ID="lb_thong_bao" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end row-->
            </div>
        </div>
    </div>
</asp:Content>
