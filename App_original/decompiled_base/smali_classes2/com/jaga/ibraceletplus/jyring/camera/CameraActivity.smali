.class public Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;,
        Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$FileInfo;
    }
.end annotation


# static fields
.field public static final CAMERA_MODE:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final VIDEO_MODE:I = 0x2


# instance fields
.field private LOG:Z

.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field private br:Landroid/content/BroadcastReceiver;

.field private current_orientation:I

.field public gallery_bitmap:Landroid/graphics/Bitmap;

.field public is_test:Z

.field private locationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNotifyBle:Z

.field private mSensorAccelerometer:Landroid/hardware/Sensor;

.field private mSensorMagnetic:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private magneticListener:Landroid/hardware/SensorEventListener;

.field private preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

.field private supports_auto_stabilise:Z

.field private supports_force_video_4k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 66
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorAccelerometer:Landroid/hardware/Sensor;

    .line 67
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorMagnetic:Landroid/hardware/Sensor;

    .line 68
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 69
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->locationListener:Landroid/location/LocationListener;

    .line 70
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->current_orientation:I

    .line 72
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_auto_stabilise:Z

    .line 73
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_force_video_4k:Z

    .line 74
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    .line 76
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->is_test:Z

    .line 77
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->gallery_bitmap:Landroid/graphics/Bitmap;

    .line 79
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    .line 209
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->br:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 237
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->magneticListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Lcom/jaga/ibraceletplus/jyring/camera/Preview;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    return p0
.end method

