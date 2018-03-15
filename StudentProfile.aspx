<%@ Page Title="Update Student Profile" EnableEventValidation="false" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="admin_StudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpadmin" runat="Server">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Please select Class to view all Students </strong></div>
                <div class="panel-body">
                    <div class="form-group-sm">
                        <div class="col-xs-6">
                            <label class="control-label">Level</label>
                            <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:reportCS %>" selectcommand="SELECT * FROM [tblclas]"></asp:sqldatasource>
                            <asp:dropdownlist id="ddlclasslvl" runat="server" cssclass="form-control mb" autopostback="True" datasourceid="SqlDataSource2" datatextfield="clas_level" datavaluefield="clasid">
                                <%--<asp:ListItem>Please Select Class</asp:ListItem>--%>
                            </asp:dropdownlist>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:reportCS %>" selectcommand="SELECT * FROM [tbladmission] WHERE ([clasid] = @clasid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlclasslvl" Name="clasid" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:sqldatasource>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>Please select Student to view Profile</strong> </div>
                <div class="panel-body">
                    <%--<div class="col-md-6">--%>
                    <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" autogenerateselectbutton="True" datakeynames="stuid" datasourceid="SqlDataSource1" height="20%" onselectedindexchanging="GridView1_SelectedIndexChanging1" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <Columns>

                            <asp:TemplateField HeaderText="Student ID" InsertVisible="False" SortExpression="stuid" HeaderStyle-CssClass="control-label col-xs-3">
                                <ItemTemplate>
                                    <asp:Label ID="Lblstuid" CssClass="control-label col-xs-1" runat="server" Text='<%# Bind("stuid") %>'></asp:Label>
                                </ItemTemplate>
                                
                                <HeaderStyle CssClass="control-label col-xs-3"></HeaderStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Name" SortExpression="stuname" HeaderStyle-CssClass="control-label col-xs-3">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("stuname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" CssClass="control-label col-xs-1" Text='<%# Bind("stuname") %>'></asp:Label>
                                </ItemTemplate>

                                <HeaderStyle CssClass="control-label col-xs-3"></HeaderStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Father Name" HeaderStyle-CssClass="control-label col-xs-3" SortExpression="stufatname">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("stufatname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" CssClass="control-label col-xs-1" runat="server" Text='<%# Bind("stufatname") %>'></asp:Label>
                                </ItemTemplate>

                                <HeaderStyle CssClass="control-label col-xs-3"></HeaderStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="stumotname" SortExpression="stumotname" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("stumotname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("stumotname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="religion" SortExpression="religion" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("religion") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("religion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="nationality" SortExpression="nationality" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("nationality") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("nationality") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="dob" SortExpression="dob" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("dob") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("dob") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pob" SortExpression="pob" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("pob") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("pob") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="gender" SortExpression="gender" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <%--<asp:RadioButtonList ID="rblgender" runat="server" CssClass="radio radio-primary" SelectedIndex='<%#DataBinder.Eval(Container.DataItem , "gender")%>'>
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            </asp:RadioButtonList>--%>  
                                                             <%--This is not working--%>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Physical deformity" SortExpression="deformity" Visible="false">
                                <%--<EditItemTemplate>--%>
                                    <%--<asp:RadioButtonList ID="rblde" runat="server" SelectedIndex='<%#Convert.ToInt32(DataBinder.Eval(Container.DataItem , "deformity"))%>'>
                                        <asp:ListItem Text="NO" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="YES" Value="2"></asp:ListItem>
                                    </asp:RadioButtonList>--%>
                                    <%--<asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("deformity") %>'></asp:TextBox>--%>
                                <%--</EditItemTemplate>--%>

                                <ItemTemplate>
                                    <%--<asp:RadioButtonList ID="Rbldefor" runat="server" SelectedIndex='<%#Convert.ToInt32(DataBinder.Eval(Container.DataItem , "deformity"))%>'>
                                        <asp:ListItem Text="NO" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="YES" Value="2"></asp:ListItem>
                                    </asp:RadioButtonList>--%>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("deformity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="address" SortExpression="address" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="mobile" SortExpression="mobile" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="father_occu" SortExpression="father_occu" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("father_occu") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("father_occu") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Monthlyincome" SortExpression="Monthlyincome" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Monthlyincome") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Monthlyincome") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pre_sch" SortExpression="Pre_sch" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Pre_sch") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Pre_sch") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="rfl_pre_sch" SortExpression="rfl_pre_sch" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("rfl_pre_sch") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("rfl_pre_sch") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Admission Reference" SortExpression="adm_ref" Visible="True">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("adm_ref") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("adm_ref") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="oth_cont_name" SortExpression="oth_cont_name" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("oth_cont_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("oth_cont_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="oth_cont_num" SortExpression="oth_cont_num" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("oth_cont_num") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("oth_cont_num") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="app_for_class" SortExpression="app_for_class" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("app_for_class") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("app_for_class") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="id_copy" SortExpression="id_copy" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("id_copy") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("id_copy") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="bir_cert_copy" SortExpression="bir_cert_copy" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("bir_cert_copy") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label21" runat="server" Text='<%# Bind("bir_cert_copy") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="photos_path" SortExpression="photos_path" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("photos_path") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label22" runat="server" Text='<%# Bind("photos_path") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="sch_lea_cert" SortExpression="sch_lea_cert" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("sch_lea_cert") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label23" runat="server" Text='<%# Bind("sch_lea_cert") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="clasid" SortExpression="clasid" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("clasid") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label24" runat="server" Text='<%# Bind("clasid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="status" SortExpression="status" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox26" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label26" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="adm_date" SortExpression="adm_date" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("adm_date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label25" runat="server" Text='<%# Bind("adm_date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:gridview>
                </div>
            </div>
        </div>
    </div>
    <%--</div>--%>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <asp:panel runat="server" id="panel1">
                <div class="panel-heading"><strong>Update Details</strong></div>
                <div class="panel-body">
                    <table class="col-md-12">
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <asp:datalist id="DataList1" runat="server" datasourceid="SqlDataSource1">
                                    <ItemTemplate>
                                        <asp:Image ID="image2" runat="server" ImageUrl='<%# Eval("photos_path","~/images/{0}") %>' Width="120" Height="120" Visible="false"></asp:Image>

                                    </ItemTemplate>
                                </asp:datalist>
                            </td>
                        </tr>
                        <tr >
                            <td>
                                <asp:Label id="lblstuID" runat="server" Text="" visible="false"></asp:Label>
                            </td>
                        </tr>
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <label class="control-label">Student Name</label>
                                <asp:textbox id="txtstuname" runat="server" cssclass="form-control mb" autocompletetype="Disabled" text='<%# Bind("stuname") %>' required></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Father Name</label>
                                <asp:textbox id="txtfatname" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Mother Name</label>
                                <asp:textbox id="txtmotname" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Religion</label>
                                <asp:textbox id="txtrel" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                        </tr>
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <label class="control-label">Nationality</label>
                                <asp:textbox id="txtnational" runat="server" cssclass="form-control mb" autocompletetype="Disabled" readonly="true"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">DOB</label>
                                <asp:textbox id="Txtdob" runat="server" cssclass="form-control mb" autocompletetype="Disabled" readonly="true"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Place of Birth</label>
                                <asp:textbox id="Txtpob" runat="server" cssclass="form-control mb" autocompletetype="Disabled" readonly="true"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Address</label>
                                <asp:textbox id="Txtaddres" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                        </tr>
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <label class="control-label">Gender: &nbsp&nbsp&nbsp</label>
                                <%--<asp:radiobuttonlist id="rblgend" runat="server" cssclass="radio radio-primary" enabled="false">
                                    <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                </asp:radiobuttonlist>--%>
                                <asp:label id="lblgender" runat="server" text="" class="control-label"></asp:label>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Mobile</label>
                                <asp:textbox id="Txtmbl" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Father Occupation</label>
                                <asp:textbox id="Txtfatoccu" runat="server" cssclass="form-control mb" autocompletetype="Disabled" required></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Monthly Income</label>
                                <asp:textbox id="txtmoninc" runat="server" cssclass="form-control mb" autocompletetype="Disabled"></asp:textbox>
                            </td>
                        </tr>
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <label class="control-label">Previous School</label>
                                <asp:textbox id="Txtprevsch" runat="server" cssclass="form-control mb" autocompletetype="Disabled"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Reasons for Leaving</label>
                                <asp:textbox id="Txtrfl" runat="server" cssclass="form-control mb" autocompletetype="Disabled"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">How did you hear about us? &nbsp&nbsp&nbsp</label>
                                <%--<asp:radiobuttonlist id="rblhear" runat="server" cssclass="radio radio-primary" enabled="false">
                                    <asp:ListItem Text="Advertisement" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Referel" Value="2"></asp:ListItem>
                                </asp:radiobuttonlist>--%>
                                <asp:label id="Lbladmref" runat="server" text="" class="control-label"></asp:label>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Any Physical Deformity:
                                    <br />
                                </label>
                                <%--<asp:radiobuttonlist id="rbldefor" runat="server" cssclass="radio radio-primary" enabled="false">
                                    <asp:ListItem Text="NO" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="YES" Value="2"></asp:ListItem>
                                </asp:radiobuttonlist>--%>
                                <asp:label id="lbldeformity" runat="server" text="" class="control-label"></asp:label>
                            </td>
                        </tr>
                        <tr class="col-xs-12">
                            <td class="col-xs-3">
                                <label class="control-label">Other Contact Name</label>
                                <asp:textbox id="Txtothconam" runat="server" cssclass="form-control mb" autocompletetype="Disabled"></asp:textbox>
                            </td>
                            <td class="col-xs-3">
                                <label class="control-label">Other Contact Number</label>
                                <asp:textbox id="Txtothconum" runat="server" cssclass="form-control mb" autocompletetype="Disabled"></asp:textbox>
                            </td>
                            <td class="col-xs-3"></td>
                            <td class="col-xs-3"></td>
                        </tr>
                        <tr class="col-sm-8 ">
                            <td class="col-xs-3">

                                <asp:button id="btnupdstuprofile" runat="server" text="Update Student Profile" cssclass="btn btn-primary" OnClick="btnupdstuprofile_Click" />
                            </td>
                        </tr>


                    </table>
                </div></asp:panel>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

