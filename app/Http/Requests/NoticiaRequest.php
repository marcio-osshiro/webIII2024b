<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NoticiaRequest extends FormRequest
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
        return [
            "data" => "required", 
            "autor" => "required", 
            "titulo" => "required", 
            "categoria_id" => "required|exists:categoria,id", 
            "descricao" => "required"
        ];
    }

    public function messages(): array
    {
        return [
            'data.required' => 'A Data é obrigatória',
            'autor.required' => 'O Autor é obrigatório',
            'titulo.required' => 'O título é obrigatório',
            'categoria_id.required' => 'A categoria deve ser selecionada',
            'categoria_id.exists' => 'Categoria não encontrada',
            'descricao.required' => 'A Descrição é obrigatória',
        ];
    }    

}
