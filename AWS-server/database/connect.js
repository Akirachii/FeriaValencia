const {createPool} = require('mysql')

const pool = createPool({
    host: "54.175.104.117",
    user: "root",
    password: "fvc.942",
    connectionLimit: "10"
})

pool.query(`SELECT * FROM fvc.usr`, (err,res)=>{
    return console.log(res)

})