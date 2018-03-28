<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\User;
use App\Provinsi;
use App\Kabupaten;
use App\Kecamatan;
use App\Desa;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$this->resetDb();
		
		//SUPERADMIN	
		$user = new App\User;	
		$user->name = 'Super Admin';
		$user->email = 'superadmin@komoditas.id';
		$user->phone = '12345';
		$user->password = Hash::make('123qwe');
		$user->role = 'superadmin';
		$user->save();
		
		//ADMIN	
		$faker = Faker\Factory::create();	
		echo('create superadmin'.PHP_EOL);	
		for($i = 0; $i < 5; $i++){
			$user = new App\User;
			$user->name = $faker->firstName.' '.$faker->lastName;
			$user->email = strtolower(str_replace(' ', '', $user->name)).'@komoditas.id';
			$user->phone = $user->email;
			$user->password = Hash::make('123qwe');
			$user->role = 'admin';
			$user->save();
		}
		
		//LOCATION	
		echo('create location'.PHP_EOL);	
		$faker = Faker\Factory::create();		
		for($i_prov = 0; $i_prov < 3; $i_prov++){
			$prov = new App\Provinsi;
			$prov->name = $faker->country;
			$prov->save();	
			for($i_kab = 0; $i_kab < rand(1, 2); $i_kab++){
				$kab = new App\Kabupaten;
				$kab->name = $faker->state;
				$kab->provinsi_id = $prov->id;
				$kab->save();
				for($i_kec = 0; $i_kec < rand(1, 2); $i_kec++){
					$kec = new App\Kecamatan;
					$kec->name = $faker->city;
					$kec->kabupaten_id = $kab->id;
					$kec->save();
					for($i_des = 0; $i_des < rand(1, 2); $i_des++){
						$des = new App\Desa;
						$des->name = $faker->streetName;
						$des->kecamatan_id = $kec->id;
						$des->save();
					}
				}
			}
		}
    }
	
    public function resetDb(){
		Eloquent::unguard();

        //disable foreign key check for this connection before running seeders
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
		
		echo('delete : all'.PHP_EOL);
		User::truncate();
		Provinsi::truncate();
		Kabupaten::truncate();
		Kecamatan::truncate();
		Desa::truncate();
		
		DB::statement('SET FOREIGN_KEY_CHECKS=1;');
	}
}
