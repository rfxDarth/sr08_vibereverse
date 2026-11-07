.class public final Lcom/google/zxing/activity/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/activity/CaptureActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final PARSE_BARCODE_FAIL:I = 0x12c

.field private static final PARSE_BARCODE_SUC:I = 0xc8

.field private static final REQUEST_CODE:I = 0x64

.field public static final SCAN_QRCODE_BITMAP:Ljava/lang/String; = "qrcode_bitmap"

.field public static final SCAN_QRCODE_RESULT:Ljava/lang/String; = "qrcode_result"

.field private static final TAG:Ljava/lang/String; = "CaptureActivity"


# instance fields
.field private ambientLightManager:Lcom/google/zxing/common/AmbientLightManager;

.field private beepManager:Lcom/google/zxing/common/BeepManager;

.field private cameraManager:Lcom/google/zxing/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/decode/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

.field private isFlashlightOpen:Z

.field private lastResult:Lcom/google/zxing/Result;

.field private mHandler:Landroid/os/Handler;

.field private photoPath:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/common/IntentSource;

.field private viewfinderView:Lcom/google/zxing/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    new-instance v0, Lcom/google/zxing/activity/CaptureActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/google/zxing/activity/CaptureActivity$MyHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/activity/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/zxing/activity/CaptureActivity;->photoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/zxing/activity/CaptureActivity;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/zxing/activity/CaptureActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/zxing/activity/CaptureActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->setCaptureResult(Ljava/lang/String;)V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 1

    .line 484
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 485
    iput-object p2, p0, Lcom/google/zxing/activity/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 488
    iput-object p2, p0, Lcom/google/zxing/activity/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 490
    :cond_1
    iget-object p2, p0, Lcom/google/zxing/activity/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz p2, :cond_2

    .line 491
    sget p2, Lcom/google/zxing/R$id;->decode_succeeded:I

    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 493
    iget-object p2, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    invoke-virtual {p2, p1}, Lcom/google/zxing/decode/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    sget v1, Lcom/google/zxing/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    sget v1, Lcom/google/zxing/R$string;->msg_camera_framework_bug:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 503
    sget v1, Lcom/google/zxing/R$string;->button_ok:I

    new-instance v2, Lcom/google/zxing/decode/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/decode/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v1, Lcom/google/zxing/decode/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/decode/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget-object p1, Lcom/google/zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v0, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 460
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 461
    new-instance v0, Lcom/google/zxing/decode/CaptureActivityHandler;

    iget-object v2, p0, Lcom/google/zxing/activity/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/zxing/activity/CaptureActivity;->decodeHints:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/decode/CaptureActivityHandler;-><init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/camera/CameraManager;)V

    iput-object v0, v1, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p1, 0x0

    .line 464
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/activity/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 471
    sget-object v0, Lcom/google/zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    .line 466
    sget-object v0, Lcom/google/zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    :goto_3
    return-void

    :cond_2
    move-object v1, p0

    .line 448
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resetStatusView()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/zxing/view/ViewfinderView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    return-void
.end method

