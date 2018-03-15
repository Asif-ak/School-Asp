<%@ Page EnableEventValidation="false" Title="Add New Classes" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="ViewClass.aspx.cs" Inherits="admin_AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>All Classes</strong> </div>
                <div class="panel-body">
                    <%--<form method="get" class="form-horizontal">--%>
                    <div class="form-group">
                        <%--<asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>--%>
                        <div class="col-xs-4">
                            <label class="control-label">Group</label>

                            <asp:DropDownList ID="ddlgrp" runat="server" CssClass="form-control mb" OnSelectedIndexChanged="ddlgrp_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="ddlgrp_TextChanged" ValidationGroup="grp2"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Level</label>
                            <asp:DropDownList ID="ddllevel" runat="server" CssClass="form-control mb" AutoPostBack="True" ValidationGroup="grp2"></asp:DropDownList>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label"></label>
                            <asp:Button ID="btnviewclass" runat="server" CssClass="btn btn-primary btn-block" Text="click to view class" ValidationGroup="grp2" OnClick="btnviewclass_Click" />

                        </div>
                    </div>

                    <%--</form>--%>
                </div>
            </div>


            <%--<div class="panel panel-default">
                <div class="panel-heading"><strong>Add New Class</strong> </div>
                <div class="panel-body">
                    
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
                            </asp:DropDownList>
                            
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Add Level</label>
                            <asp:TextBox ID="Txtlevel" runat="server" CssClass="form-control mb" ValidationGroup="grp1"></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Add Section</label>
                            <asp:TextBox ID="txtsec" runat="server" CssClass="form-control mb" ValidationGroup="grp1"></asp:TextBox>
                            
                        </div>
                    </div>

                    <div class="col-sm-8 col-sm-offset-2">
                        <asp:Button ID="submitclass" runat="server" CssClass="btn btn-primary" Text="Submit CLass" OnClick="submitclass_Click" ValidationGroup="grp1" OnCommand="submitclass_Command" />
                        
                    </div>

                    
                </div>
            </div>--%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>View Class</strong> </div>
                <div class="panel-body">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reportCS %>" SelectCommand="SELECT [stuid], [stuname], [stufatname] FROM [tbladmission] WHERE ([clasid] = @clasid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddllevel" Name="clasid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" EmptyDataText="No Student Enrolled in this class!!" >
                        <%--<Columns>
                            <asp:TemplateField HeaderText="Student ID" InsertVisible="False" SortExpression="stuid" HeaderStyle-CssClass="control-label col-xs-3">
                                <ItemTemplate>
                                    <asp:Label ID="lbstid" CssClass="control-label col-xs-1" runat="server" Text='<%# Bind("stuid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>--%>
                    </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

