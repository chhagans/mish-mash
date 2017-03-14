<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class ChartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('chart');
    }

    //
    public function show(){
        //todo: should use eloquent for this but cheating for now
        $host = "host=".config("database.connections.pgsql.host");
        $port = "port=".config("database.connections.pgsql.port");
        $dbname = "dbname=".config("database.connections.pgsql.database");
        $user = "user=".config("database.connections.pgsql.username");
        $password = "password=".config("database.connections.pgsql.password");

        $db = pg_connect( "$host $port $dbname $user $password" );

        if($db) {
            $query = "select f.name as name, f.type as type, f.shortcode as shortcode, fv.created_at as date,fv.price as price
                    from fund_values fv
                    join funds f on f.id = fv.fund_id
                    join user_funds uf on uf.fund_id = f.id
                    join users u on u.id = uf.user_id
                    where u.id = " . Auth::user()->id .
                    "order by f.type,f.name,fv.created_at";

            $queryresults = pg_query($db,$query);

            if ( ! $queryresults ) {
                echo pg_errormessage();
                die;
            }

            $data = array();

            for ($x = 0; $x < pg_num_rows($queryresults); $x++) {
                $data[] = pg_fetch_assoc($queryresults);
            }

            pg_close($db);

            return json_encode($data);
        }
    }
}