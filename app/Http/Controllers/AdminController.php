<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\category;
class AdminController extends Controller
{
    public function index(){
        return view('adminlayout.dashboard');
    }
    public function add_product(){
        return view('adminlayout.product.addproduct');
    }
    public function category_list(){
        $categorys = category::orderBy('id','desc')->get();
        return view('adminlayout.category.categorylist',[
            'categorys' => $categorys
        ]);
    }
    public function category_add(){
        echo "123";
        // return view('adminlayout.category.categorylist');
    }
}
