<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class BulanKecamatan implements WithMultipleSheets
{
    use Exportable;

    protected $data;
    
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * @return array
     */
    public function sheets(): array
    {
        $sheets = [];

        foreach($this->data['komoditases'] as $val){
            $sheets[] = new BulanKecamatanSheet($this->data, $val);
        }

        return $sheets;
    }
}