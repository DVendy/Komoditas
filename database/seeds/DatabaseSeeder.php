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
use App\KomoditasLahan;
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
				'name'=>'SAPI POTONG', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'KAMBING POTONG', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'SAPI PERAH', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'AYAM PEDAGING', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'JAGUNG HIBRIDA', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'JAGUNG MANIS', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'CABE RAWIT', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'PADI', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN LELE', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN NILA', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'BELUT', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN ……', 'type'=>'ikan',
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
		for($i_prov = 0; $i_prov < 1; $i_prov++){
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
			for($i_kab = 0; $i_kab < 1; $i_kab++){
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
				for($i_kec = 0; $i_kec < 3; $i_kec++){
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
					for($i_des = 0; $i_des < 5; $i_des++){
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
						
						for($i_lahan = 0; $i_lahan < 30; $i_lahan++){
							$lahan = new App\Lahan;
							$lahan->desa_id = $des->id;
							$lahan->name = 'Lahan '.$faker->secondaryAddress;
							$lahan->luas = mt_rand(100*100, 800*100) / 100;
							$lahan->lat = ''.(mt_rand(-7.7*10000000, -6.8*10000000) / 10000000);
							$lahan->long = ''.(mt_rand(107*10000000, 111*10000000) / 10000000);
							$lahan->save();
						
							$komoditas = Komoditas::select('id', 'type')->get()->toArray()[array_rand(App\Komoditas::select('id', 'type')->get()->toArray())];
							$lk = new KomoditasLahan;
							$lk->komoditas_id = $komoditas['id'];
							$lk->lahan_id = $lahan->id;
							$lk->type = $komoditas['type'];
							if($komoditas['type'] == 'ternak'){
								$lk->b_luas_kandang = mt_rand(100*100, 800*100) / 100;
								$lk->b_tahap_persiapan = mt_rand(100*100, 800*100) / 100;
								$lk->b_tahap_pemeliharaan = mt_rand(100*100, 800*100) / 100;
								$lk->b_tahap_panen = mt_rand(100*100, 800*100) / 100;
								$lk->b_tanggal_masuk_ternak = $faker->dateTimeBetween($startDate = '-3 months', $endDate = 'now', $timezone = null);
								$lk->b_jumlah_ternak = mt_rand(10, 200);
								$lk->b_tanggal_panen = $faker->dateTimeBetween($startDate = 'now', $endDate = '+2 months', $timezone = null);
								$lk->b_estimasi_hasil_panen = mt_rand(10, 200);
							}
							if($komoditas['type'] == 'tanaman'){
								$lk->t_luas_lahan = mt_rand(100*100, 800*100) / 100;
								$lk->t_tahap_persiapan = mt_rand(100*100, 800*100) / 100;
								$lk->t_tahap_pemeliharaan = mt_rand(100*100, 800*100) / 100;
								$lk->t_tahap_panen = mt_rand(100*100, 800*100) / 100;
								$lk->t_tanggal_mulai_tanam = $faker->dateTimeBetween($startDate = '-3 months', $endDate = 'now', $timezone = null);
								$lk->t_jumlah_tanaman = mt_rand(10, 200);
								$lk->t_tanggal_panen = $faker->dateTimeBetween($startDate = 'now', $endDate = '+2 months', $timezone = null);
								$lk->t_estimasi_hasil_panen = mt_rand(10, 200);
							}
							if($komoditas['type'] == 'ikan'){
								$lk->i_luas_kolam = mt_rand(100*100, 800*100) / 100;
								$lk->i_tahap_persiapan = mt_rand(100*100, 800*100) / 100;
								$lk->i_tahap_pemeliharaan = mt_rand(100*100, 800*100) / 100;
								$lk->i_tahap_panen = mt_rand(100*100, 800*100) / 100;
								$lk->i_tanggal_tebar_ikan = $faker->dateTimeBetween($startDate = '-3 months', $endDate = 'now', $timezone = null);
								$lk->i_jumlah_ikan = mt_rand(10, 200);
								$lk->i_tanggal_panen = $faker->dateTimeBetween($startDate = 'now', $endDate = '+2 months', $timezone = null);
								$lk->i_estimasi_hasil_panen = mt_rand(10, 200);
							}
							$lk->save();
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
		Desa::truncate();
		Fase::truncate();
		Kabupaten::truncate();
		Kecamatan::truncate();
		Komoditas::truncate();
		KomoditasLahan::truncate();
		Lahan::truncate();
		Provinsi::truncate();
		User::truncate();
		
		DB::statement('SET FOREIGN_KEY_CHECKS=1;');
	}
}
