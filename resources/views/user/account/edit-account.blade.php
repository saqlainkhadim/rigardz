@extends('layouts.user', ['header' => true, 'nav' => true, 'demo' => true, 'settings' => $settings])

@section('content')



<div  id="filerobot-edit-image" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div id="editor_container"></div>
        </div>
    </div>
</div>



<div class="page-wrapper">
    <div class="container-xl">
        <!-- Page title -->
        <div class="page-header d-print-none">
            <div class="row align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        {{ __('Overview') }}
                    </div>
                    <h2 class="page-title">
                        {{ __('Account Details') }}
                    </h2>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row row-deck row-cards">
                <div class="col-sm-12 col-lg-12">
                    <form action="{{ route('user.update.account') }}" method="post" enctype="multipart/form-data" class="card">
                        @csrf
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-10">
                                    <div class="row">
                                        <div class="col-md-4 col-xl-4">
                                            <div class="mb-3">
                                                <div class="form-label required">{{ __('Profile Picture') }} <span class='text-muted'>({{ __('Recommended : 200 x 200 pixels or 500 x 500 pixels') }})</span></div>
                                                <input type="file" class="form-control profile_picture" name="profile_picture"
                                                    placeholder="{{ __('Profile Picture') }}..." accept=".jpeg,.jpg,.png,.gif,.svg" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xl-4">
                                            <div class="mb-3">
                                                <label class="form-label required">{{ __('Name') }}</label>
                                                <input type="text" class="form-control" name="name"
                                                    placeholder="{{ __('Name') }}..."
                                                    value="{{ $account_details->name }}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xl-4">
                                            <div class="mb-3">
                                                <label class="form-label">{{ __('Email') }}</label>
                                                <input type="text" class="form-control" name="email"
                                                    placeholder="{{ __('Email') }}..."
                                                    value="{{ $account_details->email }}" readonly>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-xl-4 my-3">
                                            <div class="mb-3">
                                                <button type="submit" class="btn btn-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                        class="icon icon-tabler icon-tabler-edit" width="24" height="24"
                                                        viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                                        fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                        <path
                                                            d="M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3">
                                                        </path>
                                                        <path d="M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3">
                                                        </path>
                                                        <line x1="16" y1="5" x2="19" y2="8"></line>
                                                    </svg>
                                                    {{ __('Update') }}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    @section('scripts')
        <script src="https://scaleflex.cloudimg.io/v7/plugins/filerobot-image-editor/latest/filerobot-image-editor.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script >

            function filebot(source) {
                const {TABS, TOOLS} = window.FilerobotImageEditor;
                const config = {
                    source: source,
                    avoidChangesNotSavedAlertOnLeave:false,
                    showBackButton:true,
                    defaultSavedImageType:"png",
                    forceToPngInEllipticalCrop:true,
                    defaultSavedImageName:"{{auth()->user()->name}}",
                    closeAfterSave:true,
                    onSave: (editedImageObject, designState) => {

                        // console.log('saved', editedImageObject, designState);
                        var formDataA = new FormData();
                        formDataA.append('_token',"{{ csrf_token() }}");
                        formDataA.append('edit_image', editedImageObject.imageBase64);
                        $.ajax({
                            url: "/user/update-account-image",
                            data:formDataA,
                            cache:false,
                            contentType: false,
                            processData: false,
                            type:"POST",
                            success: function(result){
                                if(result.status){
                                    console.log("image updated");
                                    Swal.fire({
                                        position: 'top-end',
                                        icon: 'success',
                                        title: '',
                                        html: '<p>Image updated successfully!</p>',
                                        showConfirmButton: false,
                                        timer: 1500
                                    });
                                }
                            },
                            error:function(result){
                                console.log(result.status)
                            }
                        });
                        $('#filerobot-edit-image').modal('hide');

                    },



                    annotationsCommon: {
                        fill: '#ff0000',
                    },
                    Text: {text: 'Filerobot...'},
                    Rotate: {angle: 90, componentType: 'slider'},
                    translations: {
                        profile: 'Profile',
                        coverPhoto: 'Cover photo',
                        facebook: 'Facebook',
                        socialMedia: 'Social Media',
                        fbProfileSize: '180x180px',
                        fbCoverPhotoSize: '820x312px',
                    },
                    Crop: {
                        presetsItems: [
                            {
                                titleKey: 'classicTv',
                                descriptionKey: '4:3',
                                ratio: 4 / 3,
            // icon: CropClassicTv, // optional, CropClassicTv is a React Function component. Possible (React Function component, string or HTML Element)
                            },
                            {
                                titleKey: 'cinemascope',
                                descriptionKey: '21:9',
                                ratio: 21 / 9,
            // icon: CropCinemaScope, // optional, CropCinemaScope is a React Function component.  Possible (React Function component, string or HTML Element)
                            },
                        ],
                        presetsFolders: [
                            {
                                titleKey: 'socialMedia', // will be translated into Social Media as backend contains this translation key
            // icon: Social, // optional, Social is a React Function component. Possible (React Function component, string or HTML Element)
                                groups: [
                                    {
                                        titleKey: 'facebook',
                                        items: [
                                            {
                                                titleKey: 'profile',
                                                width: 180,
                                                height: 180,
                                                descriptionKey: 'fbProfileSize',
                                            },
                                            {
                                                titleKey: 'coverPhoto',
                                                width: 820,
                                                height: 312,
                                                descriptionKey: 'fbCoverPhotoSize',
                                            },
                                        ],
                                    },
                                ],
                            },
                        ],
                    },
                    tabsIds: [TABS.ADJUST, TABS.ANNOTATE, TABS.WATERMARK, TABS.FILTERS, TABS.FINETUNE, TABS.RESIZE], // or ['Adjust', 'Annotate', 'Watermark']
                    defaultTabId: TABS.ADJUST,
                    defaultToolId: TOOLS.CROP,
                };

                // Assuming we have a div with id="editor_container"
                const filerobotImageEditor = new FilerobotImageEditor(
                    document.querySelector('#editor_container'),
                    config,
                );

                filerobotImageEditor.render({
                    onClose: (closingReason) => {
                        console.log('Closing reason', closingReason);
                        filerobotImageEditor.terminate();
                        $('.profile_picture').val('');
                        $('#filerobot-edit-image').modal('hide');
                    },
                });

            }

            $(document).ready(function(){

                $('.profile_picture').on("change", function(){
                    var formData = new FormData();
                    formData.append('_token',"{{ csrf_token() }}");
                    formData.append('edit_image', $('.profile_picture')[0].files[0]);
                    $.ajax({
                        url: "/user/upload-image-to-edit-account",
                        data:formData,
                        cache:false,
                        contentType: false,
                        processData: false,
                        type:"POST",
                        success: function(result){
                            console.log(result);
                           if(result.status){
                               // source='https://scaleflex.airstore.io/demo/stephen-walker-unsplash.jpg';
                               source=result.image_url;

                               filebot(source);
                               $('#filerobot-edit-image').modal({backdrop: 'static', keyboard: false})
                               $('#filerobot-edit-image').modal('show');
                           }
                        },
                        error:function(result){
                            console.log(result.status)
                        }
                    });
                });

            });


        </script>
    @endsection
    @include('user.includes.footer')
</div>
@endsection
