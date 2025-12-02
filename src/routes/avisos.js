var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/listar/:idUsuario", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    avisoController.publicar(req, res);
});

router.post("/publicarResposta/:idUsuario", function (req, res) {
    avisoController.publicarResposta(req, res);
});

router.put("/editar/:idPostagem", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:idPostagem/:idUsuario", function (req, res) {
    avisoController.deletar(req, res);
});

router.get("/faixa-etaria", function (req, res){
    avisoController.faixaEtaria(req, res);
});

router.get("/tipo-escola", function (req, res){
    avisoController.tipoEscola(req, res);
});

router.get("/detalhamento", function (req, res){
    avisoController.detalhamento(req, res);
});

router.get("/total-posts/:idUsuario", function (req, res){
    avisoController.totalPosts(req, res);
});

router.get("/total-comentarios/:idUsuario", function (req, res){
    avisoController.totalComentarios(req, res);
});

router.get("/ultimos-posts/:idUsuario", function (req, res){
    avisoController.ultimosPosts(req, res);
});

module.exports = router;