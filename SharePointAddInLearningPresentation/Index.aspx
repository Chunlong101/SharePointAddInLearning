<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SharePointAddInLearningPresentation.Index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/sharepoint-210x210.png" type="image/x-icon">
    <meta name="description" content="">

    <title>Home</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons2/mobirise2.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">

    <style type="text/css">
        .center-in-center {
            position: fixed;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>

</head>
<body>
    <%--Header--%>
    <section class="menu cid-rMCUOtwkB5" once="menu" id="menu1-f">
        <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="menu-logo">
                <div class="navbar-brand">
                    <span class="navbar-logo">
                        <a href="#top">
                            <img src="assets/images/sharepoint-210x210.png" alt="" title="" style="height: 3.8rem;">
                        </a>
                    </span>
                    <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="#top">CSS SharePoint Advanced Learning</a></span>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                    <li class="nav-item">
                        <a class="nav-link link text-white display-4" href="AboutUs.html"><span class="mobi-mbri mobi-mbri-users mbr-iconfont mbr-iconfont-btn"></span>
                            About Us
                    </a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>

    <%--Section 1, Home--%>
    <section class="header6 cid-rMCUWuLP4Q mbr-fullscreen mbr-parallax-background" id="header6-g">
        <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(35, 35, 35);">
        </div>
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="mbr-white col-md-10">
                    <h1 class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">SharePoint Development</h1>
                    <p class="mbr-text align-center pb-3 mbr-fonts-style display-5">SharePoint Add-in Topic Sharing Session</p>
                    <div class="mbr-section-btn align-center"><a class="btn btn-md btn-primary display-4" href="index.aspx#header12-i">Start</a></div>
                </div>
            </div>
        </div>
        <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
            <a href="#next">
                <i class="mbri-down mbr-iconfont"></i>
            </a>
        </div>
    </section>

    <%--Section 2, Agenda--%>
    <section class="header12 cid-rMFj4dNama mbr-fullscreen mbr-parallax-background" id="header12-i">
        <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(35, 35, 35);">
        </div>
        <div class="container  ">
            <div class="media-container">
                <div class="col-md-12 align-center">
                    <h1 class="mbr-section-title pb-3 mbr-white mbr-bold mbr-fonts-style display-1">Agenda</h1>
                    <p class="mbr-text pb-3 mbr-white mbr-fonts-style display-5">
                        In this session, let's put our focus on "SharePoint Add-In" and divide it into below 4 breakdowns:&nbsp;
                    </p>
                    <div class="icons-media-container mbr-white">
                        <div class="card col-12 col-md-6 col-lg-3">
                            <div class="icon-block">
                                <a href="Overview.html">
                                    <span class="mbr-iconfont mbrib-calendar"></span>
                                </a>
                            </div>
                            <h5 class="mbr-fonts-style display-5">1. Overview</h5>
                        </div>

                        <div class="card col-12 col-md-6 col-lg-3">
                            <div class="icon-block">
                                <a href="OAuth.html">
                                    <span class="mbr-iconfont mobi-mbri-unlock mobi-mbri"></span>
                                </a>
                            </div>
                            <h5 class="mbr-fonts-style display-5">2. OAuth</h5>
                        </div>

                        <div class="card col-12 col-md-6 col-lg-3">
                            <div class="icon-block">
                                <a href="RestApi.html">
                                    <span class="mbr-iconfont mobi-mbri-code mobi-mbri"></span>
                                </a>
                            </div>
                            <h5 class="mbr-fonts-style display-5">3. Rest Api</h5>
                        </div>

                        <div class="card col-12 col-md-6 col-lg-3">
                            <div class="icon-block">
                                <a href="index.aspx#header15-j">
                                    <span class="mbr-iconfont mbrib-rocket"></span>
                                </a>
                            </div>
                            <h5 class="mbr-fonts-style display-5">4. Demo</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
            <a href="#next">
                <i class="mbri-down mbr-iconfont"></i>
            </a>
        </div>
    </section>

    <!---Formbuilder Form--->
    <form runat="server" id="form">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <%--Section 3, Demo--%>
                <section class="header15 cid-rMFshX240w mbr-fullscreen mbr-parallax-background" id="header15-j">

                    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(7, 59, 76);"></div>
                    <div class="container align-right">
                        <div class="row">
                            <div class="mbr-white col-lg-8 col-md-7 content-container">
                                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">Demo</h1>
                                <p class="mbr-text pb-3 mbr-fonts-style display-5">
                                    In this demo we're using CSOM to communicate with our sharepoint.<br>
                                    This form connects one of our sharepoint lists.<br>
                                    <br>
                                </p>
                            </div>
                            <div class="col-lg-4 col-md-5">
                                <div class="form-container">
                                    <div class="media-container-column">
                                        <div class="dragArea row">
                                            <div class="col-md-12 form-group " data-for="name">
                                                <asp:TextBox ID="txtName" runat="server" type="text" name="name" placeholder="Name" data-form-field="Name" class="form-control px-3 display-7"></asp:TextBox>
                                            </div>
                                            <div class="col-md-12 form-group " data-for="email">
                                                <asp:TextBox ID="txtEmail" runat="server" type="email" name="email" placeholder="Email" data-form-field="Email" class="form-control px-3 display-7"></asp:TextBox>
                                            </div>
                                            <div data-for="phone" class="col-md-12 form-group ">
                                                <asp:TextBox ID="txtPhone" runat="server" type="tel" name="phone" placeholder="Phone" data-form-field="Phone" class="form-control px-3 display-7"></asp:TextBox>
                                            </div>
                                            <div data-for="message" class="col-md-12 form-group ">
                                                <asp:TextBox ID="txtMsg" runat="server" name="message" placeholder="Message" data-form-field="Message" class="form-control px-3 display-7"></asp:TextBox>
                                            </div>
                                            <div class="col-md-12 input-group-btn">
                                                <asp:Button ID="btnSubmit1" runat="server" CssClass="btn btn-primary" data-loading-text="Loading..." Text="Submit" class="btn btn-secondary btn-form display-4" OnClick="btnSubmit1_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
                        <a href="#next">
                            <i class="mbri-down mbr-iconfont"></i>
                        </a>
                    </div>
                </section>

                <%--Section 4, Demo--%>
                <section class="header11 cid-rMGCVaBAjN mbr-fullscreen" id="header11-p">
                    <div class="container align-left">
                        <div class="media-container-column mbr-white col-md-12">
                            <h1 class="mbr-section-title py-3 mbr-fonts-style display-5">In this demo we're using rest api to reder a list agaist sharepoint.&nbsp;</h1>
                            <div class="table-responsive">
                                <asp:GridView ID="gvList" runat="server" CssClass="table table-hover"></asp:GridView>
                            </div>
                            <div class="mbr-section-btn py-4">
                                <asp:Button ID="btnGetListItems" runat="server" CssClass="btn btn-primary" data-loading-text="Loading..." Text="Get List Items" OnClick="btnGetListItems_Click" />
                            </div>
                        </div>
                    </div>
                </section>

            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1" class="center-in-center container">
            <ProgressTemplate>
                <div class="row">
                    <div class="container-fluid text-center">
                        <img src="assets/images/loading.gif" class="img-fluid" />
                    </div>
                </div>
                <div class="row">
                    <div class="container-fluid text-center">Loading...</div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

    </form>
    <!---Formbuilder Form--->

    <%--Footer--%>
    <section once="footers" class="cid-rMGBivKnuv" id="footer6-o">
        <div class="container">
            <div class="media-container-row align-center mbr-white">
                <div class="col-12">
                    <p class="mbr-text mb-0 mbr-fonts-style display-7">
                        CSS SharePoint 2019 Advanced Learning Program SharePoint Add-in Topic<br>
                        chunlonl@microsoft.com
                    </p>
                </div>
            </div>
        </div>
    </section>

    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/dropdown/js/nav-dropdown.js"></script>
    <script src="assets/dropdown/js/navbar-dropdown.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/parallax/jarallax.min.js"></script>
    <script src="assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
    <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/theme/js/script.js"></script>

</body>
</html>
