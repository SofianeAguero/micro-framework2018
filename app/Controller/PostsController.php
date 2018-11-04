<?php

namespace App\Controller;

use Core\Controller\Controller;

class PostsController extends AppController{

    /**
     *  constructor.
     */
    public function __construct(){
        parent::__construct();
        $this->loadModel('Post');
    }

    /**
     * Renvoie la page index
     */
    public function index(){
        $posts = $this->Post->last();
        $this->render('posts.index', compact('posts'));
    }

    /**
     * Renvoie la page show avec l'article choisi
     */
    public function show(){
        $article = $this->Post->findWithCategory($_GET['id']);
        $this->render('posts.show', compact('article'));
    }

}