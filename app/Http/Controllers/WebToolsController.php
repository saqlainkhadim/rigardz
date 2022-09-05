<?php

namespace App\Http\Controllers;

use App\Setting;
use Faker\Factory;
use MatthiasMullie\Minify;
use Illuminate\Http\Request;
use Iodev\Whois\Factory as Whois;
use Illuminate\Support\Facades\DB;
use GeoIp2\Database\Reader as GeoIP;
use Illuminate\Support\Facades\Hash;

class WebToolsController extends Controller
{
    // HTML Beautifier
    public function htmlBeautifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.html-beautifier', compact('supportPage', 'settings', 'config'));
    }

    // HTML Minifier
    public function htmlMinifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.html-minifier', compact('supportPage', 'settings', 'config'));
    }

    // CSS Beautifier
    public function cssBeautifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.css-beautifier', compact('supportPage', 'settings', 'config'));
    }

    // CSS Minifier
    public function cssMinifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.css-minifier', compact('supportPage', 'settings', 'config'));
    }

    // CSS Minifier Result 
    public function resultCssMinifier(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Request parameter
        $css = $request->css;

        // Minifier
        $minifier = new Minify\CSS($request->css);
        $results = $minifier->minify();

        return view('pages.web-tools.css-minifier', compact('supportPage', 'css', 'results', 'settings', 'config'));
    }

    // Random Password Generator
    public function randomPasswordGenerator()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.random-password-generator', compact('supportPage', 'settings', 'config'));
    }

    // Bcrypt Password Generator
    public function bcryptPasswordGenerator()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.bcrypt-password-generator', compact('supportPage', 'settings', 'config'));
    }

    // Bcrypt Password Generator Result 
    public function resultBcryptPasswordGenerator(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Request parameter
        $password = $request->password;

        // Bcrypt Password Generator
        $results = bcrypt($password);

        return view('pages.web-tools.bcrypt-password-generator', compact('supportPage', 'password', 'results', 'settings', 'config'));
    }

    // MD5 Password Generator
    public function md5PasswordGenerator()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.md5-password-generator', compact('supportPage', 'settings', 'config'));
    }

    // MD5 Password Generator Result 
    public function resultMd5PasswordGenerator(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Request parameter
        $password = $request->password;

        // MD5 Password Generator
        $results = md5($password);

        return view('pages.web-tools.md5-password-generator', compact('supportPage', 'password', 'results', 'settings', 'config'));
    }

    // Random Word Generator
    public function randomWordGenerator()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.random-word-generator', compact('supportPage', 'settings', 'config'));
    }

    // Random Word Generator Result 
    public function resultRandomWordGenerator(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Request parameter
        $words = $request->words;
        $words_ = [];

        if ($words < 9999) {
            // Random Word Generator
            $faker = Factory::create();
            for ($i=0; $i < $words; $i++) { 
                $words_[] = $faker->word;
            }

            $count = (int)$words;
            $results = implode(', ', $words_);
        } else {
            $count = (int)$words;
            $results = trans('Maximum limit reached');
        }

        return view('pages.web-tools.random-word-generator', compact('supportPage', 'count', 'results', 'settings', 'config'));
    }

    // Text Counter
    public function textCounter()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.text-counter', compact('supportPage', 'settings', 'config'));
    }

    // Lorem Generator
    public function loremGenerator()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.lorem-generator', compact('supportPage', 'settings', 'config'));
    }

    // Emojies
    public function emojies()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.emojies', compact('supportPage', 'settings', 'config'));
    }

    // JS Beautifier
    public function jsBeautifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.js-beautifier', compact('supportPage', 'settings', 'config'));
    }

    // JS Minifier
    public function jsMinifier()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.js-minifier', compact('supportPage', 'settings', 'config'));
    }

    // JS Minifier Result 
    public function resultjsMinifier(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Request parameter
        $js = $request->js;

        // Minifier
        $minifier = new Minify\JS($request->js);
        $results = $minifier->minify();

        return view('pages.web-tools.js-minifier', compact('supportPage', 'js', 'results', 'settings', 'config'));
    }

    // DNS
    public function dnsLookup()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.dns', compact('supportPage', 'settings', 'config'));
    }

    // DNS Result 
    public function resultDnsLookup(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Queries
        $domain = str_replace(['http://', 'https://'], '', $request->input('domain'));

        try {
            $results = dns_get_record($domain, DNS_A + DNS_AAAA + DNS_CNAME + DNS_MX + DNS_TXT + DNS_NS);
        } catch (\Exception $e) {
            $results = [];
        }

        return view('pages.web-tools.dns', compact('supportPage', 'results', 'settings', 'config'));
    }

    // IP Address
    public function ipLookup()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.ip', compact('supportPage', 'settings', 'config'));
    }

    // IP Result 
    public function resultIpLookup(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Queries
        try {
            $results = (new GeoIP(storage_path('app/geoip/GeoLite2-City.mmdb')))->city($request->input('ip'))->raw;
        } catch (\Exception $e) {
            $results = false;
        }

        return view('pages.web-tools.ip', compact('supportPage', 'results', 'settings', 'config'));
    }

    // Whois Address
    public function whoisLookup()
    {
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        return view('pages.web-tools.whois', compact('supportPage', 'settings', 'config'));
    }

    // Whois Result 
    public function resultWhoisLookup(Request $request)
    {
        // Queries
        $config = DB::table('config')->get();
        $settings = Setting::where('status', 1)->first();
        $supportPage = DB::table('pages')->where('page_name', 'footer support email')->orWhere('page_name', 'footer')->get();

        // Input
        $domain = str_replace(['http://', 'https://', 'www.', 'http://www.', 'https://www.'], '', $request->input('domain'));

        $results = false;
        try {
            $results = Whois::get()->createWhois()->loadDomainInfo($domain);
        } catch (\Exception $e) {
	        $results = [];
        }

        return view('pages.web-tools.whois', compact('supportPage', 'results', 'settings', 'config'));
    }


    // Random word generator function
    function getRandomWord($len) {
        $word = array_merge(range('a', 'z'), range('A', 'Z'));
        shuffle($word);
        return substr(implode($word), 0, $len);
    }
}
