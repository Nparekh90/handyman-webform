<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HandymanApp_WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script lang="javascript" type="text/javascript">
        function login() {
            var email = document.getElementById('inputEmail').value;
            var password = document.getElementById('inputPassword').value;
            var data = {
                "email": email,
                "password": password
            };
            console.log(data)
                $.ajax({
                    type: "post",
                    url: '<%= ResolveUrl("~/Default.aspx/Login") %>',
                    data: JSON.stringify(data),
                    contentType: "application/json",
                    success: function (data) {
                        var r = data.d;
                        if (r.RedirectUrl){
                            window.location.href = r.RedirectUrl;
                        }
                    }
                });
             }
    </script>
     <div class="container">
        <div class="jumbotron">
             <h2>Handy Man</h2>
            <h4>Welcome Back!</h4>
        </div>
    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xs-12">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-xs-12">
                <div class="p-5">
                  <div class="user form-row">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="inputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                      <div class="form-group">
                      <div class="custom-control custom-input small">
                          <input class="btn btn-primary btn-user btn-block" onclick="login()" type="button" value="login">
                      </div>
                    </div>
                  </div>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
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
