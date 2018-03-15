<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Registrationfee.aspx.cs" Inherits="admin_Registrationfee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server">
        <ajaxToolkit:TabPanel ID="tb1" runat="server" HeaderText="Registration Fee Challan Issue">
            <ContentTemplate>


                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>New Admission Fee Form Issue</strong> </div>
                            <div class="panel-body">
                                <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <label class="control-label">Please select Student</label>
                                        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>--%>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control mb" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                        <%--</ContentTemplate>
                                    </asp:UpdatePanel>--%>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <label class="control-label">Please select Fee Type</label>
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="checkbox-circle" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged"></asp:CheckBoxList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <asp:Label ID="Label1" runat="server" Text="Month" CssClass="control-label" Visible="false"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control mb" Visible="false"></asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-sm-8 col-sm-offset-2">
                                    <asp:Button ID="Savefees" runat="server" CssClass="btn btn-primary" Text="Save and Print Fees" OnClick="Savefees_Click" />
                                    <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>

        <ajaxToolkit:TabPanel ID="tb3" runat="server" HeaderText="Monthly Fees Challan Issue">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><strong>Monthly Fee Form Issue</strong> </div>
                            <div class="panel-body">
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="tb2" runat="server" HeaderText="Fee Reciept">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-success">
                            <div class="panel-heading"><strong>Fee Reciepts</strong> </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <label class="control-label">Please Enter Challan Number</label><br />
                                        <asp:TextBox ID="txtchallan" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                                        <asp:Button ID="btnchallan" runat="server" CssClass="btn btn-success" Text="Search" OnClick="btnchallan_Click" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                                        </div>
                                    </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <asp:ListBox ID="ListBox1" runat="server">
                                            
                                        </asp:ListBox>
                                        </div>
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

