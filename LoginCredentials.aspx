<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="LoginCredentials.aspx.cs" Inherits="admin_LoginCredentials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading"><strong>Create Login Credentials</strong> </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-xs-4">
                            <label class="control-label">User Name</label>
                            
                            <asp:TextBox ID="txtuname" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-4">
                            <label class="control-label">Password</label>
                            
                            <asp:TextBox ID="txtupass" runat="server" CssClass="form-control mb" TextMode="Password" AutoCompleteType="Disabled" required ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-4">
                            <label class="control-label">Confirm Password</label>
                            
                            <asp:TextBox ID="txtupasscn" runat="server" CssClass="form-control mb" TextMode="Password" AutoCompleteType="Disabled" required ></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-xs-4">
                            <label class="control-label">Select User Roll</label>
                            <asp:DropDownList ID="ddlroll" runat="server" CssClass="form-control mb" ValidationGroup="grp1">
                                <asp:ListItem>Select Group</asp:ListItem>
                                <asp:ListItem>admin</asp:ListItem>
                                <asp:ListItem>accountant</asp:ListItem>
                                <asp:ListItem>teacher</asp:ListItem>
                               
                            </asp:DropDownList>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>

                    <div class="col-sm-8 col-sm-offset-2">
                        <asp:Button ID="submitlogin" runat="server" CssClass="btn btn-primary" Text="Submit login" ValidationGroup="grp1" OnClick="submitlogin_Click"/>
                        <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

