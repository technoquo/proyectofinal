var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');

router.get('/', function (req, res, next) {
    res.render('admin/login', {
        layout: 'admin/layout'
    });
});

router.get('/logout', async(req,res,next)=>{

    req.session.destroy();
    res.render('admin/login', {
        layout: 'admin/layout'
    }); 
    res.redirect('/admin/login');  
});

router.post('/', async (req, res, next) => {
    try {
        var usuario = req.body.usuario;
        var password = req.body.password;

        console.log(req.body);

        var data = await usuariosModel.getUserAndPassword(usuario, password);

        if (data != undefined) {
            req.session.id_usuario = data.id;
            req.session.nombre = data.usuario;
            res.redirect('/admin/servicios');
        } else {
            res.render('admin/login', {
                layout: 'admin/layout',
                error: true
            });
            
        }
    } catch (error) {
        console.log(error);
    }


}); // cierra router.post




module.exports = router;
