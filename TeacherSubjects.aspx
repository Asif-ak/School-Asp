<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="TeacherSubjects.aspx.cs" Inherits="admin_TeacherSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Select Teacher</strong> </div>

                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-xs-4">
                            <%--<asp:label id="lblteach" runat="server" cssclass="control-label">Select Teacher</asp:label>--%>
                            <asp:DropDownList ID="ddlteachsel" runat="server" CssClass="form-control mb" AutoPostBack="true" OnSelectedIndexChanged="ddlteachsel_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>All Details</strong> </div>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

