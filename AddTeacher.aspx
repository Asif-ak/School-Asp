<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="admin_AddTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Add Teacher </strong> </div>
                <div class="panel-body">
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">First Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Last Name</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
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
                            <label class="control-label">Address</label>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Experience</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Salary</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">NIC</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Gender</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio radio-primary" required>
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Subject Category</label>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="radio radio-primary" required>
                                <asp:ListItem Text="Social Science" Value="Social Science"></asp:ListItem>
                                <asp:ListItem Text="Physical Science" Value="Physical Science"></asp:ListItem>
                                <asp:ListItem Text="Languages and COmmunications" Value="Languages and COmmunications"></asp:ListItem>
                                <asp:ListItem Text="Humanities" Value="Humanities"></asp:ListItem>
                                <asp:ListItem Text="Natural Science" Value="Natural Science"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:Button ID="btnregteach" runat="server" Text="Register Teacher" CssClass="btn btn-primary" OnClick="btnregteach_Click" />
                            <asp:Button ID="btncan" runat="server" Text="Cancel" CssClass="btn btn-default" />
                            <%--<button class="btn btn-default" type="submit">Cancel</button>--%>
                            <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