.method private getLatestFromMediaType(Landroid/net/Uri;Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;
    .locals 24

    .line 533
    const-string v6, "MediaDebug"

    .line 0
    const-string/jumbo v7, "\u4fee\u6539\u65f6\u95f4: "

    const-string/jumbo v8, "\u6587\u4ef6: "

    const-string/jumbo v9, "\u627e\u5230\u6700\u65b0"

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 535
    const-string v12, "_id"

    const-string v13, "_display_name"

    const-string v14, "date_modified"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v2

    .line 541
    const-string v3, "date_modified <= ?"

    .line 542
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 544
    const-string v5, "date_modified DESC"

    .line 546
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 553
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 555
    const-string v0, "MediaQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u6587\u4ef6, ID: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    mul-long v21, v12, v10

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 568
    new-instance v15, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    const/16 v19, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/16 v19, 0x1

    :goto_0
    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v17, v3

    invoke-direct/range {v15 .. v23}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;JZLandroid/net/Uri;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 570
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v15

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_2

    .line 546
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    :cond_3
    if-eqz v2, :cond_4

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u67e5\u8be2\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaStore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLatestMedia()Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;
    .locals 7

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestMedia(Z)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v0

    const/4 v1, 0x1

    .line 624
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestMedia(Z)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 627
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "only found images"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 632
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_5

    .line 633
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "only found videos"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 637
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_2

    .line 638
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "found images and videos"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "latest image address: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "latest video address: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    iget-wide v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    iget-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    .line 643
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v1, :cond_3

    .line 644
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "latest image is newer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    .line 648
    :cond_4
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_5

    .line 649
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "latest video is newer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLatestMedia(Z)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;
    .locals 14

    .line 591
    const-string v7, "date_added DESC,_id DESC"

    .line 0
    const-string v0, "found most recent uri for "

    .line 592
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    return-object v8

    :cond_0
    if-eqz p1, :cond_1

    .line 595
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v9, v2

    .line 596
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 597
    const-string v2, "date_added"

    const-string v4, "_id"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_2

    new-array v5, v10, [Ljava/lang/String;

    aput-object v4, v5, v12

    aput-object v2, v5, v11

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v12

    aput-object v2, v5, v11

    const-string v2, "orientation"

    aput-object v2, v5, v10

    :goto_1
    move-object v4, v5

    if-eqz p1, :cond_3

    .line 598
    const-string v2, ""

    goto :goto_2

    :cond_3
    const-string v2, "mime_type=\'image/jpeg\'"

    :goto_2
    move-object v5, v2

    .line 603
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_7

    .line 604
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 605
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 606
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    if-eqz p1, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    .line 607
    :cond_4
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v8, v12

    .line 608
    :goto_3
    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 609
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v4, :cond_6

    .line 610
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string/jumbo v0, "video"

    goto :goto_4

    :cond_5
    const-string v0, "images"

    :goto_4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_6
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;JZLandroid/net/Uri;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v13

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v13, :cond_8

    .line 616
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v8

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 618
    :cond_9
    throw v0
.end method

.method private initData()V
    .locals 9

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 140
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "standard max memory = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "large max memory = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    const/16 v5, 0x80

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    .line 146
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_auto_stabilise:Z

    .line 148
    :cond_1
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "supports_auto_stabilise? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_auto_stabilise:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    const/16 v4, 0x200

    if-lt v3, v4, :cond_3

    .line 154
    iput-boolean v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_force_video_4k:Z

    .line 156
    :cond_3
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_4

    .line 157
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "supports_force_video_4k? "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_force_video_4k:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 162
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 163
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 164
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_5

    .line 165
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "found accelerometer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorAccelerometer:Landroid/hardware/Sensor;

    goto :goto_0

    .line 169
    :cond_6
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_7

    .line 170
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "no support for accelerometer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 173
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_8

    .line 174
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v5, "found magnetic sensor"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_8
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorMagnetic:Landroid/hardware/Sensor;

    goto :goto_1

    .line 178
    :cond_9
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_a

    .line 179
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "no support for magnetic sensor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_a
    :goto_1
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 185
    const-string v3, "done_first_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 186
    iget-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->is_test:Z

    if-nez v4, :cond_b

    .line 187
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 188
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    :cond_b
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_c

    .line 193
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "time for Activity startup: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    const-string v1, "jringDEVICE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "jringCLOSE_CAMERA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 202
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    if-eqz v0, :cond_d

    .line 203
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setPhontMode(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return-void

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 792
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 794
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 795
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public broadcastFile(Ljava/io/File;)V
    .locals 2

    .line 857
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 866
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public clearSeekBar()V
    .locals 2

    const v0, 0x7f0a03b4

    .line 350
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 351
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public clickedExposure(Landroid/view/View;)V
    .locals 2

    .line 364
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedExposure"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const p1, 0x7f0a03b4

    .line 366
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 367
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supportsExposures()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getMinimumExposure()I

    move-result v0

    .line 371
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->setSeekBarExposure()V

    .line 372
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;I)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->clearSeekBar()V

    :cond_2
    return-void
.end method

.method public clickedExposureLock(Landroid/view/View;)V
    .locals 1

    .line 409
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedExposureLock"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->toggleExposureLock()V

    return-void
.end method

.method public clickedFlash(Landroid/view/View;)V
    .locals 1

    .line 338
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedFlash"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cycleFlash()V

    return-void
.end method

.method public clickedFocusMode(Landroid/view/View;)V
    .locals 1

    .line 344
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedFocusMode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->cycleFocusMode()V

    return-void
.end method

.method public clickedGallery(Landroid/view/View;)V
    .locals 6

    .line 730
    const-string p1, "android.intent.action.VIEW"

    .line 0
    const-string/jumbo v0, "uri no longer exists (1): "

    .line 730
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v2, "clickedGallery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestMedia2()Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 743
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found most recent uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 747
    const-string v4, "r"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_3

    .line 749
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_4

    .line 750
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 753
    :cond_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 756
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uri no longer exists (2): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move-object v1, v2

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 762
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 764
    :cond_6
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->is_test:Z

    if-nez v0, :cond_a

    .line 766
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_7

    .line 767
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launch uri:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_7
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 772
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 775
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_8

    .line 776
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "REVIEW_ACTION intent didn\'t work, try ACTION_VIEW"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 780
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 781
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 784
    :cond_9
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const-string v0, "No Gallery app available"

    invoke-virtual {p1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public clickedSettings(Landroid/view/View;)V
    .locals 7

    .line 415
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedSettings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCameraId()I

    move-result v0

    const-string v1, "cameraId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string/jumbo v0, "supports_auto_stabilise"

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_auto_stabilise:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    const-string/jumbo v0, "supports_force_video_4k"

    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_force_video_4k:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->supportsFaceDetection()Z

    move-result v0

    const-string/jumbo v1, "supports_face_detection"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    const-string v1, "color_effects"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "scene_modes"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 427
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedWhiteBalances()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "white_balances"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedISOs()Ljava/util/List;

    move-result-object v0

    const-string v1, "isos"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getISOKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parameters_string"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 441
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    aput v6, v2, v4

    .line 442
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 445
    :cond_2
    const-string v0, "preview_widths"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 446
    const-string v0, "preview_heights"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 455
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    aput v6, v2, v4

    .line 456
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 459
    :cond_4
    const-string/jumbo v0, "resolution_widths"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 460
    const-string/jumbo v0, "resolution_heights"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedVideoQuality()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 465
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 469
    aput-object v5, v2, v4

    .line 470
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v6, v5}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCamcorderProfileDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 473
    :cond_6
    const-string/jumbo v0, "video_quality"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v0, "video_quality_string"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :cond_7
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 479
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 480
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 483
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    aput v5, v2, v1

    .line 484
    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 487
    :cond_8
    const-string/jumbo v0, "video_widths"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 488
    const-string/jumbo v0, "video_heights"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 491
    :cond_9
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedFlashValues()Ljava/util/List;

    move-result-object v0

    const-string v1, "flash_values"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 492
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getSupportedFocusValues()Ljava/util/List;

    move-result-object v0

    const-string v1, "focus_values"

    invoke-static {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->putIntentExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public clickedShare(Landroid/view/View;)V
    .locals 1

    .line 804
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 805
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedShare"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->clickedShare()V

    return-void
.end method

.method public clickedSwitchCamera(Landroid/view/View;)V
    .locals 1

    .line 326
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedSwitchCamera"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switchCamera()V

    return-void
.end method

.method public clickedSwitchVideo(Landroid/view/View;)V
    .locals 1

    .line 332
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedSwitchVideo"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->switchVideo(ZZ)V

    return-void
.end method

.method public clickedTakePhoto(Landroid/view/View;)V
    .locals 1

    .line 320
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedTakePhoto"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->takePicture()V

    return-void
.end method

.method public clickedTrash(Landroid/view/View;)V
    .locals 3

    .line 810
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 811
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "clickedTrash"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->clickedTrash()V

    .line 815
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 816
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getImageFolder()Ljava/io/File;
    .locals 3

    .line 883
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 884
    const-string v1, "preference_save_location"

    const-string v2, "OpenCamera"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 888
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 895
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLatestMedia2()Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;
    .locals 7

    .line 516
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image"

    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestFromMediaType(Landroid/net/Uri;Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v0

    .line 518
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "video"

    invoke-direct {p0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestFromMediaType(Landroid/net/Uri;Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image \u4fee\u6539\u65f6\u95f4: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaDebug"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Video \u4fee\u6539\u65f6\u95f4: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-wide v2, v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    iget-wide v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->date:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getOutputMediaFile(I)Ljava/io/File;
    .locals 9

    .line 910
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getImageFolder()Ljava/io/File;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 916
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_0

    .line 918
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v0, "failed to create directory"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    .line 921
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->broadcastFile(Ljava/io/File;)V

    .line 925
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 928
    const-string v4, ""

    move-object v6, v2

    const/4 v5, 0x1

    :goto_0
    const/16 v7, 0x64

    if-gt v5, v7, :cond_6

    if-ne p1, v3, :cond_3

    .line 930
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "IMG_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 934
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "VID_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 943
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    .line 947
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz p1, :cond_7

    .line 948
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOutputMediaFile returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 98
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0048

    .line 99
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 102
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    const-string v1, "notifyBle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    .line 106
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->initData()V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    .line 110
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIcon()V

    .line 111
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->clearSeekBar()V

    .line 113
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    .line 119
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setForce_video(Z)V

    const p1, 0x7f0a0336

    .line 128
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 86
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mNotifyBle:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setPhontMode(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 307
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 311
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->magneticListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 313
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 250
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorAccelerometer:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 269
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->magneticListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->mSensorMagnetic:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 272
    const-string v1, "preference_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->locationListener:Landroid/location/LocationListener;

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIcon()V

    .line 302
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 847
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 850
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setSeekBarExposure()V
    .locals 3

    const v0, 0x7f0a03b4

    .line 357
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 358
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getMinimumExposure()I

    move-result v1

    .line 359
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getMaximumExposure()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 360
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getCurrentExposure()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public supportsAutoStabilise()Z
    .locals 1

    .line 954
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_auto_stabilise:Z

    return v0
.end method

.method public supportsForceVideo4K()Z
    .locals 1

    .line 958
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supports_force_video_4k:Z

    return v0
.end method

.method public takePicture()V
    .locals 2

    .line 826
    :try_start_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->preview:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePicturePressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateGalleryIcon()V
    .locals 11

    .line 681
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGalleryIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 685
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getLatestMedia2()Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 688
    iget-boolean v4, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->video:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-wide v6, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->id:J

    invoke-static {v4, v6, v7, v5, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-wide v6, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->id:J

    invoke-static {v4, v6, v7, v5, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 695
    iget v3, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->orientation:I

    if-eqz v3, :cond_3

    .line 696
    iget-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v3, :cond_2

    .line 697
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "thumbnail size is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_2
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 699
    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$Media;->orientation:I

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v9, v2, v3, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 701
    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v4, :cond_3

    .line 704
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    nop

    .line 709
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_3

    .line 710
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string v3, "failed to rotate thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v4

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 716
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_5

    .line 717
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "set gallery button to thumbnail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_5
    invoke-virtual {p0, v3}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIconToBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 721
    :cond_6
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_7

    .line 722
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set gallery button to blank"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_7
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIconToBlank()V

    .line 725
    :goto_2
    iget-boolean v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v2, :cond_8

    .line 726
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "time to update gallery icon: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public updateGalleryIconToBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 673
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGalleryIconToBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0a019c

    .line 675
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 676
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 677
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->gallery_bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateGalleryIconToBlank()V
    .locals 6

    .line 657
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->LOG:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGalleryIconToBlank"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0a019c

    .line 659
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 660
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v1

    .line 661
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v2

    .line 662
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingRight()I

    move-result v3

    .line 663
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v4

    const/4 v5, 0x0

    .line 665
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 668
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 669
    iput-object v5, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->gallery_bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
