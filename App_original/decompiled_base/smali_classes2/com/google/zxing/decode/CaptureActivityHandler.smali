.class public final Lcom/google/zxing/decode/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/decode/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final activity:Lcom/google/zxing/activity/CaptureActivity;

.field private final cameraManager:Lcom/google/zxing/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/decode/DecodeThread;

.field private state:Lcom/google/zxing/decode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/camera/CameraManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/activity/CaptureActivity;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    .line 92
    new-instance v0, Lcom/google/zxing/decode/DecodeThread;

    new-instance v5, Lcom/google/zxing/view/ViewfinderResultPointCallback;

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/activity/CaptureActivity;->getViewfinderView()Lcom/google/zxing/view/ViewfinderView;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/view/ViewfinderView;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/decode/DecodeThread;-><init>(Lcom/google/zxing/activity/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decode/DecodeThread;

    .line 95
    invoke-virtual {v0}, Lcom/google/zxing/decode/DecodeThread;->start()V

    .line 97
    sget-object p1, Lcom/google/zxing/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 100
    iput-object p5, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    .line 103
    invoke-virtual {p5}, Lcom/google/zxing/camera/CameraManager;->startPreview()V

    .line 105
    invoke-direct {p0}, Lcom/google/zxing/decode/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 206
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 209
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 211
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/activity/CaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/R$id;->restart_preview:I

    if-ne v0, v1, :cond_0

    .line 111
    sget-object p1, Lcom/google/zxing/decode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/google/zxing/decode/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void

    .line 113
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/R$id;->decode_succeeded:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 114
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 116
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    const-string v1, "barcode_bitmap"

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 123
    array-length v4, v1

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 129
    :cond_1
    const-string v1, "barcode_scaled_factor"

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/zxing/activity/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    return-void

    .line 134
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/R$id;->decode_failed:I

    if-ne v0, v1, :cond_4

    .line 137
    sget-object p1, Lcom/google/zxing/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 138
    iget-object p1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/google/zxing/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    return-void

    .line 140
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/R$id;->return_scan_result:I

    if-ne v0, v1, :cond_5

    .line 141
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/activity/CaptureActivity;->finish()V

    return-void

    .line 144
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/R$id;->launch_product_query:I

    if-ne v0, v1, :cond_9

    .line 145
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x80000

    .line 149
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v3}, Lcom/google/zxing/activity/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 156
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 159
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    .line 160
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using browser in package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_6
    const-string v0, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.chrome"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    :cond_7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 168
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->activity:Lcom/google/zxing/activity/CaptureActivity;

    invoke-virtual {v0, v1}, Lcom/google/zxing/activity/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 176
    :catch_0
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public quitSynchronously()V
    .locals 3

    .line 183
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->state:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 184
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->stopPreview()V

    .line 185
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/google/zxing/R$id;->quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/decode/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decode/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/decode/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :catch_0
    sget v0, Lcom/google/zxing/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/decode/CaptureActivityHandler;->removeMessages(I)V

    .line 198
    sget v0, Lcom/google/zxing/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/decode/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
