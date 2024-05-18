<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DoAnNhom.Register" %>

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
                                <h3 class="">Đăng ký</h3>
                            </div>
                            <div class="login-separater text-center mb-4">
                                <span>ĐĂNG KÝ VỚI EMAIL</span>
                                <hr />
                            </div>
                            <div class="form-body mt-3">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label for="inputEmailAddress" class="form-label">
                                            Họ và Tên</label>
                                        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_name" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <label for="inputEmailAddress" class="form-label">
                                            Email</label>
                                        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_email" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <label for="inputEmailAddress" class="form-label">
                                            Số Điện Thoại</label>
                                        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_phone" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <label for="inputChoosePassword" class="form-label">
                                            Mật khẩu</label>
                                            <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="txt_password" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-grid">
                                            <asp:Button ID="Button1" CssClass="btn btn-danger" BackColor="#db4444" runat="server" Text="Đăng Ký" OnClick="Button1_Click" />
                                        </div> 
                                        <p class="mt-4 text-center">
                                            Bạn đã có tài khoản?
                      <a href="Login.aspx" style="color: #db4444; cursor: pointer">Đăng nhập tại đây
                      </a>
                                        </p>
                                    </div>
                                    <div class="col-12">
                                        <asp:Label ID="lb_thong_bao" CssClass="form-label text-danger" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
