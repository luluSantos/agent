<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="agent.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--Subheader area - only for certain pages -->
    <div id="Subheader">
        <div class="container">
            <div class="column one">
                <h1 class="title">Registration</h1>
                <!--BreadCrumbs area-->
                <ul class="breadcrumbs">
                    <li>
                        <a href="index.html">Home</a><span><i class="icon-right-open"></i></span>
                    </li>
                    <li>
                        <a href="contact.html">Registration</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content_wrapper clearfix">
        <div class="sections_group">
            <div class="entry-content">
                <div class="section section-border-top flv_sections_21">
                    <div class="section_wrapper clearfix">
                        <div class="items_group clearfix">
                            <div class="column one column_column">
                                <div class="column_attr ">
                                    <div>
                                        <h2>Login Here.</h2>
                                        <p>
                                            <span class="big">If you got any questions, please do not hesitate to send us a message. We reply within <span class="tooltip" data-tooltip="Mon-Fri 8:00am-6:00pm (GMT +1)" >24 hours</span> !</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="column one-third column_column">
                                <div class="column_attr ">
                                    <div id="contactWrapper">
                                            <!-- One Third (1/3) Column -->
                                            <div class="column one">
                                                <label><span style="color:red;">*</span>E-mail address:</label><span>
                                                        <asp:TextBox runat="server" ID="txtRegEmail" size="40" TextMode="Email"></asp:TextBox>
											        </span>
                                                <asp:RequiredFieldValidator ID="rfvRegEmail" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="Email cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revRegEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtRegEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </div>
                                            <!-- One Third (1/3) Column -->
                                            <div class="column one">
                                                <label><span style="color:red;">*</span>Password:</label><span>
                                                        <asp:TextBox runat="server" ID="txtRegPassword" size="40" TextMode="Password"></asp:TextBox>
											        </span>
                                                <asp:RequiredFieldValidator ID="rfvRegPassword" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="Password cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revRegPassword" runat="server" ValidationExpression="^.*(?=.{8,})(?=.*[\d]).*$" ControlToValidate="txtRegPassword" ErrorMessage="Password must be alphanumerical and contain at least 8 characters." ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </div>                                    
                                            <div class="column one align_right">
                                                    <asp:Button runat="server" ID="btnSubmitReg" Text="Login" Enabled="true" BackColor="Gray" />
                                            </div>
                                            <div class="modal fade" id="myModal" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title"><asp:Label ID="lblRegModalTitle" runat="server" Text="Registration"></asp:Label></h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <asp:Label ID="lblRegModalMessage" runat="server" Text="Test"></asp:Label>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <asp:Button ID="btnRegModalOk" runat="server" Text="Ok"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function showModal() {
                $("#myModal").modal('show');
            }
        </script>
</asp:Content>