.method private setCaptureResult(Ljava/lang/String;)V
    .locals 2

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    const-string v1, "qrcode_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 533
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 534
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getCameraManager()Lcom/google/zxing/camera/CameraManager;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/google/zxing/view/ViewfinderView;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 398
    iget-object p3, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

    invoke-virtual {p3}, Lcom/google/zxing/common/InactivityTimer;->onActivity()V

    .line 400
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 405
    iget-object p3, p0, Lcom/google/zxing/activity/CaptureActivity;->beepManager:Lcom/google/zxing/common/BeepManager;

    invoke-virtual {p3}, Lcom/google/zxing/common/BeepManager;->playBeepSoundAndVibrate()V

    .line 410
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 412
    const-string v0, "qrcode_result"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string p1, "qrcode_bitmap"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 414
    invoke-virtual {p0, p1, p3}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 415
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 309
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 311
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 312
    const-string p2, "_data"

    .line 313
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 314
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/zxing/activity/CaptureActivity;->photoPath:Ljava/lang/String;

    .line 316
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 318
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 319
    const-string/jumbo p3, "\u6b63\u5728\u626b\u63cf..."

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 320
    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 321
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 323
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/google/zxing/activity/CaptureActivity$1;

    invoke-direct {v0, p0, p2}, Lcom/google/zxing/activity/CaptureActivity$1;-><init>(Lcom/google/zxing/activity/CaptureActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 354
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/zxing/R$id;->capture_scan_photo:I

    if-ne v0, v1, :cond_0

    .line 512
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string/jumbo v0, "\u9009\u62e9\u4e8c\u7ef4\u7801\u56fe\u7247"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x64

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/activity/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/zxing/R$id;->capture_flashlight:I

    if-ne p1, v0, :cond_2

    .line 518
    iget-boolean p1, p0, Lcom/google/zxing/activity/CaptureActivity;->isFlashlightOpen:Z

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/zxing/camera/CameraManager;->setTorch(Z)V

    .line 520
    iput-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->isFlashlightOpen:Z

    return-void

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/camera/CameraManager;->setTorch(Z)V

    .line 523
    iput-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->isFlashlightOpen:Z

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 175
    sget p1, Lcom/google/zxing/R$layout;->capture:I

    invoke-virtual {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    .line 178
    new-instance p1, Lcom/google/zxing/common/InactivityTimer;

    invoke-direct {p1, p0}, Lcom/google/zxing/common/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

    .line 179
    new-instance p1, Lcom/google/zxing/common/BeepManager;

    invoke-direct {p1, p0}, Lcom/google/zxing/common/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->beepManager:Lcom/google/zxing/common/BeepManager;

    .line 180
    new-instance p1, Lcom/google/zxing/common/AmbientLightManager;

    invoke-direct {p1, p0}, Lcom/google/zxing/common/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->ambientLightManager:Lcom/google/zxing/common/AmbientLightManager;

    .line 183
    sget p1, Lcom/google/zxing/R$id;->capture_scan_photo:I

    invoke-virtual {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget p1, Lcom/google/zxing/R$id;->capture_flashlight:I

    invoke-virtual {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/common/InactivityTimer;->shutdown()V

    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/camera/CameraManager;->zoomOut()V

    return v1

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {p1}, Lcom/google/zxing/camera/CameraManager;->zoomIn()V

    :cond_2
    return v1

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->source:Lcom/google/zxing/common/IntentSource;

    sget-object v2, Lcom/google/zxing/common/IntentSource;->NONE:Lcom/google/zxing/common/IntentSource;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v0, :cond_4

    const-wide/16 p1, 0x0

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/activity/CaptureActivity;->restartPreviewAfterDelay(J)V

    return v1

    .line 295
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/google/zxing/decode/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/common/InactivityTimer;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->ambientLightManager:Lcom/google/zxing/common/AmbientLightManager;

    invoke-virtual {v0}, Lcom/google/zxing/common/AmbientLightManager;->stop()V

    .line 254
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->beepManager:Lcom/google/zxing/common/BeepManager;

    invoke-virtual {v0}, Lcom/google/zxing/common/BeepManager;->close()V

    .line 257
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->closeDriver()V

    .line 258
    iget-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 259
    sget v0, Lcom/google/zxing/R$id;->capture_preview_view:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 260
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 261
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 263
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    new-instance v0, Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/activity/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    .line 206
    sget v0, Lcom/google/zxing/R$id;->capture_viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/view/ViewfinderView;

    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    .line 207
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/google/zxing/view/ViewfinderView;->setCameraManager(Lcom/google/zxing/camera/CameraManager;)V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    .line 210
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 215
    sget v1, Lcom/google/zxing/R$id;->capture_preview_view:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 216
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 217
    iget-boolean v2, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    if-eqz v2, :cond_0

    .line 221
    invoke-direct {p0, v1}, Lcom/google/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 225
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 229
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->beepManager:Lcom/google/zxing/common/BeepManager;

    invoke-virtual {v1}, Lcom/google/zxing/common/BeepManager;->updatePrefs()V

    .line 236
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->ambientLightManager:Lcom/google/zxing/common/AmbientLightManager;

    iget-object v2, p0, Lcom/google/zxing/activity/CaptureActivity;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/AmbientLightManager;->start(Lcom/google/zxing/camera/CameraManager;)V

    .line 239
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->inactivityTimer:Lcom/google/zxing/common/InactivityTimer;

    invoke-virtual {v1}, Lcom/google/zxing/common/InactivityTimer;->onResume()V

    .line 241
    sget-object v1, Lcom/google/zxing/common/IntentSource;->NONE:Lcom/google/zxing/common/IntentSource;

    iput-object v1, p0, Lcom/google/zxing/activity/CaptureActivity;->source:Lcom/google/zxing/common/IntentSource;

    .line 242
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 243
    iput-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->characterSet:Ljava/lang/String;

    return-void
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity;->handler:Lcom/google/zxing/decode/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 420
    sget v1, Lcom/google/zxing/R$id;->restart_preview:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/decode/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/activity/CaptureActivity;->resetStatusView()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const/4 p1, 0x0

    .line 379
    iput-boolean p1, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 367
    sget-object v0, Lcom/google/zxing/activity/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/google/zxing/activity/CaptureActivity;->hasSurface:Z

    .line 372
    invoke-direct {p0, p1}, Lcom/google/zxing/activity/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
