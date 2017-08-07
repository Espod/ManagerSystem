<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>hrms_main</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        var url;
        function addTab(url, text, iconCls) {
            var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${pageContext.request.contextPath}/views/"
                + url + "'></iframe>";
            $("#tabs").tabs("add", {
                title: text,
                iconCls: iconCls,
                closable: true,
                content: content
            });
        }
        function openTab(text, url, iconCls) {
            if ($("#tabs").tabs("exists", text)) {
                $("#tabs").tabs("close", text);
                addTab(url, text, iconCls);
                $("#tabs").tabs("select", text);
            } else {
                addTab(url, text, iconCls);
            }
        }

        function logout() {
            $.messager
                .confirm(
                    "system prompt",
                    "Do you want to exit?",
                    function (r) {
                        if (r) {
                            window.location.href = "${pageContext.request.contextPath}/admin/logout";
                        }
                    });
        }
    </script>
<body class="easyui-layout">
<div region="north" style="height: 78px; background-color: #ffff">
    <table width="100%">
        <tr>
            <td width="50%"></td>
            <td valign="bottom"
                style="font-size: 20px; color: #8B8B8B; font-family: '楷体';"
                align="right" width="50%"><font size="3">&nbsp;&nbsp;<strong>登录账户：</strong>
            </font> <font color="red">${sessionScope.currentAdmin.username}</font></td>
        </tr>
    </table>
</div>
<div region="center">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
            <div align="center" style="padding-top: 50px">
                <font color="grey" size="10">人事管理系统</font>
            </div>
            <div align="center" style="padding-top: 20px;">
                <font style="font-size: 20px;"></font>
            </div>
        </div>
    </div>
</div>
<div region="west" style="width: 200px; height: 500px;"
     title="控制菜单" split="true">
    <div class="easyui-accordion">
        <div title="部门管理"
             data-options="selected:true,iconCls:'icon-shujias'"
             style="padding: 10px; height: 10px;">
            <a href="javascript:openTab(' Department Info','deptManage.jsp')"
               class="easyui-linkbutton" data-options="plain:true"
               style="width: 150px;"> 部门信息</a>
        </div>

        <div title="职位管理"
             data-options="selected:true,iconCls:'icon-schoolceo'"
             style="padding: 10px; height: 10px;">
            <a href="javascript:openTab(' Position Info','positionManage.jsp')"
               class="easyui-linkbutton" data-options="plain:true"
               style="width: 150px;"> 职位信息</a>
        </div>

        <div title="员工管理" data-options="iconCls:'icon-students' "
             style="padding: 10px">
            <a href="javascript:openTab(' Employee Info','employeeManage.jsp')"
               class="easyui-linkbutton" data-options="plain:true"
               style="width: 150px;">员工信息</a>
        </div>

        <div title="公告管理"
             data-options="selected:true,iconCls:'icon-wenzhang'"
             style="padding: 10px; height: 10px;">
            <a href="javascript:openTab(' Post Info','postManage.jsp')"
               class="easyui-linkbutton" data-options="plain:true"
               style="width: 150px;"> 公告信息</a>
        </div>

        <div title="系统管理" data-options="iconCls:'icon-item'"
             style="padding: 10px; border: none;">
            <a
                    href="javascript:openTab(' Admin List','adminManage.jsp','icon-lxr')"
                    class="easyui-linkbutton"
                    data-options="plain:true,iconCls:'icon-lxr'" style="width: 150px;">
                管理员表</a><a href="javascript:logout()" class="easyui-linkbutton"
                           data-options="plain:true,iconCls:'icon-exit'" style="width: 150px;">
            退出</a>
        </div>
    </div>
</div>
</body>
</html>