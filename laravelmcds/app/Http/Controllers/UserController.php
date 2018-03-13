<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\UserRequest;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$users = User::all();
        //dd($users);

        //return view('users.index')->with('users', $users);
        // return view('users.index')->with('users', User::paginate(25)->setPath('user'));
        $count = User::count();
        return view('users.index')
               ->with('users', User::paginate(20)
               ->setPath('user'))
               ->with('count', $count);
                    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        //dd($request);
        $user = new User;
        if($request->hasFile('photo')) {
            $file = time().'.'.$request->photo->extension();
            $request->photo->move(public_path('imgs'), $file);
        }
        $user->username    = $request->get('username');
        $user->firstname   = $request->get('firstname');
        $user->lastname    = $request->get('lastname');
        $user->email       = $request->get('email');
        $user->role        = $request->get('role');
        $user->password    = bcrypt($request->get('password'));
        $user->photo       = "public/imgs/".$file;
        $user->colortheme  = $request->get('colortheme');
        $user->country     = $request->get('country');
        $user->phonenumber = $request->get('phonenumber');
        $user->birthdate   = $request->get('birthdate');
        if ($user->save()) {
            return redirect('user')->with('status', 'El usuario '.$user->name.' se Adiciono con Exito!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return view('users.show')->with('user', $user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        return view('users.edit')->with('user', $user);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //dd($request);
        $user = User::find($id);
        if($request->hasFile('photo')) {
            $file = time().'.'.$request->photo->extension();
            $request->photo->move(public_path('imgs'), $file);
            $user->photo       = "public/imgs/".$file;
        }
        $user->username    = $request->get('username');
        $user->firstname   = $request->get('firstname');
        $user->lastname    = $request->get('lastname');
        $user->email       = $request->get('email');
        $user->role        = $request->get('role');
        $user->colortheme  = $request->get('colortheme');
        $user->country     = $request->get('country');
        $user->phonenumber = $request->get('phonenumber');
        $user->birthdate   = $request->get('birthdate');
        if ($user->save()) {
            return redirect('user')->with('status', 'El usuario '.$user->name.' se Modifico con Exito!');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect('user')
            ->with('status', 'El usuario'.$user->username.' se elimino con exito!');
    }
}
