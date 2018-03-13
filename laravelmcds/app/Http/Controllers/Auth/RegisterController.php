<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username'            => 'required|min:4',
            'firstname'           => 'required',
            'lastname'            => 'required',
            'email'               => 'required|email|unique:users,email',
            'password'            => 'required',
            'confirm_password'    => 'required|same:password',
            'role'                => 'required',
            'photo'               => 'required|image',
            'colortheme'          => 'required',
            'country'             => 'required',
            'phonenumber'         => 'required|numeric',
            'birthdate'           => 'required|date',

        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

            $file = time().'.'.$data['photo']->extension();
            $data['photo']->move(public_path('imgs'), $file);

        return User::create([
            'username'    => $data['username'],
            'firstname'   => $data['firstname'],
            'lastname'    => $data['lastname'],
            'email'       => $data['email'],
            'password'    => bcrypt($data['password']),
            'role'        => $data['role'],
            'photo'       => "public/imgs/".$file,
            'colortheme'  => $data['colortheme'],
            'country'     => $data['country'],
            'phonenumber' => $data['phonenumber'],
            'birthdate'   => $data['birthdate'],
        ]);
    }
}
