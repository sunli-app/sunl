<%--
  Created by IntelliJ IDEA.
  User: Sun Li
  Date: 2020/7/27
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- 生产环境版本，优化了尺寸和速度 -->
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
    <div id="app" class="table table-striped">
        <table>
            <tr>
                <td>ID</td>
                <td>用户名</td>
                <td>密码</td>
                <td>真实名</td>
                <td>操作</td>
            </tr>
            <tr v-for="user in users">
                <td>{{user.id}}</td>
                <td>{{user.username}}</td>
                <td>{{user.password}}</td>
                <td>{{user.realname}}</td>
                <td><a href="#">删除</a></td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        var app = new Vue({
            el: '#app',
            data: {
                users: [
                    {"id":1, "username":"tangzhe", "password":"123456","realname":"糖纸"},
                    {"id":2, "username":"张三", "password":"666666","realname":"zhangsan"}
                ]
            },
            methods: {
                // 发送ajax请求，获取用户列表
                loadData: function() {
                    var that = this;
                    axios.get('http://localhost:8080/user')
                        .then(function (response) {
                            var data = response.data;
                            that.users = data;
                        })
                        .catch(function (error) {
                            console.log(error);
                        });
                }
            },
            mounted: function() {
                // 页面加载执行方法
                this.loadData();
            }
        });
    </script>
</body>
</html>
