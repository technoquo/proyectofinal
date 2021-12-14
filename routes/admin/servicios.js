var express = require('express');
var router = express.Router();
var serviciosModel = require('../../models/serviciosModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;
const { allowedNodeEnvironmentFlags } = require('process');

const uploader = util.promisify(cloudinary.uploader.upload); // subida
const destroy = util.promisify(cloudinary.uploader.destroy); // destruir


router.get('/', async function (req, res, next) {
   // var servicios = await serviciosModel.getServicios();

   var servicios
   if (req.query.q === undefined){
       servicios = await serviciosModel.getServicios();
   } else {
       servicios = await serviciosModel.buscarServicios(req.query.q);
   }

   servicios = servicios.map(servicios =>{
       if (servicios.img_id){
             const imagen = cloudinary.image(servicios.img_id, {
                 width:80,
                 height:80,
                 crop: 'fill'
             });
             return{
                ...servicios,
                 imagen
             }
       } else {
            return{
                ...servicios,
                imagen: ' '
            }
       }


   });

    res.render('admin/servicios', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        servicios,
        is_search:req.query.q !== undefined,
        q: req.query.q
    });
});

router.get('/eliminar/:id',async(req,res,next)=>{

  var id = req.params.id;
  let servicio = await serviciosModel.getServiciosById(id);
  if (servicio.img_id){
      await(destroy(servicio.img_id));
  }



  await serviciosModel.deleteSerivcioById(id);
  res.redirect('/admin/servicios');
})

/** para agregar  > formulario  */
  router.get('/agregar', (req,res,next) => {
       res.render('admin/agregar',{
           layout: 'admin/layout'
       });
  });

/** insert > post */

router.post('/agregar', async (req, res, next) => {

    try {

        var img_id = '';
        if (req.files && Object.keys(req.files).length > 0){

             imagen = req.files.imagen;
             img_id = (await uploader(imagen.tempFilePath)).public_id; 

        }
 

        console.log(req.body);
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await serviciosModel.insertServicios({
                ...req.body, /*titulo,subtitulo,cuerpo*/
                 img_id
            })
            res.redirect('/admin/servicios')
        } else {
            res.render('admin/agregar',{
                layout:'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error);
        res.render('admin/agregar',{
            layout: 'admin/layout',
            error: true,
            message: 'No  se cargo ' 
        })
    }
})


router.get('/modificar/:id',async(req,res,next) =>{
    var id= req.params.id;
    var servicios = await serviciosModel.getServiciosById(id);

    res.render('admin/modificar',{
        layout:'admin/layout',
        servicios
    });

});

  router.post('/modificar', async(req,res,next)=>{
        try{

            let img_id = req.body.img_original;
            let borrar_img_vieja = false;

            if (req.body.img_delete === "1"){
                 img_id = null;
                 borrar_img_vieja = true;
            } else {
                if (req.files && Object.keys(req.files).length > 0){
                    imagen = req.files.imagen;
                    img_id = (await  uploader(imagen.tempFilePath)).public_id;
                    borrar_img_vieja = true;
                }
            }

            if (borrar_img_vieja && req.body.img_original){
                 await(destroy(req.body.img_original));
            }

         var obj ={
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo,
            img_id
         }
          console.log(obj);
          await serviciosModel.UpdateServiciosbyId(obj, req.body.id);
          res.redirect('/admin/servicios');

        } catch(error){
            console.log(error),
            res.render('admin/layout', {
            error: true,
            message: 'No se modifico el servicio'
            })
        }
        
  });



module.exports = router;