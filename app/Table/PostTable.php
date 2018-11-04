<?php
namespace App\Table;

use Core\Table\Table;

class PostTable extends Table{

    protected $table = 'articles';

    /**
     * affiche les derniers articles
     * @return array : renvoie tous les articles dans un tableau
     */
    public function last(){
        return $this->query("
            SELECT articles.id, articles.titre, articles.contenu, articles.date, articles.slug
            FROM articles
            ORDER BY articles.date DESC");
    }

    /**
     * Récupère un article en fonction de  l'id
     * @param $id int : Id de l'article souhaité
     * @return \App\Entity\PostEntity : renvoie l'article en fonction l'id
     */
    public function findWithCategory($id){
        return $this->query("
            SELECT articles.id, articles.titre, articles.contenu, articles.date, articles.slug
            FROM articles
            WHERE articles.id = ?", [$id], true);
    }
}