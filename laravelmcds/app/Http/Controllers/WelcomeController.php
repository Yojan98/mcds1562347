<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class WelcomeController extends Controller
{
    public function index() {
    	$arts = Article::all();
    	return view('welcome')->with('arts', $arts);
    }
}
