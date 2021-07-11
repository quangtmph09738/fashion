<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('screens.home');
    }
    public function detail(){
        return view('screens.detail');
    }
    public function cart(){
        return view('screens.cart');
    }
}
