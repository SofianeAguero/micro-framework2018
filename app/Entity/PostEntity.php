<?php
namespace App\Entity;

use Core\Entity\Entity;

class PostEntity extends Entity{

    /**
     * @return str retourne l'article, son id en link
     */
    public function getUrl(){
        return 'article-'. $this->id .'-'. $this->slug;
    }

    /**
     * @return 
     */
    public function getExtrait(){
        $html = '<p>' . substr($this->contenu, 0, 200) . '...</p>';
        $html .= '<p><a href="' . $this->getURL() . '">Voir la suite</a></p>';
        return $html;
    }

    public function getSlug()
    {
        return $this->slug;
    }

}