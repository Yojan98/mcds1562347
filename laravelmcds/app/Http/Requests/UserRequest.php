<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if($this->method() == 'PUT') {}
        return [
            
            'username'            => 'required|min:4',
            'firstname'           => 'required',
            'lastname'            => 'required',
            'email'               => 'required|email|unique:users,email,'.$this->id,
            'role'                => 'required',
            'colortheme'          => 'required',
            'country'             => 'required',
            'phonenumber'         => 'required|number',
            'birthdate'           => 'required|date',

        ];
    } else {

          return [
            
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

        ];
    }
}    
    public function messages() {
        return [
            'username.required'     => 'El campo Nombre de Usuario es obligatorio',
            'username.min'          => 'El campo Nombre de Usuario debe contener al menos 4 caracteres',
            'firstname.required'    => 'El campo Apellidos es obligatorio',
            'lastname.required'     => 'El campo Apellidos es obligatorio',
            'email.required'        => 'El campo Apellidos es obligatorio',
            'email.email'           => 'El campo Correo Electronico no corresponde con una dirección de email válida',
            'email.unique'          => 'El Correo Electrónico ya está en uso',
            'password.required'     => 'El campo Contraseña es obligatorio',
            'confirm_password.same' => 'Los campos Confirmar Contraseña y Contraseña deben coincidir',
            'role.required'         => 'El campo Rol es obligatorio',
            'photo.required'        => 'El campo Foto es obligatorio',
            'photo.image'           => 'El campo Foto debe ser una imagen',
            'colortheme.required'   => 'El campo Color es obligatorio',
            'country.required'      => 'El campo País es obligatorio',
            'phonenumber.required'  => 'El campo Número Telefónico es obligatorio',
            'phonenumber.numeric'   => 'El campo Número Telefónico debe ser un número',
            'birthdate.required'    => 'El campo fecha de Nacimiento es obligatorio',
            'birthdate.date'        => 'El campo fecha de Nacimiento no corresponde con una fecha válida',














        ];
    }
}
