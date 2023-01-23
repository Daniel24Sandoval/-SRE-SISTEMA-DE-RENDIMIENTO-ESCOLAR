/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// -------------------------CONEXION A SQL-------------------------------------------
    const mysql =require('mysql')
    const   conection =mysql.createConnection({
        
   
            host:'localhost',         
            user:'root',
            password:'',
            database:'src-utpv2'
            } )
            
   conection.connect((err)=>{
        if (err) throw err
        console.log('Correctamente conectado')
     
   })
   
   conection.end()
   


