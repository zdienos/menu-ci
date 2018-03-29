<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_menu extends CI_Model {

  function ambilMenu() {
    $this->db->select("*");
    $this->db->from("menu_parents");
    $q = $this->db->get();

    $final = array();
    if ($q->num_rows() > 0) {
        foreach ($q->result() as $row) {
            $this->db->select("*");
            $this->db->from("menu_children");
            $this->db->where("fk_parent_id", $row->parent_id);
            $q = $this->db->get();
            if ($q->num_rows() > 0) {
                $row->children = $q->result();
            }
            array_push($final, $row);
        }
    }
    return $final;
}

 function cetakMenu()
 {
   $menus = $this->ambilMenu();
   //$data = array('menus' => $menus);
   foreach ($menus as $menu) {
     if ($menu->is_parent==true){
       //berarti dropdown
       echo '<li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown">teks<span class="caret"></span></a>
             <ul class="dropdown-menu" role="menu">
             <li><a href="#">Action</a></li>
             </li>';
     }
     else
     {
       //berarti bukan Dropdown
       echo '<li><a href="'.$menu->link . '">' . $menu->teks .'"></a></li>';
     } //if is_parent
    }//for each
 }
}
?>
