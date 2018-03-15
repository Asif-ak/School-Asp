<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="AddClass.aspx.cs" Inherits="admin_ViewClass" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server">
        <ajaxToolkit:TabPanel ID="tb1" runat="server" HeaderText="Add Class">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>Add Class</strong> </div>
                            <div class="panel-body">
                                <%--<form class="form-horizontal">--%>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Select Group</label>
                                        <asp:DropDownList ID="ddlgrpselec" runat="server" CssClass="form-control mb" ValidationGroup="grp1">
                                            <asp:ListItem>Select Group</asp:ListItem>
                                            <asp:ListItem>Nursery</asp:ListItem>
                                            <asp:ListItem>Kinder Garden</asp:ListItem>
                                            <asp:ListItem>Primary (I-IV)</asp:ListItem>
                                            <asp:ListItem>Middle (V-VIII)</asp:ListItem>
                                            <asp:ListItem>Secondary (IX - X)</asp:ListItem>
                                            <asp:ListItem>Oxford (Olevels)</asp:ListItem>
                                        </asp:DropDownList>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Add Level</label>
                                        <asp:TextBox ID="Txtlevel" runat="server" CssClass="form-control mb" ValidationGroup="grp1"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Add Section</label>
                                        <asp:TextBox ID="txtsec" runat="server" CssClass="form-control mb" ValidationGroup="grp1"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Number of Course to be taught</label>
                                        <asp:TextBox ID="txtcoursenum" runat="server" CssClass="form-control mb" ValidationGroup="grp1"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Number of Students Allowed</label>
                                        <asp:TextBox ID="Txtstrength" runat="server" CssClass="form-control mb" TextMode="Number" ValidationGroup="grp1"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>


                                <div class="col-sm-8 col-sm-offset-2">
                                    <asp:Button ID="submitclass" runat="server" CssClass="btn btn-primary" Text="Submit CLass" ValidationGroup="grp1" OnClick="submitclass_Click" />
                                    <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                                </div>

                                <%--</form>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <%-- <div class="form-control">
        <div class="col-xs-4">
            <asp:CheckBox ID ="chk1" runat="server" Checked="false" Text=" Update / Delete Class" CssClass="check-mark" OnCheckedChanged="chk1_CheckedChanged" />
        </div>
    </div>--%>
        <ajaxToolkit:TabPanel ID="tb2" runat="server" HeaderText="Manage Class">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info">

                            <div class="panel-heading"><strong>Class Information</strong> </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <label class="control-label">Select Level</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control mb" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

                                    </div>
                                </div>

                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-xs-3">
                                        <label class="control-label">Subjects Taught Currently </label>
                                        <asp:Label ID="lblstc" runat="server" CssClass="control-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-3">
                                        <label class="control-label">Max Subjects Allowed</label><br />
                                        <asp:Label ID="Lblsuball" runat="server" CssClass="control-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-3">
                                        <label class="control-label">Max Class Strength</label><br />
                                        <asp:Label ID="lblstr" runat="server" CssClass="control-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-3">
                                        <label class="control-label">Current # of Enrollments</label>
                                        <asp:Label ID="lblallstu" runat="server" CssClass="control-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <asp:Button ID="btnrem" runat="server" CssClass="btn btn-danger" Text="Remove class" OnClick="btnrem_Click" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>Update Class</strong></div>
                            <div class="panel-body">
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Number of Course to be taught</label>
                                        <asp:TextBox ID="txtclupd1" runat="server" CssClass="form-control mb" ValidationGroup="grp2"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Number of Students Allowed</label>
                                        <asp:TextBox ID="txtclupd2" runat="server" CssClass="form-control mb" TextMode="Number" ValidationGroup="grp2"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="col-sm-8 col-sm-offset-2">
                                    <asp:Button ID="clupd" runat="server" CssClass="btn btn-primary" Text="Update CLass" ValidationGroup="grp2" OnClick="clupd_Click" />
                                    <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

