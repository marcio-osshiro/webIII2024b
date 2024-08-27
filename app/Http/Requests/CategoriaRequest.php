<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoriaRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return ['descricao' => 'required|min:10'];
    }

    public function messages(): array
    {
        return [
            'descricao.required' => 'A descrição é obrigatória',
            'descricao.min' => 'Informe pelo menos 10 caracteres para a descrição',
        ];
    }    
}
