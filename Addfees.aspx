<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Addfees.aspx.cs" Inherits="admin_Addfees" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server">
        <ajaxToolkit:TabPanel ID="tb1" runat="server" HeaderText="Add Fees">
            <ContentTemplate>


                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>Add Fees</strong> </div>
                            <div class="panel-body">
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Fee Type</label>
                                        <asp:TextBox ID="Txtfeety" runat="server" CssClass="form-control mb" ValidationGroup="grp1" AutoCompleteType="Disabled"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-4">
                                        <label class="control-label">Fee Amount</label>
                                        <asp:TextBox ID="txtfeeamont" runat="server" CssClass="form-control mb" TextMode="Number" ValidationGroup="grp1"></asp:TextBox>
                                        <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                                    </div>
                                </div>
                                <div class="col-sm-8 col-sm-offset-2">
                                    <asp:Button ID="submitfeetype" runat="server" CssClass="btn btn-primary" Text="Submit Fee Type" ValidationGroup="grp1" OnClick="submitfeetype_Click" />
                                    <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="tb2" runat="server" HeaderText="Update Fee">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>Add Fees</strong> </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <%--<div class="form-group">--%>

                                    <div class="col-xs-3">
                                        <label class="control-label">Select Fee Type</label>
                                        <%--<asp:UpdatePanel ID="up1" runat="server">
                                                <ContentTemplate>--%>
                                        <asp:DropDownList ID="ddlfeetype" runat="server" CssClass="form-control mb" AutoPostBack="true" OnSelectedIndexChanged="ddlfeetype_SelectedIndexChanged"></asp:DropDownList>
                                        <%--</ContentTemplate>
                                            </asp:UpdatePanel>--%>
                                    </div>
                                </div>
                                <%--</div>--%>
                                <div class="form-group">

                                    <div class="col-xs-3">
                                        <label class="control-label">Fee Type Amount</label><br />
                                        <asp:Label ID="lblamt" runat="server" CssClass="control-label" Text="" ForeColor="Black"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-3">
                                        <label class="control-label">Updated Fee Type Amount</label><br />
                                        <asp:TextBox ID="txtamt" runat="server" CssClass="form-control mb" required AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-xs-offset">
                                    <asp:Button ID="btnupdfee" runat="server" CssClass="btn btn-primary" Text="Update Fee" OnClick="btnupdfee_Click"/>
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

