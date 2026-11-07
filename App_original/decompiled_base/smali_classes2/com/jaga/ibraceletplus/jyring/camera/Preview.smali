.class public Lcom/jaga/ibraceletplus/jyring/camera/Preview;
.super Landroid/view/SurfaceView;
.source "Preview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;,
        Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;
    }
.end annotation


# static fields
.field private static final FOCUS_DONE:I = 0x3

.field private static final FOCUS_FAILED:I = 0x2

.field private static final FOCUS_SUCCESS:I = 0x1

.field private static final FOCUS_WAITING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Preview"

.field private static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field private static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"


# instance fields
.field private LOG:Z

.field private final PHASE_NORMAL:I

.field private final PHASE_PREVIEW_PAUSED:I

.field private final PHASE_TAKING_PHOTO:I

.field private final PHASE_TIMER:I

.field private app_is_paused:Z

.field private aspect_ratio:D

.field private battery_frac:F

.field private battery_ifilter:Landroid/content/IntentFilter;

.field private beepTimer:Ljava/util/Timer;

.field private beepTimerTask:Ljava/util/TimerTask;

.field private camera:Landroid/hardware/Camera;

.field private cameraId:I

.field private cameraRotation:[F

.field private camera_info:Landroid/hardware/Camera$CameraInfo;

.field private camera_to_preview_matrix:Landroid/graphics/Matrix;

.field private change_exposure_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private color_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public count_cameraAutoFocus:I

.field public count_cameraStartPreview:I

.field public count_cameraTakePicture:I

.field private current_flash_index:I

.field private current_focus_index:I

.field private current_fps_range:[I

.field private current_orientation:I

.field private current_rotation:I

.field private current_size_index:I

.field private current_video_quality:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private deviceInclination:[F

.field private deviceRotation:[F

.field private display_orientation:I

.field private exposure_lock_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private exposures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private face_rect:Landroid/graphics/RectF;

.field private faces_detected:[Landroid/hardware/Camera$Face;

.field private flash_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private focus_complete_time:J

.field private focus_screen_x:I

.field private focus_screen_y:I

.field private focus_success:I

.field private focus_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private force_video:Z

.field private free_memory_gb:F

.field private geo_direction:[F

.field private geomagnetic:[F

.field private gravity:[F

.field private gui_location:[I

.field private has_aspect_ratio:Z

.field private has_battery_frac:Z

.field private has_focus_area:Z

.field private has_geo_direction:Z

.field private has_geomagnetic:Z

.field private has_gravity:Z

.field private has_level_angle:Z

.field public has_received_location:Z

.field private has_set_location:Z

.field private has_surface:Z

.field private has_zoom:Z

.field private is_exposure_locked:Z

.field private is_exposure_locked_supported:Z

.field private is_preview_started:Z

.field private is_video:Z

.field private iso_key:Ljava/lang/String;

.field private isos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private last_battery_time:J

.field private last_free_memory_time:J

.field private level_angle:D

.field private location:Landroid/location/Location;

.field private location_accuracy:F

.field private location_dest:Landroid/graphics/Rect;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private max_exposure:I

.field private max_zoom_factor:I

.field private min_exposure:I

.field private n_burst:I

.field private orig_level_angle:D

.field private p:Landroid/graphics/Paint;

.field private phase:I

.field private preview_image_name:Ljava/lang/String;

.field private preview_to_camera_matrix:Landroid/graphics/Matrix;

.field private remaining_burst_photos:I

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scene_modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sensor_alpha:F

.field private set_flash_after_autofocus:Ljava/lang/String;

.field private sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private stopstart_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private successfully_focused:Z

.field private successfully_focused_time:J

.field private supported_flash_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supported_focus_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supported_preview_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private supports_face_detection:Z

.field private switch_camera_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private switch_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field private takePictureFocusable:Z

.field private takePictureTimer:Ljava/util/Timer;

.field private takePictureTimerTask:Ljava/util/TimerTask;

.field private take_photo_time:J

.field private take_photo_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

.field public test_angle:F

.field public test_have_angle:Z

.field public test_last_saved_image:Ljava/lang/String;

.field public test_low_memory:Z

.field private text_bounds:Landroid/graphics/Rect;

.field private thumbnail:Landroid/graphics/Bitmap;

.field private thumbnail_anim:Z

.field private thumbnail_anim_dst_rect:Landroid/graphics/RectF;

.field private thumbnail_anim_matrix:Landroid/graphics/Matrix;

.field private thumbnail_anim_src_rect:Landroid/graphics/RectF;

.field private thumbnail_anim_start_ms:J

.field private touch_was_multitouch:Z

.field private ui_placement_right:Z

.field private ui_rotation:I

.field private using_face_detection:Z

.field private video_name:Ljava/lang/String;

.field private video_quality:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video_recorder:Landroid/media/MediaRecorder;

.field private video_sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private video_start_time:J

.field private video_start_time_set:Z

.field private white_balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zoom_factor:I

.field private zoom_ratios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 11

    .line 243
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    .line 71
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->decimalFormat:Ljava/text/DecimalFormat;

    .line 72
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    .line 73
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->face_rect:Landroid/graphics/RectF;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    .line 77
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->display_orientation:I

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_placement_right:Z

    .line 81
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->app_is_paused:Z

    const/4 v2, 0x0

    .line 82
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 83
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    .line 84
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_aspect_ratio:Z

    const-wide/16 v3, 0x0

    .line 85
    iput-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->aspect_ratio:D

    .line 86
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    .line 87
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    .line 88
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    .line 89
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 90
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time_set:Z

    const-wide/16 v5, 0x0

    .line 91
    iput-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time:J

    .line 92
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    const/4 v7, 0x2

    .line 93
    new-array v8, v7, [I

    iput-object v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    .line 95
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->PHASE_NORMAL:I

    .line 96
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->PHASE_TIMER:I

    .line 97
    iput v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->PHASE_TAKING_PHOTO:I

    const/4 v8, 0x3

    .line 98
    iput v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->PHASE_PREVIEW_PAUSED:I

    .line 99
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 102
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    iput-object v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimer:Ljava/util/Timer;

    .line 103
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    .line 104
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    iput-object v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimer:Ljava/util/Timer;

    .line 105
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    .line 106
    iput-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_time:J

    .line 107
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    .line 108
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    .line 110
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    .line 112
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    .line 114
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim:Z

    const-wide/16 v9, -0x1

    .line 115
    iput-wide v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_start_ms:J

    .line 116
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    .line 117
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    .line 118
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    .line 119
    new-array v1, v7, [I

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gui_location:[I

    .line 121
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_orientation:I

    .line 122
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    .line 123
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_level_angle:Z

    .line 124
    iput-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    .line 125
    iput-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->orig_level_angle:D

    const/high16 v1, -0x40800000    # -1.0f

    .line 127
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->free_memory_gb:F

    .line 128
    iput-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->last_free_memory_time:J

    .line 130
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    .line 131
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    .line 132
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_zoom_factor:I

    .line 134
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    .line 135
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->touch_was_multitouch:Z

    .line 137
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    const/4 v1, -0x1

    .line 138
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    .line 140
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    .line 141
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    .line 143
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked_supported:Z

    .line 144
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    .line 146
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->color_effects:Ljava/util/List;

    .line 147
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scene_modes:Ljava/util/List;

    .line 148
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->white_balances:Ljava/util/List;

    .line 149
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    .line 151
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    .line 152
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    .line 153
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    .line 155
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_preview_sizes:Ljava/util/List;

    .line 157
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    .line 158
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    .line 163
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    .line 164
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    .line 165
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    .line 167
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    .line 168
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_accuracy:F

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_dest:Landroid/graphics/Rect;

    .line 178
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switch_camera_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 179
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switch_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 180
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->flash_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 181
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 182
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposure_lock_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 183
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 184
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopstart_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 185
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->change_exposure_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    .line 187
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    .line 189
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supports_face_detection:Z

    .line 190
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    .line 191
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    .line 192
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    .line 193
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_x:I

    .line 194
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_y:I

    .line 195
    iput-wide v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    .line 196
    iput v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 201
    const-string v3, ""

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    .line 202
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    .line 203
    iput-wide v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused_time:J

    .line 205
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->battery_ifilter:Landroid/content/IntentFilter;

    .line 206
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_battery_frac:Z

    .line 207
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->battery_frac:F

    .line 208
    iput-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->last_battery_time:J

    const v3, 0x3f4ccccd    # 0.8f

    .line 211
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sensor_alpha:F

    .line 212
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_gravity:Z

    .line 213
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gravity:[F

    .line 214
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geomagnetic:Z

    .line 215
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geomagnetic:[F

    const/16 v3, 0x9

    .line 216
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->deviceRotation:[F

    .line 217
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraRotation:[F

    .line 218
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->deviceInclination:[F

    .line 219
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geo_direction:Z

    .line 220
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geo_direction:[F

    .line 223
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraStartPreview:I

    .line 224
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraAutoFocus:I

    .line 225
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraTakePicture:I

    .line 226
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_received_location:Z

    .line 227
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_low_memory:Z

    .line 228
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_have_angle:Z

    .line 229
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_angle:F

    .line 230
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_last_saved_image:Ljava/lang/String;

    .line 232
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureFocusable:Z

    .line 234
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->force_video:Z

    .line 244
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v3, "Preview"

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "new Preview"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 251
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 253
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 255
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;

    invoke-direct {v4, p0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$ScaleListener;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;)V

    invoke-direct {v1, p1, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz p2, :cond_6

    .line 258
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_1

    .line 259
    const-string p1, "have savedInstanceState"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    const-string p1, "cameraId"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    .line 261
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_2

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "found cameraId: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_2
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    if-ltz p1, :cond_3

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-lt p1, v1, :cond_5

    .line 264
    :cond_3
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_4

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "cameraID not valid for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cameras!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_4
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    .line 268
    :cond_5
    const-string/jumbo p1, "zoom_factor"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    .line 269
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_6

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "found zoom_factor: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/hardware/Camera;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getImageQuality()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/media/ExifInterface;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setGPSDirectionExif(Landroid/media/ExifInterface;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geo_direction:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    return p0
.end method

.method static synthetic access$1610(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    return v0
.end method

.method static synthetic access$1700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setPreviewPaused(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    return p0
.end method

.method static synthetic access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;J)J
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_start_ms:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/jaga/ibraceletplus/jyring/camera/Preview;ZZZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->autoFocusCompleted(ZZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    return p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)[Landroid/hardware/Camera$Face;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Ljava/util/TimerTask;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    return p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureWhenFocused()V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_level_angle:Z

    return p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    return-wide p1
.end method

.method static synthetic access$918(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    return-wide v0
.end method

.method static synthetic access$926(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    return-wide v0
.end method

.method private addCustomResolutions(III)V
    .locals 5

    .line 1323
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1326
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1327
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    if-le v2, p1, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 1328
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    if-ge v2, p2, :cond_1

    .line 1329
    :cond_2
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private autoFocusCompleted(ZZZ)V
    .locals 4

    .line 4053
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4054
    const-string v0, "autoFocusCompleted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    manual? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    success? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    cancelled? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/4 v2, 0x3

    .line 4060
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 4063
    :goto_0
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 4064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    .line 4066
    :goto_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    if-nez p2, :cond_3

    .line 4067
    iget-boolean p1, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->is_test:Z

    if-eqz p1, :cond_4

    .line 4068
    :cond_3
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    .line 4069
    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused_time:J

    .line 4071
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 4072
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_5

    .line 4073
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "set flash back to: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 4075
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4076
    const-string p3, ""

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    .line 4078
    :try_start_0
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4081
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4082
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set flash back to exception: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    if-ne p2, v0, :cond_7

    .line 4086
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isTakePictureFocusable()Z

    move-result p1

    if-ne p1, v0, :cond_7

    .line 4087
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePicturePressed()V

    const/4 p1, 0x0

    .line 4088
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setTakePictureFocusable(Z)V

    :cond_7
    return-void
.end method

.method private calculateCameraToPreviewMatrix()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 294
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 296
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 299
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->display_orientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 302
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 303
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private calculateGeoDirection()V
    .locals 4

    .line 4240
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_gravity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geomagnetic:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4243
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->deviceRotation:[F

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->deviceInclination:[F

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gravity:[F

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geomagnetic:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4246
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->deviceRotation:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraRotation:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 4247
    iput-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geo_direction:Z

    .line 4248
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraRotation:[F

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geo_direction:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    :cond_2
    :goto_0
    return-void
.end method

.method private calculatePreviewToCameraMatrix()V
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->calculateCameraToPreviewMatrix()V

    .line 308
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "Preview"

    const-string v1, "calculatePreviewToCameraMatrix failed to invert matrix!?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .line 629
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 630
    const-string v0, "closeCamera()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    const/4 v2, 0x3

    .line 633
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 634
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    .line 635
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    .line 636
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_received_location:Z

    .line 640
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isOnTimer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 642
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 647
    :cond_1
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 648
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 649
    const-string v2, "cancelled camera timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_3

    .line 653
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopVideo()V

    .line 655
    :cond_3
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v1, :cond_4

    .line 659
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocusForVideo(Z)V

    .line 662
    :cond_4
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setPreviewPaused(Z)V

    .line 663
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 666
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 667
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    const/4 v0, 0x1

    .line 668
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 669
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    :cond_5
    return-void
.end method

.method private convertFlashModesToValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2744
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2745
    const-string v0, "convertFlashModesToValues()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_5

    .line 2767
    const-string v2, "auto"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2768
    const-string v2, "flash_auto"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2769
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 2770
    const-string v2, " supports flash_auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_1
    const-string v2, "off"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2773
    const-string v2, "flash_off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2774
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 2775
    const-string v2, " supports flash_off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_2
    const-string v2, "on"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2778
    const-string v2, "flash_on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_3

    .line 2780
    const-string v2, " supports flash_on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_3
    const-string/jumbo v2, "torch"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2783
    const-string v2, "flash_torch"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2784
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_4

    .line 2785
    const-string v2, " supports flash_torch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_4
    const-string v2, "red-eye"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2788
    const-string p1, "flash_red_eye"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2789
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_5

    .line 2790
    const-string p1, " supports flash_red_eye"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method private convertFlashValueToMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2725
    const-string v0, "flash_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2726
    const-string p1, "off"

    return-object p1

    .line 2728
    :cond_0
    const-string v0, "flash_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2729
    const-string p1, "auto"

    return-object p1

    .line 2731
    :cond_1
    const-string v0, "flash_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2732
    const-string p1, "on"

    return-object p1

    .line 2734
    :cond_2
    const-string v0, "flash_torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2735
    const-string/jumbo p1, "torch"

    return-object p1

    .line 2737
    :cond_3
    const-string v0, "flash_red_eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2738
    const-string p1, "red-eye"

    return-object p1

    .line 2740
    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method private drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)V
    .locals 4

    .line 2183
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2184
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2185
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p5, 0x7f

    .line 2186
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2187
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, p5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 p5, 0x40000000    # 2.0f

    mul-float v0, v0, p5

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2189
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v1, v2, :cond_2

    .line 2190
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 2193
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v2, v3, :cond_1

    div-float/2addr v1, p5

    .line 2195
    :cond_1
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v2, p5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 2196
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v2, p5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p5, Landroid/graphics/Rect;->right:I

    .line 2200
    :cond_2
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->left:I

    sub-int v2, p6, v0

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->left:I

    .line 2201
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->top:I

    sub-int v2, p7, v0

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->top:I

    .line 2202
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->right:I

    add-int v2, p6, v0

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Rect;->right:I

    .line 2203
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p7

    add-int/2addr v1, v0

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    .line 2204
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2205
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p4, p6

    int-to-float p5, p7

    .line 2206
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static formatFloatToString(F)Ljava/lang/String;
    .locals 3

    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 1491
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1492
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.2f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAreas(FF)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 316
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->calculatePreviewToCameraMatrix()V

    .line 317
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_to_camera_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 318
    aget v1, v0, v1

    .line 319
    aget v0, v0, v2

    .line 322
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x, y: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Preview"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "focus x, y: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    float-to-int p2, v1

    add-int/lit8 v1, p2, -0x32

    .line 327
    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x32

    .line 328
    iput p2, p1, Landroid/graphics/Rect;->right:I

    float-to-int p2, v0

    add-int/lit8 v0, p2, -0x32

    .line 329
    iput v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x32

    .line 330
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 331
    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    if-ge p2, v0, :cond_1

    .line 332
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 333
    iget p2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x64

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 335
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-le p2, v1, :cond_2

    .line 336
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 337
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, -0x64

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 339
    :cond_2
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_3

    .line 340
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 341
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x64

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 343
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_4

    .line 344
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 345
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, -0x64

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 348
    :cond_4
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    new-instance v0, Landroid/hardware/Camera$Area;

    invoke-direct {v0, p1, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private static getAspectRatio(II)Ljava/lang/String;
    .locals 1

    .line 1505
    invoke-static {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->greatestCommonFactor(II)I

    move-result v0

    .line 1506
    div-int/2addr p0, v0

    .line 1507
    div-int/2addr p1, v0

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAspectRatioMPString(II)Ljava/lang/String;
    .locals 3

    mul-int v0, p0, p1

    int-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getAspectRatio(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->formatFloatToString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MP)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 12

    const-string/jumbo v0, "resolution_h_s: "

    const-string/jumbo v1, "resolution_w_s: "

    const-string v2, "    override_string: "

    const-string v3, "    profile_string: "

    .line 1386
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v5, "Preview"

    if-eqz v4, :cond_0

    .line 1387
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getCamcorderProfile(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_0
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    const/16 v7, 0x5f

    .line 1391
    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 1393
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1394
    iget-boolean v11, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_2

    .line 1395
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v10, p1

    .line 1397
    :cond_2
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1398
    iget v10, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v10, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    if-eq v7, v9, :cond_7

    add-int/2addr v7, v6

    .line 1399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_7

    .line 1400
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1401
    iget-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v7, :cond_3

    .line 1402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x72

    if-ne v2, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x4

    if-lt v2, v7, :cond_6

    const/16 v2, 0x78

    .line 1404
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 1406
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_7

    .line 1407
    const-string v0, "override_string invalid format, can\'t find x"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1410
    :cond_4
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v2, v6

    .line 1411
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1412
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_5

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1418
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1419
    iput v0, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1420
    iput v1, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    return-object v4

    .line 1424
    :cond_6
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_7

    .line 1425
    const-string/jumbo v0, "unknown override_string initial code, or otherwise invalid format"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v4

    :catch_0
    move-exception v0

    .line 1430
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v1, :cond_8

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to parse video quality: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object v4
.end method

.method public static getColorEffectPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4578
    const-string v0, "preference_color_effect"

    return-object v0
.end method

.method private getErrorFeatures(Landroid/media/CamcorderProfile;)Ljava/lang/String;
    .locals 4

    .line 2578
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v0, 0x870

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2581
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2582
    const-string v1, "preference_video_bitrate"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2583
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2586
    const-string v3, "preference_video_fps"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2587
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2591
    const-string v2, ""

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 2593
    const-string v2, "4K UHD"

    :cond_3
    if-nez v1, :cond_5

    .line 2596
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 2597
    const-string v2, "Bitrate"

    goto :goto_2

    .line 2599
    :cond_4
    const-string p1, "/Bitrate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 2602
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    .line 2603
    const-string p1, "Frame rate"

    return-object p1

    .line 2605
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Frame rate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v2
.end method

.method public static getExposurePreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4573
    const-string v0, "preference_exposure"

    return-object v0
.end method

.method public static getFlashPreferenceKey(I)Ljava/lang/String;
    .locals 2

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flash_value_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFocusPreferenceKey(I)Ljava/lang/String;
    .locals 2

    .line 4553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "focus_value_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISOPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4593
    const-string v0, "preference_iso"

    return-object v0
.end method

.method private getImageQuality()I
    .locals 4

    .line 4368
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4369
    const-string v0, "getImageQuality"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4371
    const-string v2, "preference_quality"

    const-string v3, "100"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4374
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4377
    :catch_0
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 4378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image_quality_s invalid format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x5a

    return v0
.end method

.method public static getIsVideoPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4568
    const-string v0, "is_video"

    return-object v0
.end method

.method public static getResolutionPreferenceKey(I)Ljava/lang/String;
    .locals 2

    .line 4558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "camera_resolution_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSceneModePreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4583
    const-string v0, "preference_scene_mode"

    return-object v0
.end method

.method public static getVideoQualityPreferenceKey(I)Ljava/lang/String;
    .locals 2

    .line 4563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "video_quality_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWhiteBalancePreferenceKey()Ljava/lang/String;
    .locals 1

    .line 4588
    const-string v0, "preference_white_balance"

    return-object v0
.end method

.method private static greatestCommonFactor(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-lez p0, :cond_0

    .line 1498
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private initialiseVideoQuality(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 1336
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 1337
    const-string v0, "initialiseVideoQuality()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    .line 1339
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1342
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 1343
    const-string/jumbo v0, "take video_sizes from preview sizes"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    .line 1346
    :cond_2
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_3

    .line 1347
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    supported video size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1354
    :cond_3
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    const v2, 0x1fa400

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    .line 1355
    invoke-direct {p0, v2, p1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1356
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "6"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_4
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    const v3, 0xe1000

    if-eqz p1, :cond_5

    .line 1359
    invoke-direct {p0, v3, v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1360
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "5"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_5
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    const v2, 0x54600

    if-eqz p1, :cond_6

    .line 1363
    invoke-direct {p0, v2, v3, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1364
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "4"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_6
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    const v3, 0x18c00

    if-eqz p1, :cond_7

    .line 1367
    invoke-direct {p0, v3, v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1368
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "3"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_7
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x7

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    const v2, 0x12c00

    if-eqz p1, :cond_8

    .line 1371
    invoke-direct {p0, v2, v3, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1372
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "7"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_8
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x6300

    .line 1375
    invoke-direct {p0, p1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->addCustomResolutions(III)V

    .line 1376
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    const-string v0, "2"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_9
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1379
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "supported video quality: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method private matchPreviewFpsToVideo()V
    .locals 17

    move-object/from16 v0, p0

    .line 2414
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v2, "Preview"

    if-eqz v1, :cond_0

    .line 2415
    const-string v1, "matchPreviewFpsToVideo()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_0
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 2417
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 2419
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 2421
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "    supported fps range: "

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, " to "

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 2422
    iget-boolean v15, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v15, :cond_2

    .line 2423
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v10, v13

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v10, v12

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_2
    aget v11, v10, v13

    .line 2426
    aget v10, v10, v12

    .line 2427
    iget v12, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit16 v12, v12, 0x3e8

    if-gt v11, v12, :cond_1

    iget v12, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit16 v12, v12, 0x3e8

    if-lt v10, v12, :cond_1

    sub-int v12, v10, v11

    if-eq v9, v6, :cond_3

    if-ge v12, v9, :cond_1

    :cond_3
    move v8, v10

    move v7, v11

    move v9, v12

    goto :goto_0

    :cond_4
    if-ne v7, v6, :cond_b

    .line 2439
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v9, -0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 2440
    aget v15, v10, v13

    .line 2441
    aget v10, v10, v12

    sub-int v12, v10, v15

    .line 2444
    iget v13, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit16 v13, v13, 0x3e8

    if-ge v10, v13, :cond_5

    .line 2445
    iget v13, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit16 v13, v13, 0x3e8

    sub-int/2addr v13, v10

    goto :goto_2

    .line 2447
    :cond_5
    iget v13, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit16 v13, v13, 0x3e8

    sub-int v13, v15, v13

    .line 2448
    :goto_2
    iget-boolean v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_6

    .line 2449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string v1, " has dist "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and diff "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v16, v1

    :goto_3
    const/4 v1, -0x1

    if-eq v5, v1, :cond_7

    if-lt v13, v5, :cond_7

    if-ne v13, v5, :cond_8

    if-ge v12, v9, :cond_8

    :cond_7
    move v8, v10

    move v9, v12

    move v5, v13

    move v7, v15

    :cond_8
    move-object/from16 v1, v16

    const/4 v6, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    .line 2458
    :cond_9
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v1, :cond_a

    .line 2459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "    can\'t find match for fps range, so choose closest: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_a
    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2461
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    .line 2464
    :cond_b
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v1, :cond_c

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "    chosen fps range: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_c
    invoke-virtual {v3, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2468
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1741
    :cond_1
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    add-int/lit8 p1, p1, 0x2d

    .line 1742
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    .line 1743
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_orientation:I

    .line 1745
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    .line 1751
    :goto_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    if-eq v0, p1, :cond_3

    .line 1757
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    :cond_3
    :goto_1
    return-void
.end method

.method private openCamera()V
    .locals 17

    move-object/from16 v1, p0

    .line 676
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v2, "Preview"

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "openCamera()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cameraId: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    .line 682
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    .line 683
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_received_location:Z

    .line 684
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    const/4 v0, 0x3

    .line 685
    iput v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 686
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    const/4 v6, 0x0

    .line 687
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scene_modes:Ljava/util/List;

    .line 688
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    .line 689
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_zoom_factor:I

    .line 690
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    .line 691
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    .line 692
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supports_face_detection:Z

    .line 693
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    .line 694
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->color_effects:Ljava/util/List;

    .line 695
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->white_balances:Ljava/util/List;

    .line 696
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    .line 697
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    .line 698
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    .line 699
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    .line 700
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    const/4 v7, -0x1

    .line 701
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    .line 702
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    .line 703
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    .line 704
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    .line 705
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    .line 706
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    .line 707
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    const/4 v8, 0x1

    .line 708
    invoke-direct {v1, v8}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 709
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    if-nez v0, :cond_1

    .line 710
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_44

    .line 711
    const-string v0, "preview surface not yet available"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_1
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->app_is_paused:Z

    if-eqz v0, :cond_2

    .line 716
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_44

    .line 717
    const-string v0, "don\'t open camera as app is paused"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 722
    :cond_2
    :try_start_0
    iget v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 725
    iget-boolean v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v9, :cond_3

    .line 726
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to open camera: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 728
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    .line 733
    :goto_1
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_43

    .line 734
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/Activity;

    .line 735
    invoke-direct {v1, v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setCameraDisplayOrientation(Landroid/app/Activity;)V

    .line 736
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;

    invoke-direct {v0, v1, v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/content/Context;)V

    .line 741
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1;->enable()V

    .line 742
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_4

    .line 747
    const-string v0, "call setPreviewDisplay"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v10}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 752
    iget-boolean v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v10, :cond_5

    .line 753
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to set preview display: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 760
    :goto_2
    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v10, 0x7f0a0407

    .line 762
    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 763
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v11

    if-le v11, v8, :cond_6

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/16 v11, 0x8

    :goto_3
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 773
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scene_modes:Ljava/util/List;

    .line 774
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSceneModePreferenceKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "auto"

    invoke-direct {v1, v11, v12, v13}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 775
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 776
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 778
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v11, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 779
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 849
    :cond_7
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    .line 850
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v11

    if-lez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supports_face_detection:Z

    if-eqz v11, :cond_9

    .line 852
    const-string v11, "preference_face_detection"

    invoke-interface {v0, v11, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    goto :goto_5

    .line 855
    :cond_9
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    .line 857
    :goto_5
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_a

    .line 858
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "supports_face_detection?: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supports_face_detection:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "using_face_detection?: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_a
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    if-eqz v11, :cond_b

    .line 869
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    new-instance v12, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;

    invoke-direct {v12, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 873
    :cond_b
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->color_effects:Ljava/util/List;

    .line 874
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getColorEffectPreferenceKey()Ljava/lang/String;

    move-result-object v12

    const-string v14, "none"

    invoke-direct {v1, v11, v12, v14}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 876
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 880
    :cond_c
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->white_balances:Ljava/util/List;

    .line 881
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getWhiteBalancePreferenceKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v13}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 883
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 888
    :cond_d
    const-string v11, "iso-values"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    .line 890
    const-string v11, "iso-mode-values"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    .line 892
    const-string v11, "iso-speed-values"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    .line 894
    const-string v11, "nv-picture-iso-values"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_e
    if-eqz v11, :cond_10

    .line 897
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_10

    .line 898
    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v12, :cond_f

    .line 899
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "iso_values: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_f
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 901
    array-length v12, v11

    if-lez v12, :cond_10

    .line 902
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const/4 v12, 0x0

    .line 903
    :goto_6
    array-length v14, v11

    if-ge v12, v14, :cond_10

    .line 904
    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    aget-object v15, v11, v12

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 909
    :cond_10
    const-string v11, "iso"

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    .line 910
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_11

    .line 911
    const-string v11, "iso-speed"

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    .line 912
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_11

    .line 913
    const-string v11, "nv-picture-iso"

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    .line 914
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_11

    .line 915
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    .line 918
    :cond_11
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 919
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    if-nez v11, :cond_12

    .line 921
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    .line 922
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const-string v12, "100"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const-string v12, "200"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const-string v12, "400"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const-string v12, "800"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    const-string v12, "1600"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_12
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getISOPreferenceKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v13}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 931
    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v12, :cond_13

    .line 932
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "set: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_13
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_14
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    .line 939
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v11

    iput v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    .line 940
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v11

    iput v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    .line 941
    iget v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    const-string v13, ""

    if-nez v12, :cond_15

    if-eqz v11, :cond_18

    .line 942
    :cond_15
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    .line 943
    iget v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    :goto_7
    iget v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    if-gt v11, v12, :cond_16

    .line 944
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 946
    :cond_16
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getExposurePreferenceKey()Ljava/lang/String;

    move-result-object v12

    const-string v14, "0"

    invoke-direct {v1, v11, v12, v14}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_18

    .line 949
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 950
    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v12, :cond_17

    .line 951
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exposure: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_17
    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    nop

    .line 955
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_18

    .line 956
    const-string v11, "exposure invalid format, can\'t parse to int"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_8
    const v11, 0x7f0a017d

    .line 960
    invoke-virtual {v9, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 964
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    .line 965
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_19

    const/4 v11, 0x0

    .line 966
    :goto_9
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_19

    .line 967
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 968
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "supported picture size: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 971
    :cond_19
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    .line 972
    iget v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 973
    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v12, :cond_1a

    .line 974
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "resolution_value: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_21

    const/16 v12, 0x20

    .line 977
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ne v12, v7, :cond_1b

    .line 979
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_21

    .line 980
    const-string/jumbo v11, "resolution_value invalid format, can\'t find space"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 983
    :cond_1b
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/2addr v12, v8

    .line 984
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 985
    iget-boolean v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v12, :cond_1c

    .line 986
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "resolution_w_s: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "resolution_h_s: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_1c
    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 991
    iget-boolean v14, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v14, :cond_1d

    .line 992
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolution_w: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_1d
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 994
    iget-boolean v14, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v14, :cond_1e

    .line 995
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolution_h: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v14, 0x0

    .line 997
    :goto_a
    iget-object v15, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_20

    iget v15, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    if-ne v15, v7, :cond_20

    .line 998
    iget-object v15, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 999
    iget v6, v15, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v12, :cond_1f

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v11, :cond_1f

    .line 1000
    iput v14, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    .line 1001
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_1f

    .line 1002
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set current_size_index to: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_a

    .line 1005
    :cond_20
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    if-ne v6, v7, :cond_21

    .line 1006
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_21

    .line 1007
    const-string v6, "failed to find valid size"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    nop

    .line 1011
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_21

    .line 1012
    const-string/jumbo v6, "resolution_value invalid format, can\'t parse w or h to int"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_21
    :goto_b
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    if-ne v6, v7, :cond_24

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 1020
    :goto_c
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_24

    .line 1021
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    if-eqz v6, :cond_22

    .line 1022
    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    iget v15, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int v14, v14, v15

    iget v15, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v16, 0x1

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    mul-int v15, v15, v8

    if-le v14, v15, :cond_23

    goto :goto_d

    :cond_22
    const/16 v16, 0x1

    .line 1023
    :goto_d
    iput v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    move-object v6, v12

    :cond_23
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_c

    :cond_24
    const/16 v16, 0x1

    .line 1028
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    if-eq v6, v7, :cond_27

    .line 1029
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 1030
    iget-boolean v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_25

    .line 1031
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Current size index "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1035
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_26

    .line 1036
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "save new resolution_value: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1039
    iget v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1043
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v8, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1049
    :cond_27
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getImageQuality()I

    move-result v6

    .line 1050
    invoke-virtual {v10, v6}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1051
    iget-boolean v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_28

    .line 1052
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "image quality: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_28
    invoke-direct {v1, v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->initialiseVideoQuality(Landroid/hardware/Camera$Parameters;)V

    .line 1061
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    .line 1062
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getVideoQualityPreferenceKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1063
    iget-boolean v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_29

    .line 1064
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "video_quality_value: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2c

    const/4 v8, 0x0

    .line 1068
    :goto_e
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_2b

    iget v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    if-ne v11, v7, :cond_2b

    .line 1069
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 1070
    iput v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    .line 1071
    iget-boolean v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v11, :cond_2a

    .line 1072
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "set current_video_quality to: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1075
    :cond_2b
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    if-ne v6, v7, :cond_2c

    .line 1076
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_2c

    .line 1077
    const-string v6, "failed to find valid video_quality"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_2c
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    if-ne v6, v7, :cond_2d

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2d

    .line 1082
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    .line 1083
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_2d

    .line 1084
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "set video_quality value to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    iget v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_2d
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    if-eq v6, v7, :cond_2e

    .line 1088
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1089
    iget v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getVideoQualityPreferenceKey(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    iget v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1093
    :cond_2e
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    invoke-virtual {v10, v6}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 1094
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_2f

    .line 1095
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    current fps range: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    aget v8, v8, v16

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/16 v6, 0x100

    .line 1099
    invoke-virtual {v10, v6}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1101
    const-string v6, "jpeg-quality"

    const/16 v8, 0x64

    invoke-virtual {v10, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1104
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1107
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    const v8, 0x7f0a0190

    .line 1108
    invoke-virtual {v9, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1109
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    if-eqz v6, :cond_35

    .line 1110
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x1

    if-le v8, v11, :cond_35

    .line 1111
    iget-boolean v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_30

    .line 1112
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "flash modes: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_30
    invoke-direct {v1, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->convertFlashModesToValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    .line 1115
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getFlashPreferenceKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_33

    .line 1117
    iget-boolean v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_31

    .line 1118
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "found existing flash_value: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_31
    invoke-direct {v1, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFlash(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 1120
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_32

    .line 1121
    const-string v6, "flash value no longer supported!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_32
    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFlash(I)V

    goto :goto_f

    .line 1126
    :cond_33
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_34

    .line 1127
    const-string v6, "found no existing flash_value"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_34
    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFlash(I)V

    goto :goto_f

    .line 1132
    :cond_35
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_36

    .line 1133
    const-string v6, "flash not supported"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v6, 0x0

    .line 1134
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    .line 1138
    :cond_37
    :goto_f
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    const v8, 0x7f0a0195

    .line 1139
    invoke-virtual {v9, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1140
    iput v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    if-eqz v6, :cond_3d

    .line 1141
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x1

    if-le v7, v11, :cond_3d

    .line 1142
    iget-boolean v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v7, :cond_38

    .line 1143
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "focus modes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_38
    invoke-virtual {v1, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->convertFocusModesToValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    .line 1146
    iget v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getFocusPreferenceKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3b

    .line 1148
    iget-boolean v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v7, :cond_39

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "found existing focus_value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v11, 0x1

    .line 1150
    invoke-direct {v1, v6, v5, v5, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1151
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_3a

    .line 1152
    const-string v6, "focus value no longer supported!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_3a
    invoke-direct {v1, v5, v5, v11, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(IZZZ)V

    goto :goto_10

    :cond_3b
    const/4 v11, 0x1

    .line 1157
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_3c

    .line 1158
    const-string v6, "found no existing focus_value"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_3c
    invoke-direct {v1, v5, v5, v11, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(IZZZ)V

    goto :goto_10

    .line 1163
    :cond_3d
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_3e

    .line 1164
    const-string v6, "focus not supported"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v6, 0x0

    .line 1165
    iput-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    .line 1169
    :cond_3f
    :goto_10
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v6

    iput-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked_supported:Z

    const v6, 0x7f0a017e

    .line 1171
    invoke-virtual {v9, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1173
    iput-boolean v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    .line 1181
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getIsVideoPreferenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1182
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_40

    .line 1183
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saved_is_video: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_40
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->force_video:Z

    .line 1189
    iget-boolean v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eq v0, v6, :cond_41

    .line 1190
    invoke-virtual {v1, v5, v5}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switchVideo(ZZ)V

    goto :goto_11

    .line 1193
    :cond_41
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showPhotoVideoToast()V

    .line 1197
    :goto_11
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    if-eqz v0, :cond_42

    iget v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    if-eqz v0, :cond_42

    .line 1199
    iput v5, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    const/4 v11, 0x1

    .line 1200
    invoke-virtual {v1, v0, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoomTo(IZ)V

    .line 1205
    :cond_42
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setPreviewSize()V

    .line 1207
    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    .line 1212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1213
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/camera/Preview$2;

    invoke-direct {v5, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$2;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1221
    :cond_43
    iget-boolean v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_44

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "total time: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_44

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "camera parameters: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void
.end method

.method private reconnectCamera(Z)V
    .locals 6

    .line 590
    const-string v0, "Preview"

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 592
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 593
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 596
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_0

    .line 597
    const-string v3, "failed to reconnect to camera"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 599
    const-string v1, "Failed to reconnect to camera"

    invoke-virtual {p0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->closeCamera()V

    :goto_0
    const/4 v1, 0x0

    .line 603
    :try_start_1
    invoke-virtual {p0, v1, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 606
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_1

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tryAutoFocus() threw exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 611
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    .line 612
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 613
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez p1, :cond_3

    .line 615
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 616
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getErrorFeatures(Landroid/media/CamcorderProfile;)Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error, video file may be corrupted, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported on your device"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 618
    :cond_2
    const-string p1, "Error, video file may be corrupted"

    .line 621
    :goto_1
    invoke-virtual {p0, v2, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V

    :cond_4
    :goto_2
    return-void
.end method

.method private setAspectRatio(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 1688
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_aspect_ratio:Z

    .line 1689
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->aspect_ratio:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_1

    .line 1690
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->aspect_ratio:D

    .line 1691
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_0

    .line 1692
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "new aspect ratio: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->aspect_ratio:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Preview"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->requestLayout()V

    :cond_1
    return-void

    .line 1686
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;)V
    .locals 5

    .line 1700
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 1701
    const-string/jumbo v0, "setCameraDisplayOrientation()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1703
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1704
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x10e

    goto :goto_0

    :cond_2
    const/16 v3, 0xb4

    goto :goto_0

    :cond_3
    const/16 v3, 0x5a

    .line 1712
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_5

    .line 1713
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "    degrees = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_5
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v2, :cond_6

    .line 1717
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v3

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 1718
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 1721
    :cond_6
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v3

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    .line 1723
    :goto_1
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_7

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    info orientation is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    setDisplayOrientation to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_7
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1728
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->display_orientation:I

    return-void
.end method

.method private setFlash(Ljava/lang/String;)V
    .locals 2

    .line 2702
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFlash() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    .line 2705
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 2706
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2707
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->convertFlashValueToMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2708
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2709
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2710
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method private setFocus(Ljava/lang/String;Z)V
    .locals 4

    .line 2872
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFocus() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2875
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_9

    .line 2876
    const-string p1, "null camera"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2879
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 2880
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2881
    const-string v2, "focus_mode_auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2882
    const-string p1, "auto"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2884
    :cond_2
    const-string v2, "focus_mode_infinity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2885
    const-string p1, "infinity"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2887
    :cond_3
    const-string v2, "focus_mode_macro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2888
    const-string p1, "macro"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2890
    :cond_4
    const-string v2, "focus_mode_fixed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2891
    const-string p1, "fixed"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2893
    :cond_5
    const-string v2, "focus_mode_edof"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2894
    const-string p1, "edof"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2896
    :cond_6
    const-string v2, "focus_mode_continuous_video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2897
    const-string p1, "continuous-video"

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2900
    :cond_7
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_8

    .line 2901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFocus() received unknown focus value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2909
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->clearFocusAreas()V

    if-eqz p2, :cond_9

    const/4 p1, 0x0

    .line 2911
    invoke-virtual {p0, p1, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V

    :cond_9
    return-void
.end method

.method private setGPSDirectionExif(Landroid/media/ExifInterface;)V
    .locals 4

    .line 3900
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3901
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geo_direction:Z

    if-eqz v1, :cond_3

    const-string v1, "preference_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3902
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geo_direction:[F

    aget v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 3906
    :cond_0
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v2, "Preview"

    if-eqz v1, :cond_1

    .line 3907
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "save geo_angle: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/100"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3910
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v1, :cond_2

    .line 3911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GPSImgDirection_string: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    :cond_2
    const-string v1, "GPSImgDirection"

    invoke-virtual {p1, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    const-string v0, "GPSImgDirectionRef"

    const-string v1, "M"

    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setPreviewPaused(Z)V
    .locals 3

    .line 4149
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPreviewPaused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a03bb

    .line 4152
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a044c

    .line 4153
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 4157
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 4158
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4159
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4163
    :cond_1
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/16 p1, 0x8

    .line 4164
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4165
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 4166
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4167
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void
.end method

.method private setPreviewSize()V
    .locals 5

    .line 1288
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 1289
    const-string/jumbo v0, "setPreviewSize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1293
    :cond_1
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    if-eqz v2, :cond_3

    .line 1294
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_2

    .line 1295
    const-string/jumbo v0, "setPreviewSize() shouldn\'t be called when preview is running"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1299
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1300
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v3, ", "

    if-eqz v2, :cond_4

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "current preview size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_preview_sizes:Ljava/util/List;

    .line 1303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1312
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_preview_sizes:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getOptimalPreviewSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1313
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1314
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_5

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "new preview size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setAspectRatio(D)V

    .line 1318
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setupValuesPref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1230
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupValuesPref, key: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    .line 1232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1233
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1234
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supported value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1239
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1240
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_2

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1244
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_3

    .line 1245
    const-string/jumbo v3, "value not valid!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1249
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    .line 1250
    :goto_1
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_5

    .line 1251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value is now: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, p3

    .line 1255
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1256
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1257
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v3

    .line 1262
    :cond_7
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_8

    .line 1263
    const-string/jumbo p1, "values not supported"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method private showGUI(Z)V
    .locals 2

    .line 4172
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showGUI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4175
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$7;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showPhotoVideoToast()V
    .locals 5

    .line 2392
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    const-string/jumbo v1, "x"

    if-eqz v0, :cond_2

    .line 2393
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 2395
    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    const v3, 0x989680

    if-lt v2, v3, :cond_0

    .line 2396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    const v4, 0xf4240

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2397
    :cond_0
    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    .line 2398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Kbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2400
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2401
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "fps, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2405
    :cond_2
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2406
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2410
    :cond_3
    const-string v0, "Photo"

    :goto_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switch_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-virtual {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    return-void
.end method

.method private startCameraPreview()V
    .locals 6

    .line 4094
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4095
    const-string/jumbo v0, "startCameraPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 4099
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    if-nez v0, :cond_8

    .line 4100
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 4101
    const-string/jumbo v0, "starting the camera preview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    :cond_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_2

    .line 4104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRecordingHint: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4112
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4113
    const-string v5, "continuous-video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4114
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 4115
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4118
    :cond_3
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v0, :cond_4

    .line 4119
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->matchPreviewFpsToVideo()V

    .line 4122
    :cond_4
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraStartPreview:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraStartPreview:I

    .line 4123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 4124
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    .line 4125
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_5

    .line 4126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "time after starting camera preview: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    :cond_5
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    if-eqz v0, :cond_8

    .line 4129
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_6

    .line 4130
    const-string/jumbo v0, "start face detection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 4139
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_7

    .line 4140
    const-string v0, "face detection already started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 4142
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    :cond_8
    const/4 v0, 0x0

    .line 4145
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setPreviewPaused(Z)V

    return-void
.end method

.method private stopVideo()V
    .locals 12

    .line 504
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 505
    const-string/jumbo v0, "stopVideo()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_8

    .line 507
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 508
    const-string/jumbo v0, "stop video recording"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopstart_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v2, "Stopped recording video"

    invoke-virtual {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 512
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 518
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 519
    const-string/jumbo v2, "runtime exception when stopping video"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 522
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    const/4 v2, 0x0

    .line 523
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 524
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->reconnectCamera(Z)V

    .line 525
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 526
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 530
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->broadcastFile(Ljava/io/File;)V

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 535
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    .line 536
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 538
    :try_start_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    .line 539
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :catch_1
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 554
    :catch_3
    throw v0

    .line 555
    :goto_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    if-eq v5, v0, :cond_6

    .line 556
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    const v6, 0x7f0a019c

    .line 557
    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 558
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 559
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 560
    iget-boolean v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v10, " x "

    if-eqz v9, :cond_3

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "    video thumbnail size "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_3
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v9

    if-le v7, v9, :cond_5

    .line 563
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v7, v7, v6

    .line 564
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v8

    mul-float v6, v6, v8

    .line 565
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 566
    iget-boolean v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_4

    .line 567
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    scale video thumbnail to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_4
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    invoke-static {v8, v7, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 570
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    if-eq v6, v7, :cond_5

    .line 571
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 572
    iput-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    .line 575
    :cond_5
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIconToBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_6

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    :cond_6
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_7

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "    time to create thumbnail: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_7
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method private takePictureWhenFocused()V
    .locals 7

    .line 3315
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3316
    const-string/jumbo v0, "takePictureWhenFocused"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3318
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 3319
    const-string v0, "camera not available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_1
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3323
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void

    .line 3326
    :cond_2
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    if-nez v0, :cond_4

    .line 3327
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_3

    .line 3328
    const-string v0, "preview surface not yet available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :cond_3
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3332
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void

    .line 3335
    :cond_4
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    .line 3336
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_5

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "remaining_burst_photos: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_5
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$4;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$4;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    .line 3347
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    .line 3857
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_6

    .line 3858
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "current_rotation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    :cond_6
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 3860
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3861
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3863
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3864
    const-string v5, "preference_shutter_sound"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3865
    iget-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v5, :cond_7

    .line 3866
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enable_sound? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :cond_7
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 3870
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_8

    .line 3871
    const-string v4, "about to call takePicture"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    :cond_8
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    if-le v4, v3, :cond_9

    .line 3874
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    sub-int/2addr v4, v5

    .line 3875
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Taking photo... ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3878
    :cond_9
    const-string v4, "Taking photo..."

    .line 3880
    :goto_0
    iget-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v5, :cond_a

    .line 3881
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v5, 0x0

    .line 3883
    :try_start_0
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v0, v5, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3884
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraTakePicture:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraTakePicture:I

    .line 3885
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    invoke-virtual {p0, v0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3889
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_b

    .line 3890
    const-string/jumbo v2, "runtime exception from takePicture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3892
    const-string v0, "Failed to take picture"

    invoke-virtual {p0, v5, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 3895
    :goto_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_c

    .line 3896
    const-string/jumbo v0, "takePicture exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private updateFlash(I)V
    .locals 5

    .line 2657
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFlash(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    if-eq p1, v0, :cond_5

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2662
    :goto_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    .line 2663
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 2664
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    current_flash_index is now "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (initial "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0a0190

    .line 2667
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-gt p1, v3, :cond_3

    const p1, 0x7f100059

    .line 2669
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f10005a

    .line 2672
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2676
    :goto_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2677
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_4

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    flash_value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_4
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setFlash(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateFlash(Ljava/lang/String;)Z
    .locals 3

    .line 2642
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFlash(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2645
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2646
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new_flash_index: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2649
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFlash(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateFocus(IZZZ)V
    .locals 2

    .line 2828
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v0, "Preview"

    if-eqz p2, :cond_0

    .line 2829
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateFocus(): "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current_focus_index: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    if-eq p1, p2, :cond_4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 2833
    :goto_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    .line 2834
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_2

    .line 2835
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "    current_focus_index is now "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (initial "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f0a0195

    .line 2838
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 2841
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2842
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p2, :cond_3

    .line 2843
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "    focus_value: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_3
    invoke-direct {p0, p1, p4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setFocus(Ljava/lang/String;Z)V

    if-eqz p3, :cond_4

    .line 2863
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2864
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 2865
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getFocusPreferenceKey(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2866
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method private updateFocus(Ljava/lang/String;ZZZ)Z
    .locals 3

    .line 2813
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFocus(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2816
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2817
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new_focus_index: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2820
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(IZZZ)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateFocusForVideo(Z)V
    .locals 5

    .line 2553
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2554
    const-string/jumbo v0, "updateFocusForVideo()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 2556
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2557
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 2558
    const-string v2, "continuous-video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2559
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_1

    .line 2560
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current_focus_mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "focus_is_video: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , is_video: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eq v2, v0, :cond_4

    .line 2564
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_2

    .line 2565
    const-string v0, "need to change focus mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_2
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v0, :cond_3

    const-string v0, "focus_mode_continuous_video"

    goto :goto_0

    :cond_3
    const-string v0, "focus_mode_auto"

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(Ljava/lang/String;ZZZ)Z

    .line 2567
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_4

    .line 2568
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2569
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new focus mode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private updateParametersFromLocation()V
    .locals 9

    .line 4494
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_7

    .line 4495
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4496
    const-string v1, "preference_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4498
    const-string v1, "Preview"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_5

    .line 4499
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 4500
    const-string/jumbo v0, "updating parameters from location..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lat "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " long "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " accuracy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4504
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 4505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 4506
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 4507
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 4508
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 4509
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4510
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_0

    .line 4515
    :cond_2
    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 4517
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 4518
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 4521
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4525
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_4

    .line 4526
    const-string v2, "failed to set parameters for gps info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    :cond_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 4531
    :cond_5
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_6

    .line 4532
    const-string/jumbo v0, "removing location data from parameters..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    :cond_6
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4534
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 4535
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4536
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    .line 4537
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_received_location:Z

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 3

    .line 4036
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4037
    const-string v0, "cancelAutoFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 4040
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4044
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 4045
    const-string v2, "camera.cancelAutoFocus() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    :cond_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4048
    invoke-direct {p0, v1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->autoFocusCompleted(ZZZ)V

    :cond_2
    return-void
.end method

.method public changeExposure(IZ)V
    .locals 2

    .line 2310
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeExposure(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 2312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    if-eqz v1, :cond_2

    .line 2313
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    add-int/2addr v0, p1

    .line 2316
    invoke-virtual {p0, v0, p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setExposure(IZ)V

    :cond_2
    return-void
.end method

.method public clearFocusAreas()V
    .locals 6

    .line 455
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "Preview"

    const-string v1, "clearFocusAreas()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 461
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v1, :cond_2

    .line 464
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 467
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v5

    if-lez v5, :cond_3

    .line 468
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 472
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 474
    :cond_4
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    const/4 v0, 0x3

    .line 475
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 476
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    return-void
.end method

.method public clickedShare()V
    .locals 3

    .line 3918
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3919
    const-string v0, "clickedShare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 3922
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3923
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Share: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3926
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3927
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3928
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 3929
    const-string v2, "Photo"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3931
    :cond_2
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    const/4 v0, 0x0

    .line 3932
    invoke-virtual {p0, v0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V

    :cond_3
    return-void
.end method

.method public clickedTrash()V
    .locals 4

    .line 3937
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3938
    const-string v0, "clickedTrash"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 3941
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3942
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 3943
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delete: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3945
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3946
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_4

    .line 3947
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3950
    :cond_2
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_3

    .line 3951
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "successfully deleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->preview_image_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    .line 3952
    const-string v2, "Photo deleted"

    invoke-virtual {p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 3953
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 3954
    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->broadcastFile(Ljava/io/File;)V

    .line 3957
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    const/4 v0, 0x0

    .line 3958
    invoke-virtual {p0, v0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V

    :cond_5
    return-void
.end method

.method public convertFocusModesToValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2949
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2950
    const-string v0, "convertFocusModesToValues()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_6

    .line 2955
    const-string v2, "auto"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2956
    const-string v2, "focus_mode_auto"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2957
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 2958
    const-string v2, " supports focus_mode_auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :cond_1
    const-string v2, "infinity"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2961
    const-string v2, "focus_mode_infinity"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2962
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 2963
    const-string v2, " supports focus_mode_infinity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_2
    const-string v2, "macro"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2966
    const-string v2, "focus_mode_macro"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2967
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_3

    .line 2968
    const-string v2, " supports focus_mode_macro"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    :cond_3
    const-string v2, "fixed"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2971
    const-string v2, "focus_mode_fixed"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2972
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_4

    .line 2973
    const-string v2, " supports focus_mode_fixed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_4
    const-string v2, "edof"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2976
    const-string v2, "focus_mode_edof"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2977
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_5

    .line 2978
    const-string v2, " supports focus_mode_edof"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_5
    const-string v2, "continuous-video"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2981
    const-string p1, "focus_mode_continuous_video"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2982
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_6

    .line 2983
    const-string p1, " supports focus_mode_continuous_video"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method public cycleFlash()V
    .locals 4

    .line 2612
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2613
    const-string v0, "cycleFlash()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2617
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_4

    .line 2618
    const-string v0, "currently taking a photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2621
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 2622
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v0, v3

    .line 2623
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    .line 2627
    :cond_2
    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFlash(I)V

    .line 2630
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2631
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_3

    .line 2632
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "save new flash_value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2635
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2636
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getFlashPreferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2637
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public cycleFocusMode()V
    .locals 3

    .line 2797
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2798
    const-string v0, "cycleFocusMode()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2802
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_2

    .line 2803
    const-string v0, "currently taking a photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2806
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2807
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_focus_index:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    const/4 v2, 0x0

    .line 2808
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocus(IZZZ)V

    :cond_2
    return-void
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 9

    const-string v0, "fps: "

    const-string v1, "bitrate: "

    .line 1440
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 1442
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1444
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    const/4 v5, 0x1

    const-string v6, "Preview"

    if-nez v4, :cond_1

    const-string v4, "preference_force_video_4k"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supportsForceVideo4K()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1445
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_0

    .line 1446
    const-string v2, "force 4K UHD video"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v2, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    const/16 v4, 0xf00

    .line 1448
    iput v4, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v4, 0x870

    .line 1449
    iput v4, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1450
    iget v4, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-double v4, v4

    const-wide v7, 0x4006666666666666L    # 2.8

    mul-double v4, v4, v7

    double-to-int v4, v4

    iput v4, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 1452
    :cond_1
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1453
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v2

    goto :goto_0

    .line 1456
    :cond_2
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v2, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 1459
    :goto_0
    const-string v4, "preference_video_bitrate"

    const-string v5, "default"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1462
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1463
    iget-boolean v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_3

    .line 1464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_3
    iput v7, v2, Landroid/media/CamcorderProfile;->videoBitRate:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 1468
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v1, :cond_4

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "bitrate invalid format, can\'t parse to int: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_4
    :goto_1
    const-string v1, "preference_video_fps"

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1475
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1476
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_5

    .line 1477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_5
    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 1481
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_6

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fps invalid format, can\'t parse to int: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v2
.end method

.method public getCamcorderProfileDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1517
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 1519
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 1520
    const-string v0, "Highest: "

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1523
    :goto_0
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0xf00

    if-ne v1, v3, :cond_1

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0x870

    if-ne v1, v3, :cond_1

    .line 1524
    const-string v2, "4K Ultra HD "

    goto/16 :goto_1

    .line 1526
    :cond_1
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x780

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0x438

    if-ne v1, v3, :cond_2

    .line 1527
    const-string v2, "Full HD "

    goto :goto_1

    .line 1529
    :cond_2
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    if-ne v1, v3, :cond_3

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v4, :cond_3

    .line 1530
    const-string v2, "HD "

    goto :goto_1

    .line 1532
    :cond_3
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x1e0

    if-ne v1, v4, :cond_4

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v3, :cond_4

    .line 1533
    const-string v2, "SD "

    goto :goto_1

    .line 1535
    :cond_4
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v4, 0x280

    if-ne v1, v4, :cond_5

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v3, :cond_5

    .line 1536
    const-string v2, "VGA "

    goto :goto_1

    .line 1538
    :cond_5
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x160

    if-ne v1, v3, :cond_6

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0x120

    if-ne v1, v3, :cond_6

    .line 1539
    const-string v2, "CIF "

    goto :goto_1

    .line 1541
    :cond_6
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x140

    if-ne v1, v3, :cond_7

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_7

    .line 1542
    const-string v2, "QVGA "

    goto :goto_1

    .line 1544
    :cond_7
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0xb0

    if-ne v1, v3, :cond_8

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0x90

    if-ne v1, v3, :cond_8

    .line 1545
    const-string v2, "QCIF "

    .line 1547
    :cond_8
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getAspectRatioMPString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 4600
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .line 4364
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    return v0
.end method

.method public getCurrentExposure()I
    .locals 2

    .line 4310
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4311
    const-string v0, "Preview"

    const-string v1, "getCurrentExposure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4314
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4315
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getCurrentFlashMode()Ljava/lang/String;
    .locals 2

    .line 2716
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2718
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2719
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->convertFlashValueToMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFlashValue()Ljava/lang/String;
    .locals 2

    .line 4616
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_flash_index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4618
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPictureSizeIndex()I
    .locals 2

    .line 4338
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4339
    const-string v0, "Preview"

    const-string v1, "getCurrentPictureSizeIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_size_index:I

    return v0
.end method

.method public getISOKey()Ljava/lang/String;
    .locals 2

    .line 4280
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4281
    const-string v0, "Preview"

    const-string v1, "getISOKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->iso_key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumExposure()I
    .locals 2

    .line 4304
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4305
    const-string v0, "Preview"

    const-string v1, "getMaximumExposure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    return v0
.end method

.method public getMinimumExposure()I
    .locals 2

    .line 4298
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4299
    const-string v0, "Preview"

    const-string v1, "getMinimumExposure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    return v0
.end method

.method public getOptimalPreviewSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1590
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v2, "Preview"

    if-eqz v1, :cond_0

    .line 1591
    const-string v1, "getOptimalPreviewSize()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return-object v1

    .line 1597
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1598
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 1600
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1601
    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1602
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 1603
    iget-boolean v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v5, " x "

    if-eqz v4, :cond_2

    .line 1604
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display_size: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_2
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getTargetRatio(Landroid/graphics/Point;)D

    move-result-wide v6

    .line 1607
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gtz v4, :cond_3

    .line 1609
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 1612
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 1613
    iget-boolean v13, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v13, :cond_5

    .line 1614
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "    supported preview size: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_5
    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v12, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v15

    div-double/2addr v13, v8

    sub-double/2addr v13, v6

    .line 1616
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v13, 0x3fa999999999999aL    # 0.05

    cmpl-double v15, v8, v13

    if-lez v15, :cond_6

    goto :goto_0

    .line 1618
    :cond_6
    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v13, v8, v10

    if-gez v13, :cond_4

    .line 1620
    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v8, v1

    move-wide v10, v8

    move-object v1, v12

    goto :goto_0

    :cond_7
    if-nez v1, :cond_a

    .line 1625
    iget-boolean v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_8

    .line 1626
    const-string v3, "no preview size matches the aspect ratio"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1629
    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    sub-double/2addr v10, v6

    .line 1630
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v14, v12, v8

    if-gez v14, :cond_9

    .line 1632
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object v1, v4

    goto :goto_1

    .line 1636
    :cond_a
    iget-boolean v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_b

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chose optimalSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "optimalSize ratio: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4262
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4263
    const-string v0, "Preview"

    const-string v1, "getSupportedColorEffects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->color_effects:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedExposures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4320
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4321
    const-string v0, "Preview"

    const-string v1, "getSupportedExposures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFlashValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4356
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedFocusValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4360
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedISOs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4286
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4287
    const-string v0, "Preview"

    const-string v1, "getSupportedISOs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isos:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 4332
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4333
    const-string v0, "Preview"

    const-string v1, "getSupportedPictureSizes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->sizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 4326
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4327
    const-string v0, "Preview"

    const-string v1, "getSupportedPreviewSizes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_preview_sizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4268
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4269
    const-string v0, "Preview"

    const-string v1, "getSupportedSceneModes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scene_modes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedVideoQuality()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4344
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4345
    const-string v0, "Preview"

    const-string v1, "getSupportedVideoQuality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 4350
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4351
    const-string v0, "Preview"

    const-string v1, "getSupportedVideoSizes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_sizes:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedWhiteBalances()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4274
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4275
    const-string v0, "Preview"

    const-string v1, "getSupportedWhiteBalances"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->white_balances:Ljava/util/List;

    return-object v0
.end method

.method public getTargetRatio(Landroid/graphics/Point;)D
    .locals 6

    .line 1553
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1554
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1555
    const-string v1, "preference_preview_size"

    const-string v2, "preference_preview_size_display"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    const-string v1, "preference_preview_size_wysiwyg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Preview"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1578
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 1579
    const-string/jumbo v0, "set preview aspect ratio from display size"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-double v4, p1

    div-double/2addr v2, v4

    goto :goto_2

    .line 1559
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    const-string v0, " x "

    if-eqz p1, :cond_5

    .line 1560
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_3

    .line 1561
    const-string/jumbo p1, "set preview aspect ratio from video size (wysiwyg)"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 1563
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_4

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_4
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_0

    .line 1568
    :cond_5
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_6

    .line 1569
    const-string/jumbo p1, "set preview aspect ratio from photo size (wysiwyg)"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 1571
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 1572
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_7

    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "picture_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_7
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 1584
    :goto_2
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_8

    .line 1585
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "targetRatio: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-wide v2
.end method

.method public hasFocusArea()Z
    .locals 1

    .line 4622
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    return v0
.end method

.method public hasSetLocation()Z
    .locals 1

    .line 4644
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    return v0
.end method

.method public isForce_video()Z
    .locals 1

    .line 4656
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->force_video:Z

    return v0
.end method

.method public isOnTimer()Z
    .locals 2

    .line 4636
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .line 4640
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    return v0
.end method

.method public isTakePictureFocusable()Z
    .locals 1

    .line 4648
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureFocusable:Z

    return v0
.end method

.method public isTakingPhoto()Z
    .locals 2

    .line 4631
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTakingPhotoOrOnTimer()Z
    .locals 3

    .line 4627
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public isVideo()Z
    .locals 1

    .line 4543
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    return v0
.end method

.method public locationChanged(Landroid/location/Location;)V
    .locals 7

    .line 4474
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4475
    const-string v0, "locationChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 4476
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_received_location:Z

    .line 4477
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4478
    const-string v3, "preference_location"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4480
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location:Landroid/location/Location;

    if-eqz p1, :cond_3

    .line 4482
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    .line 4483
    :cond_1
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 4484
    const-string v2, "received location:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " accuracy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    :cond_2
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    .line 4488
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_accuracy:F

    :cond_3
    return-void
.end method

.method public onAccelerometerSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v0, 0x1

    .line 4204
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_gravity:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 4207
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gravity:[F

    const v4, 0x3f4ccccd    # 0.8f

    aget v5, v3, v2

    mul-float v5, v5, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    const v6, 0x3e4ccccc    # 0.19999999f

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4209
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->calculateGeoDirection()V

    .line 4211
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gravity:[F

    aget v1, p1, v1

    float-to-double v1, v1

    .line 4212
    aget p1, p1, v0

    float-to-double v3, p1

    .line 4213
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_level_angle:Z

    neg-double v0, v1

    .line 4214
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    const-wide/high16 v4, -0x8000000000000000L

    const-wide v6, 0x4076800000000000L    # 360.0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1

    add-double/2addr v0, v6

    .line 4216
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    .line 4218
    :cond_1
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->orig_level_angle:D

    .line 4219
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_orientation:I

    int-to-float p1, p1

    float-to-double v4, p1

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_2

    add-double/2addr v0, v6

    .line 4221
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    goto :goto_1

    :cond_2
    cmpl-double p1, v0, v2

    if-lez p1, :cond_3

    sub-double/2addr v0, v6

    .line 4224
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    .line 4227
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1765
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->app_is_paused:Z

    if-eqz v1, :cond_0

    move-object v6, v0

    goto/16 :goto_18

    .line 1775
    :cond_0
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 1776
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1777
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1778
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const-string v7, "preference_grid_none"

    const-string v11, "preference_grid"

    const/4 v12, -0x1

    const/high16 v13, 0x40400000    # 3.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    invoke-interface {v9, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_grid_3x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1779
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v14

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v15

    div-float v2, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v15

    div-float v4, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v14

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v13

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v15

    div-float v3, v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v15

    div-float v5, v1, v13

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1785
    :cond_1
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const/high16 v16, 0x41a00000    # 20.0f

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2

    invoke-interface {v9, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_grid_4x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1786
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1787
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x40800000    # 4.0f

    div-float v2, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v14

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1788
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v14

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1789
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v13

    div-float v2, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v13

    div-float v4, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v14

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1790
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v15

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1791
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    mul-float v1, v10, v16

    add-float v1, v1, v17

    float-to-int v1, v1

    .line 1793
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v15

    int-to-float v7, v1

    sub-float/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    add-float v5, v1, v7

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    sub-float v2, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    add-float v4, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v15

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 1798
    :goto_0
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const/16 v11, 0x10e

    const/16 v13, 0x5a

    const/4 v15, 0x0

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 1799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_start_ms:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 1802
    iput-boolean v15, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim:Z

    goto/16 :goto_1

    .line 1805
    :cond_3
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 1806
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 1807
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Landroid/graphics/RectF;->right:F

    .line 1808
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    const v2, 0x7f0a019c

    .line 1809
    invoke-virtual {v8, v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    long-to-float v4, v4

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    .line 1812
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    .line 1813
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    .line 1814
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v7, v7, v18

    .line 1815
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    const/16 v20, 0x2

    add-int v3, v18, v19

    sub-float v18, v14, v4

    int-to-float v5, v5

    mul-float v5, v5, v18

    int-to-float v7, v7

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v6, v6

    mul-float v18, v18, v6

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float v3, v18, v3

    float-to-int v3, v3

    .line 1819
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 1820
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v18, 0x3f800000    # 1.0f

    .line 1821
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    .line 1822
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v6, v14

    sub-float v14, v14, v18

    div-float v2, v7, v2

    sub-float v2, v2, v18

    mul-float v14, v14, v4

    add-float v14, v14, v18

    div-float/2addr v6, v14

    float-to-int v6, v6

    mul-float v4, v4, v2

    add-float v4, v4, v18

    div-float/2addr v7, v4

    float-to-int v2, v7

    .line 1829
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v6

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->left:F

    .line 1830
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    div-int/lit8 v2, v2, 0x2

    sub-int v7, v3, v2

    int-to-float v7, v7

    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 1831
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1832
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 1834
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_src_rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_dst_rect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1836
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    if-eq v2, v13, :cond_4

    if-ne v2, v11, :cond_5

    .line 1837
    :cond_4
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1838
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    div-float v14, v18, v2

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v2, v14, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1840
    :cond_5
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1841
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim_matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v20, 0x2

    .line 1845
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1846
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    mul-float v16, v16, v10

    add-float v2, v16, v17

    float-to-int v14, v2

    .line 1851
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const/16 v5, 0xb4

    if-nez v2, :cond_7

    .line 1852
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    :goto_3
    int-to-double v6, v14

    mul-double v6, v6, v3

    double-to-int v3, v6

    :goto_4
    sub-int/2addr v2, v3

    move/from16 v16, v2

    goto :goto_7

    :cond_7
    if-ne v2, v5, :cond_8

    .line 1855
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    goto :goto_3

    :cond_8
    if-eq v2, v13, :cond_a

    if-ne v2, v11, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_5
    const v2, 0x7f0a041c

    .line 1859
    invoke-virtual {v8, v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1861
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gui_location:[I

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 1862
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gui_location:[I

    aget v6, v2, v15

    .line 1863
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getLocationOnScreen([I)V

    .line 1864
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->gui_location:[I

    aget v2, v2, v15

    .line 1865
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    sub-int/2addr v6, v2

    .line 1871
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 1872
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    if-ne v7, v13, :cond_b

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    move-wide/from16 v21, v3

    int-to-double v3, v14

    mul-double v3, v3, v18

    double-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_6

    :cond_b
    move-wide/from16 v21, v3

    .line 1876
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    if-le v3, v2, :cond_c

    .line 1878
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v2, v3

    .line 1880
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    int-to-double v3, v14

    mul-double v3, v3, v21

    double-to-int v3, v3

    goto :goto_4

    .line 1884
    :goto_7
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const-wide/16 v18, 0x3e8

    const/4 v3, 0x3

    if-eqz v2, :cond_11

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    if-eq v6, v3, :cond_11

    .line 1923
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isOnTimer()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1924
    iget-wide v6, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v6, v6, v21

    const-wide/16 v21, 0x3e7

    add-long v6, v6, v21

    div-long v6, v6, v18

    .line 1925
    iget-boolean v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_d

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remaining_time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Preview"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v22, v6, v2

    if-ltz v22, :cond_e

    .line 1928
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x42280000    # 42.0f

    mul-float v3, v3, v10

    add-float v3, v3, v17

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1929
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1930
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4b

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    move v5, v4

    const/16 v23, 0xb4

    const/high16 v4, -0x10000

    const/4 v11, 0x1

    const/4 v13, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)V

    goto/16 :goto_8

    :cond_e
    const/4 v11, 0x1

    const/4 v13, 0x2

    const/16 v23, 0xb4

    goto/16 :goto_8

    :cond_f
    const/4 v11, 0x1

    const/4 v13, 0x2

    const/16 v23, 0xb4

    .line 1933
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time_set:Z

    if-eqz v1, :cond_10

    .line 1934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time:J

    sub-long/2addr v1, v3

    .line 1936
    div-long v1, v1, v18

    const-wide/16 v3, 0x3c

    .line 1937
    rem-long v5, v1, v3

    long-to-int v6, v5

    .line 1938
    div-long/2addr v1, v3

    move-wide/from16 v24, v3

    .line 1939
    rem-long v3, v1, v24

    long-to-int v4, v3

    .line 1940
    div-long v1, v1, v24

    .line 1943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v1, v2, v15

    const-string v1, "%02d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v1, v2, v15

    const-string v1, "%02d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1946
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v3, v3, v10

    add-float v3, v3, v17

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1947
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v2, 0x43240000    # 164.0f

    mul-float v2, v2, v10

    add-float v2, v2, v17

    float-to-int v2, v2

    move v3, v2

    .line 1949
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v6, v4, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int v7, v4, v3

    const/high16 v4, -0x10000

    const/high16 v5, -0x1000000

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)V

    goto :goto_9

    :cond_10
    :goto_8
    move-object/from16 v1, p1

    goto :goto_9

    :cond_11
    const/4 v11, 0x1

    const/4 v13, 0x2

    const/16 v23, 0xb4

    if-nez v2, :cond_12

    .line 1957
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1958
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v3, v3, v10

    add-float v3, v3, v17

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1959
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1961
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const-string v5, "FAILED TO OPEN CAMERA."

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1962
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/2addr v3, v13

    add-int/2addr v3, v14

    int-to-float v3, v3

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const-string v5, "CAMERA MAY BE IN USE"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1963
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/2addr v3, v13

    mul-int/lit8 v4, v14, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const-string v5, "BY ANOTHER APPLICATION?"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1969
    :cond_12
    :goto_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    .line 1970
    iget-boolean v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_13

    const-string v2, "preference_show_zoom"

    invoke-interface {v9, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1971
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    iget v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const v3, 0x3f800054    # 1.00001f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_13

    mul-int/lit8 v3, v14, 0x2

    .line 1976
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x41600000    # 14.0f

    mul-float v5, v5, v10

    add-float v5, v5, v17

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1977
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1978
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Zoom: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v6, v5, 0x2

    sub-int v7, v16, v3

    move-object v3, v2

    move-object v2, v4

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    invoke-direct/range {v0 .. v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->drawTextWithBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;IIII)V

    :cond_13
    move-object v6, v0

    .line 2036
    const-string v0, "preference_location"

    invoke-interface {v9, v0, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v7, -0xff0100

    if-eqz v0, :cond_1b

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, v10

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 2041
    iget v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_15

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_14

    goto :goto_a

    :cond_14
    move v3, v14

    goto :goto_b

    .line 2042
    :cond_15
    :goto_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2043
    div-int/2addr v2, v13

    add-int v3, v14, v2

    sub-int/2addr v0, v2

    .line 2046
    :goto_b
    iget v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_16

    .line 2047
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v0, v2, v14

    .line 2049
    :cond_16
    iget v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    iget-boolean v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_placement_right:Z

    if-eqz v4, :cond_17

    const/16 v5, 0xb4

    goto :goto_c

    :cond_17
    const/4 v5, 0x0

    :goto_c
    if-ne v2, v5, :cond_18

    .line 2050
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int v3, v2, v14

    .line 2052
    :cond_18
    iget-object v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_dest:Landroid/graphics/Rect;

    add-int v4, v3, v14

    add-int v5, v0, v14

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2053
    iget-boolean v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_set_location:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 2054
    iget-object v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_dest:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2057
    iget-object v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2058
    iget-object v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    iget v3, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_accuracy:F

    const v5, 0x41c8147b    # 25.01f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_19

    const v3, -0xff0100

    goto :goto_d

    :cond_19
    const/16 v3, -0x100

    :goto_d
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v4

    int-to-float v0, v0

    .line 2059
    div-int/lit8 v14, v14, 0xa

    int-to-float v3, v14

    iget-object v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 2062
    :cond_1a
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->location_dest:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2089
    :cond_1b
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2091
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_20

    iget v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v14, 0x3

    if-eq v0, v14, :cond_21

    iget-boolean v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_level_angle:Z

    if-eqz v0, :cond_21

    const-string v0, "preference_show_angle_line"

    invoke-interface {v9, v0, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2093
    iget v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v0, 0x50

    goto :goto_10

    :cond_1d
    :goto_f
    const/16 v0, 0x3c

    :goto_10
    int-to-float v0, v0

    mul-float v0, v0, v10

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 2095
    iget-wide v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->orig_level_angle:D

    neg-double v2, v2

    .line 2097
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eq v4, v11, :cond_1e

    if-eq v4, v14, :cond_1e

    goto :goto_11

    :cond_1e
    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr v2, v4

    :goto_11
    int-to-double v4, v0

    .line 2108
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-int v0, v8

    .line 2109
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    double-to-int v2, v4

    .line 2110
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/2addr v3, v13

    .line 2111
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/2addr v4, v13

    .line 2112
    iget-wide v8, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->level_angle:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v8, v20

    if-gtz v5, :cond_1f

    .line 2113
    iget-object v5, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12

    .line 2116
    :cond_1f
    iget-object v5, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    :goto_12
    sub-int v5, v3, v0

    int-to-float v5, v5

    sub-int v8, v4, v2

    int-to-float v8, v8

    add-int/2addr v3, v0

    int-to-float v3, v3

    add-int/2addr v4, v2

    int-to-float v4, v4

    move v1, v5

    .line 2118
    iget-object v5, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_20
    const/4 v14, 0x3

    .line 2121
    :cond_21
    :goto_13
    iget v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    if-eq v0, v14, :cond_26

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v10, v10, v1

    add-float v10, v10, v17

    float-to-int v1, v10

    if-ne v0, v11, :cond_22

    .line 2124
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_14

    :cond_22
    if-ne v0, v13, :cond_23

    .line 2126
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_14

    .line 2128
    :cond_23
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2129
    :goto_14
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2132
    iget-boolean v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    if-eqz v0, :cond_24

    .line 2133
    iget v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_x:I

    .line 2134
    iget v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_y:I

    goto :goto_15

    .line 2137
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/2addr v0, v13

    .line 2138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/2addr v2, v13

    :goto_15
    sub-int v3, v0, v1

    int-to-float v3, v3

    sub-int v4, v2, v1

    int-to-float v4, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-int/2addr v2, v1

    int-to-float v1, v2

    .line 2140
    iget-object v5, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    move v2, v4

    move v4, v1

    move v1, v3

    move v3, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    .line 2141
    iget-wide v2, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    add-long v4, v4, v18

    cmp-long v0, v2, v4

    if-lez v0, :cond_25

    .line 2142
    iput v14, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 2144
    :cond_25
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_16

    :cond_26
    move-object/from16 v1, p1

    .line 2146
    :goto_16
    iget-boolean v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    if-eqz v0, :cond_29

    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_29

    .line 2147
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2148
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2149
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->faces_detected:[Landroid/hardware/Camera$Face;

    array-length v2, v0

    :goto_17
    if-ge v15, v2, :cond_28

    aget-object v3, v0, v15

    .line 2151
    iget v4, v3, Landroid/hardware/Camera$Face;->score:I

    const/16 v5, 0x32

    if-lt v4, v5, :cond_27

    .line 2152
    invoke-direct {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->calculateCameraToPreviewMatrix()V

    .line 2153
    iget-object v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->face_rect:Landroid/graphics/RectF;

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2154
    iget-object v3, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera_to_preview_matrix:Landroid/graphics/Matrix;

    iget-object v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->face_rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2160
    iget-object v3, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->face_rect:Landroid/graphics/RectF;

    iget-object v4, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_27
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 2178
    :cond_28
    iget-object v0, v6, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_29
    :goto_18
    return-void
.end method

.method public onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v0, 0x1

    .line 4231
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_geomagnetic:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 4234
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->geomagnetic:[F

    const v2, 0x3f4ccccd    # 0.8f

    aget v3, v1, v0

    mul-float v3, v3, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4236
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->calculateGeoDirection()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1645
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_aspect_ratio:Z

    if-nez v0, :cond_0

    .line 1646
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void

    .line 1649
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1650
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1680
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1681
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1680
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 4395
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4396
    const-string v0, "Preview"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 4397
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->app_is_paused:Z

    .line 4398
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->closeCamera()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 4385
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4386
    const-string v0, "Preview"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 4387
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->app_is_paused:Z

    .line 4388
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4389
    const-string v1, "preference_ui_placement"

    const-string/jumbo v2, "ui_right"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4390
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_placement_right:Z

    .line 4391
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 4402
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 4403
    const-string v0, "onSaveInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 4405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save cameraId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_1
    const-string v0, "cameraId"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4407
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_2

    .line 4408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save zoom_factor: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    :cond_2
    const-string/jumbo v0, "zoom_factor"

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 355
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 357
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->clearSeekBar()V

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 364
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->touch_was_multitouch:Z

    return v1

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 369
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->touch_was_multitouch:Z

    :cond_1
    return v1

    .line 373
    :cond_2
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->touch_was_multitouch:Z

    if-eqz v0, :cond_3

    return v1

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 381
    :cond_4
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    .line 382
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 384
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_e

    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->using_face_detection:Z

    if-nez v3, :cond_e

    .line 385
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    .line 387
    iput-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    .line 388
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    const-string v5, "failed to set parameters for focus area"

    const-string v6, "Preview"

    if-eqz v4, :cond_b

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "macro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "continuous-picture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "continuous-video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 389
    :cond_5
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_6

    .line 390
    const-string/jumbo v3, "set focus (and metering?) area"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_6
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_x:I

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_screen_y:I

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getAreas(FF)Ljava/util/ArrayList;

    move-result-object p1

    .line 396
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 399
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v3

    if-nez v3, :cond_7

    .line 400
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_8

    .line 401
    const-string p1, "metering areas not supported"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_7
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 408
    :cond_8
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_9

    .line 409
    const-string/jumbo p1, "set focus areas parameters"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_9
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 411
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_e

    .line 412
    const-string p1, "done"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 416
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_a

    .line 417
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_a
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 421
    :cond_b
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v3

    if-eqz v3, :cond_e

    .line 422
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_c

    .line 423
    const-string/jumbo v3, "set metering area"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getAreas(FF)Ljava/util/ArrayList;

    move-result-object p1

    .line 426
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 429
    :try_start_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 433
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_d

    .line 434
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_d
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 440
    :cond_e
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->tryAutoFocus(ZZ)V

    return v1
.end method

.method public scaleZoom(F)V
    .locals 7

    .line 2210
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scaleZoom() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_zoom:Z

    if-eqz v0, :cond_9

    .line 2213
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float v0, v0, p1

    .line 2216
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2220
    :cond_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_zoom_factor:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_2

    .line 2221
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_zoom_factor:I

    goto/16 :goto_3

    :cond_2
    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    .line 2227
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    :goto_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 2228
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_3

    .line 2229
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_5

    .line 2230
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "zoom int, found new zoom by comparing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2238
    :cond_4
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    :goto_1
    if-ltz p1, :cond_7

    .line 2239
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_6

    .line 2240
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_5

    .line 2241
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "zoom out, found new zoom by comparing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move v3, p1

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2248
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_8

    .line 2249
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "ScaleListener.onScale zoom_ratio is now "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "    old zoom_factor "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ratio "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "    chosen new zoom_factor "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_ratios:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p1, 0x1

    .line 2253
    invoke-virtual {p0, v3, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoomTo(IZ)V

    :cond_9
    return-void
.end method

.method public setExposure(IZ)V
    .locals 7

    const-string v0, "Exposure compensation "

    const-string v1, ""

    .line 2321
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v3, "Preview"

    if-eqz v2, :cond_0

    .line 2322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setExposure(): "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    if-eqz v2, :cond_6

    .line 2324
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 2325
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2326
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v4

    .line 2327
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->min_exposure:I

    if-ge p1, v5, :cond_2

    move p1, v5

    .line 2329
    :cond_2
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_exposure:I

    if-le p1, v5, :cond_3

    move p1, v5

    :cond_3
    if-eq p1, v4, :cond_6

    .line 2332
    iget-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v5, :cond_4

    .line 2333
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "change exposure from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_4
    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2336
    :try_start_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2338
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2339
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2340
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getExposurePreferenceKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2341
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2342
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->change_exposure_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 2344
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 2345
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->setSeekBarExposure()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2350
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p2, :cond_5

    .line 2351
    const-string/jumbo p2, "runtime exception in changeExposure()"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public setExposureLocked()V
    .locals 2

    .line 2932
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2933
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 2934
    const-string v0, "Preview"

    const-string v1, "null camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2937
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked_supported:Z

    if-eqz v0, :cond_1

    .line 2938
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cancelAutoFocus()V

    .line 2939
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2940
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2941
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2942
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a017e

    .line 2943
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :cond_1
    return-void
.end method

.method public setForce_video(Z)V
    .locals 0

    .line 4660
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->force_video:Z

    return-void
.end method

.method public setTakePictureFocusable(Z)V
    .locals 0

    .line 4652
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureFocusable:Z

    return-void
.end method

.method public setUIRotation(I)V
    .locals 2

    .line 4468
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4469
    const-string v0, "Preview"

    const-string/jumbo v1, "setUIRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    :cond_0
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->ui_rotation:I

    return-void
.end method

.method public showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V
    .locals 0

    .line 4460
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_0

    .line 4461
    const-string p1, "Preview"

    const-string/jumbo p2, "showToast"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-void
.end method

.method public supportsExposureLock()Z
    .locals 1

    .line 4612
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked_supported:Z

    return v0
.end method

.method public supportsExposures()Z
    .locals 2

    .line 4292
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4293
    const-string v0, "Preview"

    const-string/jumbo v1, "supportsExposures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposures:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFaceDetection()Z
    .locals 2

    .line 4256
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 4257
    const-string v0, "Preview"

    const-string/jumbo v1, "supportsFaceDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supports_face_detection:Z

    return v0
.end method

.method public supportsFlash()Z
    .locals 1

    .line 4608
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_flash_values:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFocus()Z
    .locals 1

    .line 4604
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supported_focus_values:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1269
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_0

    .line 1270
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "surfaceChanged "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Preview"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 484
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_0

    .line 485
    const-string p1, "Preview"

    const-string/jumbo v0, "surfaceCreated()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 488
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    .line 489
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V

    const/4 p1, 0x0

    .line 490
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setWillNotDraw(Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 494
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_0

    .line 495
    const-string p1, "Preview"

    const-string/jumbo v0, "surfaceDestroyed()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 499
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    .line 500
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->closeCamera()V

    return-void
.end method

.method public switchCamera()V
    .locals 4

    .line 2359
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2360
    const-string/jumbo v0, "switchCamera()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2364
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_4

    .line 2365
    const-string v0, "currently taking a photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2368
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 2369
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_2

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cameras"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 2372
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->closeCamera()V

    .line 2373
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    .line 2374
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2375
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 2376
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    .line 2377
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switch_camera_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v2, "Front Camera"

    invoke-virtual {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    goto :goto_0

    .line 2380
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switch_camera_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v2, "Back Camera"

    invoke-virtual {p0, v0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 2383
    :goto_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V

    .line 2386
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocusForVideo(Z)V

    :cond_4
    return-void
.end method

.method public switchVideo(ZZ)V
    .locals 7

    .line 2473
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2474
    const-string/jumbo v0, "switchVideo()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    .line 2477
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0a0408

    .line 2478
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 2480
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2481
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 2482
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopVideo()V

    .line 2484
    :cond_1
    iput-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    .line 2486
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showPhotoVideoToast()V

    goto :goto_1

    .line 2491
    :cond_2
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isOnTimer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2492
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 2493
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    if-eqz v3, :cond_3

    .line 2494
    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 2498
    :cond_3
    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 2499
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_4

    .line 2500
    const-string v3, "cancelled camera timer"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_4
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    goto :goto_0

    .line 2504
    :cond_5
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 2506
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_7

    .line 2507
    const-string/jumbo v3, "wait until photo taken"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2510
    :cond_6
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    .line 2513
    :cond_7
    :goto_0
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v3, :cond_8

    .line 2514
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showPhotoVideoToast()V

    .line 2518
    :cond_8
    :goto_1
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eq v3, v0, :cond_d

    .line 2519
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateFocusForVideo(Z)V

    const v0, 0x7f0a041c

    .line 2521
    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz p1, :cond_9

    .line 2526
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2527
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2528
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getIsVideoPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2529
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    if-eqz p2, :cond_d

    .line 2533
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    if-eqz p1, :cond_a

    .line 2534
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 2535
    iput-boolean v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    .line 2537
    :cond_a
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setPreviewSize()V

    .line 2538
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-nez p1, :cond_c

    .line 2540
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_b

    .line 2541
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "    reset preview to current fps range: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    aget p2, p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    aget p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_b
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2543
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_fps_range:[I

    aget v0, p2, v5

    aget p2, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2544
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2547
    :cond_c
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    :cond_d
    return-void
.end method

.method public takePicture()V
    .locals 11

    .line 3127
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3128
    const-string/jumbo v0, "takePicture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3129
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->thumbnail_anim:Z

    const/4 v2, 0x2

    .line 3130
    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3131
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 3132
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 3133
    const-string v2, "camera not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_1
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3137
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void

    .line 3140
    :cond_2
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    if-nez v3, :cond_4

    .line 3141
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_3

    .line 3142
    const-string v2, "preview surface not yet available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_3
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3146
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    return-void

    :cond_4
    const/4 v3, 0x3

    .line 3149
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 3151
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->updateParametersFromLocation()V

    .line 3153
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v3, :cond_12

    .line 3154
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v5, 0x7f0a041c

    .line 3155
    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 3158
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_5

    .line 3159
    const-string/jumbo v3, "start video recording"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_5
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 3161
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_6

    .line 3163
    const-string v0, "Couldn\'t create media video file; check storage permissions?"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    const-string v0, "Failed to save video file"

    invoke-virtual {p0, v5, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    return-void

    .line 3167
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    .line 3168
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_7

    .line 3169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "save to: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_7
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 3172
    iget-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_9

    .line 3173
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current_video_quality: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 3175
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current_video_quality value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_quality:Ljava/util/List;

    iget v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_video_quality:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resolution "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bit rate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    new-array v2, v2, [I

    .line 3179
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 3180
    invoke-virtual {v6, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 3181
    iget-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_9

    .line 3182
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    recording with preview fps range: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_9
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 3187
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 3188
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 3189
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3190
    const-string v6, "preference_record_audio"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3192
    const-string v7, "preference_record_audio_src"

    const-string v8, "audio_src_camcorder"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3193
    iget-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v7, :cond_a

    .line 3194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pref_audio_src: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_a
    const-string v7, "audio_src_mic"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_0

    :cond_b
    const/4 v2, 0x5

    .line 3199
    :goto_0
    iget-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v7, :cond_c

    .line 3200
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "audio_source: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_c
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3203
    :cond_d
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    if-eqz v6, :cond_e

    .line 3206
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_1

    .line 3210
    :cond_e
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3211
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3212
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3213
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3214
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, v3, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3217
    :goto_1
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->current_rotation:I

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 3218
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 3220
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 3223
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 3224
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 3225
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 3226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time:J

    .line 3227
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time_set:Z

    .line 3228
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopstart_video_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v6, "Started recording video"

    invoke-virtual {p0, v2, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 3247
    iget-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v6, :cond_f

    .line 3248
    const-string/jumbo v6, "runtime exception starting video recorder"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_f
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3251
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getErrorFeatures(Landroid/media/CamcorderProfile;)Ljava/lang/String;

    move-result-object v1

    .line 3252
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 3253
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sorry, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported on your device"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3256
    :cond_10
    const-string v1, "Failed to record video"

    .line 3258
    :goto_2
    invoke-virtual {p0, v5, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 3259
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 3260
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 3261
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 3264
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3265
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 3266
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->reconnectCamera(Z)V

    goto/16 :goto_4

    :catch_1
    move-exception v2

    .line 3232
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_11

    .line 3233
    const-string v3, "failed to save video"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :cond_11
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3235
    const-string v1, "Failed to save video"

    invoke-virtual {p0, v5, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 3236
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 3237
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 3238
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_recorder:Landroid/media/MediaRecorder;

    .line 3241
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3242
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 3243
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->reconnectCamera(Z)V

    goto/16 :goto_4

    .line 3272
    :cond_12
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showGUI(Z)V

    .line 3273
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3274
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 3275
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_13

    .line 3276
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "focus_mode is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_13
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    if-eqz v3, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused_time:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_15

    .line 3279
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_14

    .line 3280
    const-string v0, "recently focused successfully, so no need to refocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    :cond_14
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureWhenFocused()V

    return-void

    .line 3283
    :cond_15
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_3

    .line 3309
    :cond_16
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureWhenFocused()V

    return-void

    .line 3284
    :cond_17
    :goto_3
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$3;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    .line 3292
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v3, :cond_18

    .line 3293
    const-string/jumbo v3, "start autofocus to take picture"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_18
    :try_start_1
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3296
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraAutoFocus:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraAutoFocus:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    .line 3301
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-interface {v2, v0, v4}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 3303
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_19

    .line 3304
    const-string/jumbo v0, "runtime exception from autoFocus when trying to take photo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :cond_19
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public takePictureOnTimer(JZ)V
    .locals 6

    .line 3087
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3088
    const-string/jumbo v0, "takePictureOnTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timer_delay: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 3091
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_time:J

    .line 3101
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_1

    .line 3102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "take photo at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p3, :cond_2

    .line 3104
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v1, "Started timer"

    invoke-virtual {p0, p3, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    .line 3106
    :cond_2
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimer:Ljava/util/Timer;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1TakePictureTimerTask;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    invoke-virtual {p3, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3108
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3109
    const-string p2, "preference_timer_beep"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimer:Ljava/util/Timer;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1BeepTimerTask;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1BeepTimerTask;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    return-void
.end method

.method public takePicturePressed()V
    .locals 11

    const-string v0, "n_burst: "

    .line 2990
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v2, "Preview"

    if-eqz v1, :cond_0

    .line 2991
    const-string/jumbo v1, "takePicturePressed"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 2993
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_1

    .line 2994
    const-string v0, "camera not available"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_1
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    return-void

    .line 3000
    :cond_2
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    if-nez v1, :cond_4

    .line 3001
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_3

    .line 3002
    const-string v0, "preview surface not yet available"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_3
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    return-void

    .line 3009
    :cond_4
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isOnTimer()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3010
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3011
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->beepTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_5

    .line 3012
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3016
    :cond_5
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    .line 3017
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_6

    .line 3018
    const-string v0, "cancelled camera timer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :cond_6
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->take_photo_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    const-string v1, "Cancelled timer"

    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    return-void

    .line 3023
    :cond_7
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->phase:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b

    .line 3024
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_video:Z

    if-eqz v0, :cond_a

    .line 3025
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a041c

    .line 3026
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3029
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time_set:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->video_start_time:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v0, v3

    if-gez v5, :cond_8

    goto :goto_0

    .line 3037
    :cond_8
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->stopVideo()V

    return-void

    .line 3033
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_10

    .line 3034
    const-string v0, "ignore pressing stop video too quickly after start"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3041
    :cond_a
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_10

    .line 3042
    const-string v0, "already taking a photo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3048
    :cond_b
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->startCameraPreview()V

    .line 3051
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3052
    const-string v4, "preference_timer"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 3055
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    goto :goto_1

    :catch_0
    move-exception v7

    .line 3058
    iget-boolean v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v8, :cond_c

    .line 3059
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed to parse timer_value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :cond_c
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-wide v7, v5

    .line 3064
    :goto_1
    const-string v4, "preference_burst_mode"

    const-string v9, "1"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 3066
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    .line 3067
    iget-boolean v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v9, :cond_e

    .line 3068
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3071
    iget-boolean v9, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v9, :cond_d

    .line 3072
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "failed to parse burst_mode_value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :cond_d
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3074
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    .line 3076
    :cond_e
    :goto_2
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->n_burst:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->remaining_burst_photos:I

    cmp-long v0, v7, v5

    if-nez v0, :cond_f

    .line 3079
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePicture()V

    goto :goto_3

    .line 3082
    :cond_f
    invoke-virtual {p0, v7, v8, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureOnTimer(JZ)V

    :cond_10
    :goto_3
    return-void
.end method

.method public toggleExposureLock()V
    .locals 2

    .line 2916
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 2917
    const-string/jumbo v0, "toggleExposureLock()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2920
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_3

    .line 2921
    const-string v0, "null camera"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2924
    :cond_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked_supported:Z

    if-eqz v0, :cond_3

    .line 2925
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    .line 2926
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setExposureLocked()V

    .line 2927
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->exposure_lock_toast:Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_exposure_locked:Z

    if-eqz v1, :cond_2

    const-string v1, "Exposure Locked"

    goto :goto_0

    :cond_2
    const-string v1, "Exposure Unlocked"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public tryAutoFocus(ZZ)V
    .locals 6

    .line 3964
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    const-string v1, "Preview"

    if-eqz v0, :cond_0

    .line 3965
    const-string/jumbo v0, "tryAutoFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 3967
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_b

    .line 3968
    const-string p1, "no camera"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3970
    :cond_1
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_surface:Z

    if-nez v0, :cond_2

    .line 3971
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_b

    .line 3972
    const-string p1, "preview surface not yet available"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3974
    :cond_2
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->is_preview_started:Z

    if-nez v0, :cond_3

    .line 3975
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_b

    .line 3976
    const-string p1, "preview not yet started"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3979
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->isTakingPhotoOrOnTimer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3980
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_b

    .line 3981
    const-string p1, "currently taking a photo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3985
    :cond_4
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3986
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 3989
    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "macro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3990
    :cond_5
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v2, :cond_6

    .line 3991
    const-string/jumbo v2, "try to start autofocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 3993
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v4, :cond_7

    .line 3994
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "old_flash: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    :cond_7
    const-string v4, ""

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    .line 3997
    const-string p1, "off"

    if-eq v2, p1, :cond_8

    .line 3998
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->set_flash_after_autofocus:Ljava/lang/String;

    .line 3999
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4000
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4002
    :cond_8
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;

    invoke-direct {p1, p0, p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$6;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V

    const/4 p2, 0x0

    .line 4011
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    const-wide/16 v4, -0x1

    .line 4012
    iput-wide v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    .line 4013
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->successfully_focused:Z

    .line 4015
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4016
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraAutoFocus:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->count_cameraAutoFocus:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4020
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->camera:Landroid/hardware/Camera;

    invoke-interface {p1, p2, v2}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 4022
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p1, :cond_9

    .line 4023
    const-string/jumbo p1, "runtime exception from autoFocus"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :cond_9
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 4027
    :cond_a
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->has_focus_area:Z

    if-eqz p1, :cond_b

    .line 4029
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_success:I

    .line 4030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->focus_complete_time:J

    :cond_b
    :goto_0
    return-void
.end method

.method public zoomIn()V
    .locals 2

    .line 2258
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 2259
    const-string v0, "Preview"

    const-string/jumbo v1, "zoomIn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->max_zoom_factor:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2261
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoomTo(IZ)V

    :cond_1
    return-void
.end method

.method public zoomOut()V
    .locals 2

    .line 2266
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz v0, :cond_0

    .line 2267
    const-string v0, "Preview"

    const-string/jumbo v1, "zoomOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoom_factor:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2269
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->zoomTo(IZ)V

    :cond_1
    return-void
.end method

.method public zoomTo(IZ)V
    .locals 1

    .line 2274
    iget-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->LOG:Z

    if-eqz p2, :cond_0

    .line 2275
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ZoomTo(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Preview"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
