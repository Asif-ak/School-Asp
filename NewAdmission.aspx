<%@ Page EnableEventValidation="false" Title="New Admission" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="NewAdmission.aspx.cs" Inherits="admin_NewAdmission" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ContentPlaceHolderID="cpadmin" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>New Admission Form</strong> </div>
                <div class="panel-body">
                    <%--<form method="get" class="form-horizontal">--%>
                    <%--<div class="form-group">--%>
                    <table class="col-md-12">
                        <tr class="col-xs-12">
                            <td class="col-xs-4">
                                <label class="control-label">Please Upload Student Picture</label>
                            </td>
                            <td class="col-xs-4">

                                <asp:FileUpload ID="FileUpload1" runat="server" OnPreRender="FileUpload1_PreRender" required  />
                            </td>
                            <td class="col-xs-4">
                                <%--<label class="control-label">Check To View Image</label>--%>
                                <%--<asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox checkbox-success" Checked="false" OnCheckedChanged="CheckBox1_CheckedChanged" />--%>
                                <%--<asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" />--%>
                            </td>
                            <td class="col-xs-4">
                                <asp:DataList ID="DataList1" runat="server">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Width="120" Height="120" BorderWidth="1" ImageUrl='<%# Eval("~/images/{0}") %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>

                        </tr>
                    </table>
                    <%--<div class="col-xs-4">--%>
                    <%--<label class="control-label">Student Name</label>--%>
                    <%--<input type="text" placeholder="Default input" class="form-control mb">--%>

                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Student Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Father Name</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Mother Name</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Religion</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Nationality</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Date of Birth</label><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <ajaxToolkit:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" BehaviorID="TextBox6_CalendarExtender" DefaultView="Days" PopupPosition="BottomLeft" TargetControlID="TextBox6" />
                                    <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox6"  />--%>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control mb fa-calendar" required></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            
                            
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Place of Birth</label>
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Gender</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio radio-primary" required>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Any Physical Deformity</label>
                            <asp:RadioButtonList ID="rbgender" runat="server" CssClass="radio radio-primary">
                                <asp:ListItem Text="NO" Value="No"></asp:ListItem>
                                <asp:ListItem Text="YES" Value="Yes"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Address</label>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Mobile</label>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Father Occupation</label>
                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Monthly Income</label>
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Previous School</label>
                            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Reasons for Leaving</label>
                            <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">How did you hear about us?</label>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="radio radio-primary">
                                <asp:ListItem Text="Advertisement" Value="Advertisement"></asp:ListItem>
                                <asp:ListItem Text="Referel" Value="Referel"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Other Contact Name</label>
                            <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Other Contact Number</label>
                            <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Class Applied For</label><asp:UpdatePanel ID="up1" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control mb" AutoPostBack="True" onchange="false"></asp:DropDownList>
                                </ContentTemplate>
                                                                                  </asp:UpdatePanel>
                            

                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">ID Copy Attached</label>
                            <asp:RadioButtonList ID="ICA" runat="server" CssClass="radio radio-primary">
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Birth Certificate Attached</label>
                            <asp:RadioButtonList ID="BCA" runat="server" CssClass="radio radio-primary">
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <%--<div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Photos Attached</label>
                            <input type="text" placeholder="Default input" class="form-control mb">
                        </div>
                    </div>--%>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">School Leaving Certificate</label>
                            <asp:RadioButtonList ID="SLC" runat="server" CssClass="radio radio-primary">
                                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>


                    <div class="hr-dashed"></div>

                    <div class="hr-dashed"></div>

                    <div class="hr-dashed"></div>

                    <div class="hr-line-dashed"></div>

                    <div class="hr-line-dashed"></div>

                    <div class="hr-dashed"></div>

                    <div class="hr-dashed"></div>

                    <div class="hr-dashed"></div>


                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:Button ID="btnreg" runat="server" Text="Register Student" CssClass="btn btn-primary" OnClick="btnreg_Click" />
                            <asp:Button ID="btncan" runat="server" Text="Cancel" CssClass="btn btn-default" />
                            <%--<button class="btn btn-default" type="submit">Cancel</button>--%>
                            <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                        </div>
                    </div>
                    <%--</form>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


