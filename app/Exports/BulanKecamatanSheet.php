<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class BulanKecamatanSheet implements FromView, WithTitle, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $data;
    protected $index;
    
    public function __construct($data, $index)
    {
        $this->data = $data;
        $this->index = $index;
    }
	
    public function view(): View
    {
        return view('report.lahan-kecamatan', [
			'data' => $this->data,
			'index' => $this->index
        ]);
    }
	
	public function title(): string
    {
        return $this->index;
    }
}
