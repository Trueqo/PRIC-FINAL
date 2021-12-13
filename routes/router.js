const express = require('express')
const router = express.Router()

const authController = require('../controllers/authController')

//router para las vistas
router.get('/', authController.isAuthenticated, (req, res)=>{    
    res.render('index', {user:req.user})
})
router.get('/login', (req, res)=>{
    res.render('login', {alert:false})
})
router.get('/register', (req, res)=>{
    res.render('register')
})

router.get('/metricas',authController.isAuthenticated, (req, res)=>{
    res.render('metricas',{user:req.user})
})

router.get('/perfil',authController.isAuthenticated, (req, res)=>{
    res.render('perfil',{user:req.user})
})

router.get('/boletas',authController.isAuthenticated, (req, res)=>{
    res.render('boletas',{user:req.user})
})

router.get('/recompensas',authController.isAuthenticated, (req, res)=>{
    res.render('recompensas',{user:req.user})
})

//router para los métodos del controller
router.post('/register', authController.register)
router.post('/login', authController.login)
router.get('/logout', authController.logout)


module.exports = router