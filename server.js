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