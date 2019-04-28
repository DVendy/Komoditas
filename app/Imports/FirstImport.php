<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

use DB;
use Hash;
use Eloquent;
use App\User;
use App\Provinsi;
use App\Kabupaten;
use App\Kecamatan;
use App\Desa;
use App\Fase;
use App\Komoditas;
use App\KomoditasLahan;
use App\HistoryKomoditasLahan;
use App\Lahan;

class FirstImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
		// $this->clearData();
			
		$prov = new Provinsi;
		$prov->name = 'Jawa Tengah';
		$prov->save();
			
		$kab = new Kabupaten;
		$kab->provinsi_id = $prov->id;
		$kab->name = 'Wonosobo';
		$kab->save();
		
		foreach($rows as $row){
			if($row[0]){
				$kec = Kecamatan::where('name', $row[0])->first();
				if(!$kec){
					$kec = new Kecamatan;
					$kec->kabupaten_id = $kab->id;
					$kec->name = $row[0];
					$kec->save();
				}
				
				$des = new Desa;
				$des->kecamatan_id = $kec->id;
				$des->name = $row[1];
				$des->save();
				
				$user = User::where('email', str_replace([' ', '-', '+'], '', $row[3]))->first();
				if($user){
					$user = new User;
					if($row[2] == '')
						$user->name = 'Kordes - '.$des->name;
					else
						$user->name = $row[2];
					$user->email = str_replace([' ', '-', '+'], '', $row[3]).'_2';
					$user->phone = str_replace([' ', '-', '+'], '', $row[3]).'_2';
					$user->password = Hash::make('sitani');
					$user->role = 'kordes';
					$user->save();
				}else{
					$user = new User;
					if($row[2] == '')
						$user->name = 'Kordes - '.$des->name;
					else
						$user->name = $row[2];
					$user->email = str_replace([' ', '-', '+'], '', $row[3]);
					$user->phone = str_replace([' ', '-', '+'], '', $row[3]);
					$user->password = Hash::make('sitani');
					$user->role = 'kordes';
					$user->save();
				}
				
				$des->pengurus_id = $user->id;
				$des->save();
			}
		}
    }
	
	public function clearData()
	{
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
		
		Desa::truncate();
		Kecamatan::truncate();
		Kabupaten::truncate();
		Provinsi::truncate();
		Lahan::truncate();
		Komoditas::truncate();
		KomoditasLahan::truncate();
		HistoryKomoditasLahan::truncate();
		
		DB::statement('SET FOREIGN_KEY_CHECKS=1;');
	}
}
