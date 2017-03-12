<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TsvController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $file_n = base_path("storage/app/tsv/". $id);
        $file = file_get_contents($file_n, FILE_USE_INCLUDE_PATH);
        //$file = fopen($file_n, "r");
        return $file;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $file_n = base_path("storage/app/tsv/". $id);
        $file = fopen($file_n, "r");
        $all_data = array();
        while ( ($data = fgetcsv($file, 200, ",")) !==FALSE ) {

            $name = $data[0];
            $city = $data[1];
            $all_data = $name. " ".$city;

            array_push($array, $all_data);
        }
        fclose($file);

        //do some editing
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
