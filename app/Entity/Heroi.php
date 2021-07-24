<?php

namespace App\Entity;

use \App\Db\Database;
use \PDO;

class Heroi
{

    /**
     * Identificador único do heroi
     * @var integer
     */
    public $id;

    /**
     * Nome do heroi
     * @var string
     */
    public $nome;

    /**
     * Identidade secreta do heroi
     * @var string
     */
    public $identidade_secreta;

    /**
     * Poderes do heroi
     * @var array
     */
    public $poderes;


    /**
     * Método responsável por cadastrar uma nova vaga no banco
     * @return boolean
     */
    public function cadastrar()
    {
        //INSERIR A VAGA NO BANCO
        $obDatabase = new Database('herois');

        $this->id = $obDatabase->insert([
            'nome' => $this->nome,
            'identidade_secreta' => $this->identidade_secreta,
        ]);

        foreach($this->poderes as $poder){
            $obDatabase = new Database('poderes');
            $obDatabase->insert([
                'heroi_id' => $this->id,
                'titulo' => trim($poder)
            ]);
        }

        //RETORNAR SUCESSO
        return $this->id;
    }

    /**
     * Método responsável por atualizar a vaga no banco
     * @return boolean
     */
    public function atualizar()
    {
        (new Database('herois'))->update('id = ' . $this->id, [
            'nome' => $this->nome,
            'identidade_secreta' => $this->identidade_secreta,
        ]);

        (new Database('poderes'))->delete('heroi_id = ' . $this->id);

        foreach($this->poderes as $poder){
            $obDatabase = new Database('poderes');
            $obDatabase->insert([
                'heroi_id' => $this->id,
                'titulo' => trim($poder)
            ]);
        }

        return $this->id;
    }

    /**
     * Método responsável por excluir a vaga do banco
     * @return boolean
     */
    public function excluir()
    {
        (new Database('poderes'))->delete('heroi_id = ' . $this->id);
        return (new Database('herois'))->delete('id = ' . $this->id);
    }

    /**
     * Método responsável por obter as vagas do banco de dados
     * @param string $where
     * @param string $order
     * @param string $limit
     * @return array
     */
    public static function getHerois($where = null, $order = null, $limit = null)
    {
        $herois = (new Database('herois'))->select($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);

        foreach($herois as $heroi){
            $poderes = (new Database('poderes'))->select('heroi_id = ' . $heroi->id)
                ->fetchAll(PDO::FETCH_CLASS, self::class);
            $heroi->poderes = $poderes;
        }

        return $herois;
    }

    /**
     * Método responsável por buscar uma vaga com base em seu ID
     * @param integer $id
     * @return Heroi
     */
    public static function getHeroi($id)
    {
        $heroi = (new Database('herois'))->select('id = ' . $id)
            ->fetchObject(self::class);

        $poderes = (new Database('poderes'))->select('heroi_id = ' . $heroi->id)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
        $heroi->poderes = $poderes;

        return $heroi;
    }

}