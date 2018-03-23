<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
        return [
            'name' => 'required|min:4',
        ];
    }

    public function messages() {
        return [
            'name.required' => 'El campo Nombre de Categoria es obligatorio.',
            'nami.min'      => 'El campo nombre de Categoria debe contener al menos 4 caracteres.'
        ];
    }
}
