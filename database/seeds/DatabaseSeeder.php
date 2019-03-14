<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\User;
use App\Provinsi;
use App\Kabupaten;
use App\Kecamatan;
use App\Desa;
use App\Fase;
use App\Komoditas;
use App\Lahan;

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
		
		// KOMODITAS
		$data = array(
			array(
				'name'=>'Padi', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'Jagung', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'Ayam', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'Sapi', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
		);

		Komoditas::insert($data);
		
		//FASE	
		$data = array(
			array(
				'name'=>'Persiapan', 'urutan'=>1,
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				 'name'=>'Penanaman', 'urutan'=>2,
				 'created_at'=>date('Y-m-d H:i:s'),
				 'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				 'name'=>'Pemeliharaan', 'urutan'=>3,
				 'created_at'=>date('Y-m-d H:i:s'),
				 'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				 'name'=>'Panen', 'urutan'=>4,
				 'created_at'=>date('Y-m-d H:i:s'),
				 'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				 'name'=>'Kosong', 'urutan'=>5,
				 'created_at'=>date('Y-m-d H:i:s'),
				 'updated_at'=> date('Y-m-d H:i:s')
			   ),
		);

		Fase::insert($data);
		$fase_ids = [];
		$fase = Fase::all();
		foreach($fase as $val){
			$fase_ids[] = $val->id;
		}
		
		//LOCATION	
		echo('create location'.PHP_EOL);	
		$faker = Faker\Factory::create();		
		for($i_prov = 0; $i_prov < 3; $i_prov++){
			$user = new App\User;
			$user->name = $faker->firstName.' '.$faker->lastName;
			$user->email = strtolower(str_replace(' ', '', $user->name)).'@komoditas.id';
			$user->phone = $user->email;
			$user->password = Hash::make('123qwe');
			$user->role = 'korprov';
			$user->save();
			
			$prov = new App\Provinsi;
			$prov->name = $faker->country;
			$prov->pengurus_id = $user->id;
			$prov->save();	
			for($i_kab = 0; $i_kab < rand(1, 2); $i_kab++){
				$user = new App\User;
				$user->name = $faker->firstName.' '.$faker->lastName;
				$user->email = strtolower(str_replace(' ', '', $user->name)).'@komoditas.id';
				$user->phone = $user->email;
				$user->password = Hash::make('123qwe');
				$user->role = 'korkab';
				$user->save();
				
				$kab = new App\Kabupaten;
				$kab->name = $faker->state;
				$kab->provinsi_id = $prov->id;
				$kab->pengurus_id = $user->id;
				$kab->save();
				for($i_kec = 0; $i_kec < rand(1, 2); $i_kec++){
					$user = new App\User;
					$user->name = $faker->firstName.' '.$faker->lastName;
					$user->email = strtolower(str_replace(' ', '', $user->name)).'@komoditas.id';
					$user->phone = $user->email;
					$user->password = Hash::make('123qwe');
					$user->role = 'korkec';
					$user->save();
					
					$kec = new App\Kecamatan;
					$kec->name = $faker->city;
					$kec->kabupaten_id = $kab->id;
					$kec->pengurus_id = $user->id;
					$kec->save();
					for($i_des = 0; $i_des < rand(1, 2); $i_des++){
						$user = new App\User;
						$user->name = $faker->firstName.' '.$faker->lastName;
						$user->email = strtolower(str_replace(' ', '', $user->name)).'@komoditas.id';
						$user->phone = $user->email;
						$user->password = Hash::make('123qwe');
						$user->role = 'kordes';
						$user->save();
						
						$des = new App\Desa;
						$des->name = $faker->streetName;
						$des->kecamatan_id = $kec->id;
						$des->pengurus_id = $user->id;	
						$des->save();
						
						for($i_lahan = 0; $i_lahan < rand(4, 8); $i_lahan++){
							$lahan = new App\Lahan;
							$lahan->desa_id = $des->id;
							$lahan->name = 'Lahan '.$faker->secondaryAddress;
							$lahan->luas = mt_rand(100*100, 800*100) / 100;
							$lahan->lat = ''.(mt_rand(-7.7*10000000, -6.8*10000000) / 10000000);
							$lahan->long = ''.(mt_rand(107*10000000, 111*10000000) / 10000000);
							$lahan->save();
						}
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
		Fase::truncate();
		Lahan::truncate();
		
		DB::statement('SET FOREIGN_KEY_CHECKS=1;');
	}
}
