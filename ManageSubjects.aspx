<%@ Page Title="Manage All Subjects" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="ManageSubjects.aspx.cs" Inherits="admin_ManageSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Please Select Class</strong> </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-md-6">
                            <label class="control-label">Class Level</label>
                            <asp:SqlDataSource ID="sds1" runat="server" ConnectionString="<%$ ConnectionStrings:reportCS %>" SelectCommand="SELECT * FROM [tblclas]"></asp:SqlDataSource>
                            <asp:DropDownList ID="ddllevel" runat="server" CssClass="form-control mb" AutoPostBack="True" OnSelectedIndexChanged="ddllevel_SelectedIndexChanged" DataSourceID="sds1" DataTextField="clas_level" DataValueField="clasid"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Please Select Subject</strong> </div>
                <div class="panel-body">
                    <asp:SqlDataSource ID="sds2" runat="server" ConnectionString="<%$ ConnectionStrings:reportCS %>" SelectCommand="SELECT [subjectid], [subjectname], [sub_category] FROM [tblsubject] WHERE ([clasid] = @clasid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddllevel" Name="clasid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gvsubjects" runat="server" AutoGenerateColumns="False" DataSourceID="sds2" EmptyDataText="No subjects available in this class!!" Height="20%" AutoGenerateSelectButton="true" OnSelectedIndexChanging="gvsubjects_SelectedIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderText="Subject ID" InsertVisible="False" SortExpression="subjectid" HeaderStyle-CssClass="control-label col-xs-3">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("subjectid") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("subjectid") %>' CssClass="control-label col-xs-3"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject Name" SortExpression="subjectname" HeaderStyle-CssClass="control-label col-xs-3">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("subjectname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("subjectname") %>' CssClass="control-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject Category" SortExpression="sub_category" HeaderStyle-CssClass="control-label col-xs-3">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sub_category") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("sub_category") %>' CssClass="control-label"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <asp:Panel ID="Panel1" runat="server">
                <div class="panel-heading"><strong>Update Subject Details Here</strong> </div>
                <div class="panel-body">
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Enter Subject Name</label>
                            <asp:TextBox ID="Txtsn" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ValidationGroup="grpa1"></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Enter Subject Acronym</label>
                            <asp:TextBox ID="Txtsa" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ValidationGroup="grpa1"></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Mid Term Marks</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ValidationGroup="grpa1"></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Final Term Marks</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ValidationGroup="grpa1"></asp:TextBox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-1">
                            <asp:Button ID="updsub" runat="server" Text="Update Subject" CssClass="btn btn-primary" ValidationGroup="grpa1" OnClick="updsub_Click" />
                            <asp:Button ID="btnremovesub" runat="server" Text="Remove Subject" CssClass="btn btn-danger" OnClick="btnremovesub_Click" />
                            <%--<button class="btn btn-default" type="submit">Cancel</button>--%>
                            <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                        </div>
                    </div>

                </div></asp:Panel>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Change Subject Teacher Here</strong> </div>
                <div class="panel-body">
                    <div class="form-group">

                        <div class="col-xs-3">
                            <label class="control-label">Current Teacher</label><br />
                            <asp:Label ID="lblteach" runat="server" CssClass="control-label"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-3">
                            <label class="control-label">Teacher ID</label><br />
                            <asp:Label ID="lblteachid" runat="server" CssClass="control-label"></asp:Label>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-3">
                            <label class="control-label">Subject Category</label><br />
                            <asp:Label ID="Lblsubcat" runat="server" CssClass="control-label"></asp:Label>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-3">
                            <label class="control-label">Select Teacher</label>
                            <%--<asp:label id="lblteach" runat="server" cssclass="control-label">Select Teacher</asp:label>--%>
                            <asp:DropDownList ID="ddlteachupd" runat="server" CssClass="form-control mb"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-1">
                            <asp:Button ID="updteacehr" runat="server" Text="Change Teacher" CssClass="btn btn-primary" OnClick="updteacehr_Click"/>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

