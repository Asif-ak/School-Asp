<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="admin_AddSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <asp:objectdatasource id="objsrc1" runat="server" selectmethod="viewallsub" typename="BLL"></asp:objectdatasource>


                <div class="panel-heading"><strong>Current Status of Subjects (CLass Group Wise)</strong> </div>
                <div class="panel-body">
                    <table class="display table table-striped table-bordered table-hover" id="tbl" role="grid">
                        <asp:repeater id="rp1" runat="server" datasourceid="objsrc1">
                    
                    
                        <HeaderTemplate>

                            <thead>
                                <tr role="row">
                                    <th tabindex="0" aria-controls="tbl" style="width: auto" aria-label="Name: Activate to sort colums Decending" rowspan="1" colspan="1" class="sorting">Number of Subjects Taught</th>
                                    <th tabindex="0" class="sorting" aria-controls="tbl" style="width: auto">Class Group</th>
                                    <th tabindex="0" class="sorting" aria-controls="tbl" style="width: auto">Number of Subjects Allowed</th>
                                    <th tabindex="0" class="sorting" aria-controls="tbl" style="width: auto" >Class Level</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Number of Subjects Taught</th>
                                    <th>Class Group</th>
                                    <th>Number of Subjects Allowed</th>
                                    <th>Class Level</th>
                                </tr>
                            </tfoot>
                        
                    </HeaderTemplate>
                    <itemTemplate>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lblsubtau" runat="server" Text='<%# Eval("Number of Subjects Taught") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblcg" runat="server" Text='<%# Eval("Class Group") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Number of Subjects Allowed") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Class Level") %>'></asp:Label>
                                </td>
                            </tr>
</tbody>
                    </itemTemplate>
                    
                    </asp:repeater></table>
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Select Subject Description</strong> </div>
                <div class="panel-body">

                    <div class="form-group">
                        <%--<asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>--%>
                        <div class="col-xs-4">
                            <label class="control-label">Class Level</label>

                            <asp:dropdownlist id="ddlgrpfil" runat="server" cssclass="form-control mb" autopostback="True" onselectedindexchanged="ddlgrpfil_SelectedIndexChanged"></asp:dropdownlist>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <asp:label id="subcat" runat="server" cssclass="control-label" visible="false">Subject Category</asp:label>
                            <%--<label class="control-label">Subject Category</label>--%>
                            <asp:radiobuttonlist id="rblsubcat" runat="server" cssclass="radio radio-primary" required visible="false" onselectedindexchanged="rblsubcat_SelectedIndexChanged" autopostback="True">
                                <asp:ListItem Text="Social Science" Value="Social Science"></asp:ListItem>
                                <asp:ListItem Text="Physical Science" Value="Physical Science"></asp:ListItem>
                                <asp:ListItem Text="Languages and COmmunications" Value="Languages and COmmunications"></asp:ListItem>
                                <asp:ListItem Text="Humanities" Value="Humanities"></asp:ListItem>
                                <asp:ListItem Text="Natural Science" Value="Natural Science"></asp:ListItem>
                            </asp:radiobuttonlist>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="col-xs-4">
                            <asp:label id="lblteach" runat="server" cssclass="control-label" visible="false">Select Teacher</asp:label>
                            <asp:dropdownlist id="ddlteach" runat="server" cssclass="form-control mb" visible="false" onselectedindexchanged="ddlteach_SelectedIndexChanged"></asp:dropdownlist>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading"><strong>Enter Subject Details</strong> </div>
                <div class="panel-body">
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Enter Subject Name</label>
                            <asp:textbox id="TextBox1" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required validationgroup="grpa1"></asp:textbox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Enter Subject Acronym</label>
                            <asp:textbox id="TextBox2" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required validationgroup="grpa1"></asp:textbox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Mid Term Marks</label>
                            <asp:textbox id="TextBox3" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required validationgroup="grpa1"></asp:textbox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Final Term Marks</label>
                            <asp:textbox id="TextBox4" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required validationgroup="grpa1"></asp:textbox>
                            <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                        </div>
                    </div>
                    <%--<div class="form-group">

                        <div class="col-xs-4">
                            <label class="control-label">Calculate Total Marks</label>
                            <asp:checkbox id="chk" runat="server" CssClass="checkbox-info" OnCheckedChanged="chk_CheckedChanged"></asp:checkbox>
                            <%--<asp:TextBox ID="TextBox6" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ReadOnly="True"></asp:TextBox>--%>
                    <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">

                        <div class="col-xs-4">
                            <asp:label runat="server" id="lbltm" cssclass="control-label" text="Total Marks"></asp:label>
                            <%--<label id="lbltm" runat="server" visible="false" class="control-label">Total Marks</label>--%>
                    <%--<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control mb" AutoCompleteType="Disabled" required ReadOnly="True" ></asp:TextBox>--%>
                    <%--<input type="text" placeholder="Default input" class="form-control mb">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="hr-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:button id="btnregsub" runat="server" text="Register Subject" cssclass="btn btn-primary" onclick="btnregsub_Click" validationgroup="grpa1" />
                            <asp:button id="btncan" runat="server" text="Cancel" cssclass="btn btn-default" onclick="btncan_Click" onclientclick="return confirm('Are you sure?');" validationgroup="btncan" />
                            <%--<button class="btn btn-default" type="submit">Cancel</button>--%>
                            <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

