<?php

namespace App\Http\Controllers\User;

use App\Plan;
use App\User;
use App\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AccountController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    // My account
    public function account()
    {
        $account_details = User::where('user_id', auth()->user()->user_id)->where('status', 1)->first();
        $settings = Setting::where('status', 1)->first();
        return view('user.account.account', compact('account_details', 'settings'));
    }

    // Edit account
    public function editAccount()
    {
        $account_details = User::where('user_id', auth()->user()->user_id)->where('status', 1)->first();
        $settings = Setting::where('status', 1)->first();
        return view('user.account.edit-account', compact('account_details', 'settings'));
    }

    // Update account
    public function updateAccount(Request $request)
    {
        if ($request->profile_picture == null) {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required'
            ]);

            User::where('user_id', auth()->user()->user_id)->update([
                'name' => $request->name,
                'email' => $request->email
            ]);
            if ($validator->fails()) {
                return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
            }

            return redirect()->route('user.edit.account')->with('success', 'Profile Updated Successfully!');
        } else {
            $validator = Validator::make($request->all(), [
                'profile_picture' => 'required|mimes:jpeg,png,jpg,gif,svg|max:'.env("SIZE_LIMIT").'',
            ]);

            if ($validator->fails()) {
                alert()->error(trans('Invalid Image or image size is large.'));
                return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
            }

//            $profile_picture = 'profile_images/' . 'IMG-' . uniqid() . '-' . time() . '.' . $request->profile_picture->extension();
//            $request->profile_picture->move(public_path('profile_images'), $profile_picture);
//
//            User::where('user_id', auth()->user()->user_id)->update([
//                'profile_image' => $profile_picture
//            ]);

            return redirect()->route('user.edit.account')->with('success', 'Profile Image Updated Successfully!');
        }
    }

    // Change password
    public function changePassword()
    {
        $account_details = User::where('user_id', auth()->user()->user_id)->where('status', 1)->first();
        $settings = Setting::where('status', 1)->first();
        return view('user.account.change-password', compact('account_details', 'settings'));
    }

    // Update password
    public function updatePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'new_password' => 'required',
            'confirm_password' => 'required'
        ]);

        if ($request->new_password == $request->confirm_password) {
            User::where('user_id', auth()->user()->user_id)->update([
                'password' => bcrypt($request->new_password)
            ]);
            if ($validator->fails()) {
                return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
            }
            alert()->success(trans('Profile Password Changed Successfully!'));
            return redirect()->route('user.change.password');
        } else {
            alert()->error(trans('Confirm Password Mismatched.'));
            return redirect()->route('user.change.password');
        }
    }
    function update_account_image(Request $request){
        $validator = Validator::make($request->all(), [
            'edit_image' => 'required|mimes:jpeg,png,jpg,gif,svg|max:'.env("SIZE_LIMIT").'',
        ]);
        $base64_image = $request->input('edit_image'); // your base64 encoded
        @list($type, $file_data) = explode(';', $base64_image);
        @list(, $file_data) = explode(',', $file_data);
        $extension = explode('/', mime_content_type($base64_image))[1];
        $profile_picture = 'profile_images/' . 'IMG-' . uniqid() . '-' . time() . '.' . $extension;

        $path = public_path() .'/'.$profile_picture ;
        $upload= file_put_contents($path, base64_decode($file_data));
        User::where('user_id', auth()->user()->user_id)->update([
            'profile_image' => str_replace("\\","/",$profile_picture)
        ]);
        return response()->json(['status' => $upload, 'image_url' => '/'.str_replace("\\","/",$profile_picture)]);

    }

    function upload_image_to_edit_account(Request $request){
        $validator = Validator::make($request->all(), array(
            'edit_image' => 'required|mimes:jpeg,png,jpg,gif,svg|max:'.env("SIZE_LIMIT").'',
        ), array(
            'edit_image.required'         => 'Image is required',
            'edit_image.max'         => 'Image Size should be greater than '.env("SIZE_LIMIT")." Btyes",
        ));
        if ($validator->fails()) {
            $errors=implode(", ",$validator->errors()->all());
            return response()->json(['status' => false,"message"=>"validation Error","validator"=>$errors]);
        }

        $profile_picture = 'editable_images/' . 'IMG-' . uniqid() . '-' . time() . '.' . $request->edit_image->extension();
        $request->edit_image->move(public_path('editable_images'), $profile_picture);
        self::remove_old_images(public_path('editable_images'));
        return response()->json(['status' => true, 'image_url' => 'http://rigardz.com/'.$profile_picture]);
//        return response()->json(['status' => true, 'image_url' => 'https://scaleflex.airstore.io/demo/stephen-walker-unsplash.jpg']);
    }

    /*This function will delete all images form the given directory which are older than 1 day*/
    function remove_old_images($dir)
    {
        if (is_dir($dir))
        {
            $objects = scandir($dir);
            foreach ($objects as $object)
            {
                if ($object != "." && $object != "..")
                {
                    if (filetype($dir."/".$object) == "dir") {
                        rrmdir($dir."/".$object);
                        rmdir($dir);
                    }
                    if (filemtime($dir."/".$object) <= time()-60*60*24) unlink($dir."/".$object);

                }
            }
            reset($objects);
        }
    }

}
