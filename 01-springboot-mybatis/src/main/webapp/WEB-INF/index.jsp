<%--
  Created by IntelliJ IDEA.
  User: Sun Li
  Date: 2020/7/24
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
<%--idea启动springboot加载jsp页面:不是我们常用的启动方法,应该右边Maven->Plugins->spring-boot:run 双击被选中的spring-boot：run
因为idea的默认web页面不是jsp和html，而是另外一种叫Thymeleaf,用maven启动可以成功显示jsp页面--%>
    <h2>欢迎你</h2>
    <div id="app">
        <p>{{message}}</p>
    </div>

    <script>
        new Vue({
            el:'#app',
            data:{
                message:'Hello Vue.js!'
            }
        })
    </script>
</body>
</html>
