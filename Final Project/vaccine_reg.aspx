<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vaccine_reg.aspx.cs" Inherits="Final_Project.vaccine_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Vaccine Registration</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Patient Name" runat="server" />
                                        <asp:TextBox runat="server" ID="Patient" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Patient Name" />
                                        <asp:RequiredFieldValidator ID="patient_val" ControltoValidate="Patient" runat="server" 
                                            ErrorMessage="Patient Name Must Be Filled"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Place of Birth" runat="server" />
                                        <asp:DropDownList runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Text="Jakarta Pusat" />
                                            <asp:ListItem Text="Jakarta Barat" />
                                            <asp:ListItem Text="Jakarta Selatan" />
                                            <asp:ListItem Text="Jakarta Timur" />
                                            <asp:ListItem Text="Jakarta Utara" />
                                            <asp:ListItem Text="Kab. Kepulauan Seribu" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Date of Birth" runat="server" />
                                        <asp:TextBox ID="DateField" runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="Enter Date of Birth" />
                                        <%--  <asp:comparevalidator runat="server" 
                                           errormessage="The date must be greater than today"
                                            controltovalidate="DateField" type="Date" 
                                            valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControltoValidate="DateField" runat="server" 
                                            ErrorMessage="Date of Birth Must Be Filled"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Identity Number (NIK)" runat="server" />
                                        <asp:TextBox ID="NIK_Field" runat="server" CssClass="form-control" placeholder="Enter 16-Digit NIK Number" />
                                        <asp:RegularExpressionValidator ID="RegExp1" runat="server"
                                            ErrorMessage="NIK Must Be Numeric and 16-Digit"
                                            ControlToValidate="NIK_Field"
                                            ValidationExpression="^[0-9]{16,16}$" />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControltoValidate="NIK_Field" runat="server" 
                                            ErrorMessage="NIK Must Be Filled"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Address" runat="server" />
                                        <asp:TextBox runat="server" ID="address_val" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Address" />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControltoValidate="address_val" runat="server" 
                                            ErrorMessage="Address Must Be Filled"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Vaccine Dose" runat="server" />
                                        <asp:DropDownList runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Text="1st Dose" />
                                            <asp:ListItem Text="2nd Dose" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">`
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Vaccination Date" runat="server" />
                                        <asp:TextBox ID="Vac_Date" runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="Enter Vaccination Date" />
                                        <%--  <asp:comparevalidator runat="server" 
                                         <%--   errormessage="The date must be greater than today"
                                            controltovalidate="DateField" type="Date" 
                                            valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />--%>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControltoValidate="Vac_Date" runat="server" 
                                            ErrorMessage="Vaccination Date Must Be Filled"/>
                                    </div>
                                </div>

                               
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                <asp:Button ID="btnNext" runat="server" Text="Confirm"
                                    PostBackUrl="~/vacreg2.aspx" />
                            </div>
                                </div>
                             
                        </div>




                    </section>
                </div>
            </div>
        </section>
    </section>


</asp:Content>
