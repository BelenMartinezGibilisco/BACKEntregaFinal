var express = require("express");
var router = express.Router();
var recetasModel = require("../../models/recetasModel");
var util = require("util");
var cloudinary = require("cloudinary").v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

router.get("/", async function (req, res, next) {

    var recetas = await recetasModel.getRecetas();

    recetas = recetas.map(receta => {
        if (receta.img_id) {
            const imagen = cloudinary.image(receta.img_id, {
                width: 100,
                heigth: 100,
                crop: "fill"
            });
            return {
                ...receta,
                imagen
            }
        } else {
            return {
                ...receta,
                imagen:""
            }
        }
    });

    res.render("admin/recetas", {
    layout:"admin/layout",
    usuario: req.session.nombre,
    recetas
    });
});

router.get("/agregar", (req, res, next) => {
    res.render("admin/agregar", {
        layout: "admin/layout"
    })
});

router.post("/agregar", async (req, res, next) =>{
    try {
        var img_id = "";
        if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        }

        if (req.body.titulo != "" && req.body.ingredientes != "" && req.body.preparacion != "") {
           
            await recetasModel.insertReceta({
                ...req.body,
                img_id
            });
           
            res.redirect("/admin/recetas")
        
        } else {
            res.render("admin/agregar", {
                layout: "admin/layout",
                error: true, message: "Debes completar todos los campos"
            })
        }
    } catch (error) {
        console.log(error)
        res.render("admin/agregar", {
            layout: "admin/layout",
            error: true, message: "No se cargó la receta"
        });
    }
});

router.get("/eliminar/:id", async (req, res, next) => {
    var id = req.params.id;

    let receta = await recetasModel.getRecetaById(id);
    if (receta.img_id) {
        await (destroy(receta.img_id));
    }
    await recetasModel.deleteRecetaById(id);
    res.redirect("/admin/recetas")
});

router.get("/modificar/:id", async (req, res, next) => {
    let id = req.params.id;
    let receta = await recetasModel.getRecetaById(id);
    res.render("admin/modificar", {
        layout: "admin/layout",
        receta
    });
});

router.post("/modificar", async (req, res, next) => {
    try {

        let img_id = req.body.img_original;
        let borrar_img_vieja = false;
        if (req.body.img_delete === "1") {
            img_id= null;
            borrar_img_vieja = true;
        } else {
            if (req.files && Object.keys(req.files).length > 0) {
                imagen = req.files.imagen;
                img_id =(await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }
        if (borrar_img_vieja && req.body.img_original) {
            await (destroy(req.body.img_original));
        }


        var obj = {
            titulo: req.body.titulo,
            ingredientes: req.body.ingredientes,
            preparacion: req.body.preparacion,
            img_id

        }

    await recetasModel.modificarRecetaById(obj, req.body.id);
    res.redirect("/admin/recetas");
    }

    catch (error) {
        console.log(error)
        res.render("admin/modificar", {
            layout: "admin/layout",
            error: true, message: "No se modificó la receta"
        })
    }
    })
    module.exports = router;