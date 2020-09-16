const express = require('express')
const app = express()
const port = 3000;
app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});
var mysql = require('mysql')
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'douguo'
})
connection.connect()
const bodyParser=require("body-parser");

// 解析以 application/json 和 application/x-www-form-urlencoded 提交的数据
var jsonQuery = bodyParser.json();
var urlQuery = bodyParser.urlencoded({ extended: false });

app.post('/login',urlQuery,(req,res)=>{//注册登陆接口
    if(req.body.status=='in'){//注册
        var phones;
        var names;
        if(req.body.phone!=undefined){
            connection.query('select * from userinfo where phone='+req.body.phone, function (err, data) {
                const obj = {
                    status: 200,
                    data
                }
                if(obj.data!=''){
                    if(req.body.phone==obj.data[0].phone){
                        res.json('账号已注册')
                    }
                }else{
                    phones='';
                }
            })
        }
        if(req.body.name!=undefined){
            connection.query(`select * from userinfo where username='${req.body.name}'`, function (err, data) {
                if (err) throw err
                const obj = {
                    status: 200,
                    data
                }
                if(obj.data!=''){
                    if(req.body.name==obj.data[0].username){
                        res.json('昵称已存在')
                    }
                }else{
                    names='';
                }
            })
        }
        if(req.body.phone!=phones&&req.body.name!=names){
            connection.query("insert into userinfo (username,password,phone) values ('"+req.body.name+"','"+req.body.psw+"','"+req.body.phone+"');", function (err, data) {
                if(err){
                    res.json('失败')
                }else{
                    res.json('注册成功')
                }
            }) 
        }
        
    }
    if(req.body.status=='up'){//登陆
        if(req.body.name!=undefined){
            connection.query('select * from userinfo where phone='+req.body.name, function (err, data) {
                const obj = {
                    status: 200,
                    data
                }
                if(obj.data!=''){
                    if(req.body.name==obj.data[0].phone&&req.body.psw==obj.data[0].password)
                    res.json('登陆成功')
                }else{
                    res.json('账号不存在')
                }
            })
        }
    }
})


app.get('/anime', (req, res) => { //动漫接口
    if (req.query.id == undefined) {
        connection.query('select * from anime', function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data
            }
            res.json(obj);
        })
    } else {
        connection.query('select title,img from anime where id=' + req.query.id, function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data
            }
            res.json(obj);
        })
    }
})
app.get('/note', (req, res) => { //笔记接口
    if(req.query.tab!=undefined){
        connection.query('select * from note limit '+req.query.tab+',30', function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data
            }
            res.json(obj);
        })
    }else if(req.query.flag!=undefined){
        connection.query('select love,flag from note where id='+req.query.flag, function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data
            }
            res.json(obj);
        })
    }else if(req.query.detail_id!=undefined){
        connection.query('select * from note where id='+req.query.detail_id, function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data
            }
            res.json(obj);
        })
    }else{
        connection.query('update note set love='+req.query.i+',flag='+req.query.k+' where id='+req.query.id, function (err, data) {
            if (err) throw err
            const obj = {
                status: 200,
                data:'成功'
            }
            res.json(obj);
        })
    }
})
app.listen(port, () => console.log(`Example app listening on port ${port}!`))