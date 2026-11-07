.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureWhenFocused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3347
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3350
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3351
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    const-string v3, "Preview"

    if-eqz v0, :cond_0

    .line 3352
    const-string v0, "onPictureTaken"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_0
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    .line 3357
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3358
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "save to: "

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 3359
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3360
    const-string v0, "from image capture intent"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_1
    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3364
    const-string v9, "output"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3365
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3366
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 3372
    :goto_1
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3373
    const-string v11, "preference_auto_stabilise"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 3374
    const-string v12, "bitmap size: "

    const-string v13, "decoded bitmap size "

    const-string v15, ", "

    if-eqz v11, :cond_1f

    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$800(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->supportsAutoStabilise()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 3377
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iget-boolean v11, v11, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_have_angle:Z

    if-eqz v11, :cond_5

    .line 3378
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/16 v16, 0x2

    iget v14, v11, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_angle:F

    float-to-double v6, v14

    invoke-static {v11, v6, v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$902(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D

    goto :goto_2

    :cond_5
    const/16 v16, 0x2

    .line 3379
    :goto_2
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v6

    const-wide v17, -0x3fa9800000000000L    # -90.0

    move v14, v9

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v19, v6, v17

    if-gez v19, :cond_6

    .line 3380
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6, v8, v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$918(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D

    move v9, v14

    goto :goto_2

    .line 3381
    :cond_6
    :goto_3
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v6

    const-wide v17, 0x4056800000000000L    # 90.0

    cmpl-double v19, v6, v17

    if-lez v19, :cond_7

    .line 3382
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6, v8, v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$926(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D

    goto :goto_3

    .line 3383
    :cond_7
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3384
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "auto stabilising... angle: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_8
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x1

    .line 3387
    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3388
    array-length v7, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 3389
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 3390
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3391
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3392
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "level_angle: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-object/from16 v24, v12

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v24

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v11, v6, v7

    mul-int/lit8 v11, v11, 0x4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move-object v9, v12

    .line 3403
    :goto_4
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iget-boolean v8, v8, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_low_memory:Z

    if-eqz v8, :cond_a

    .line 3404
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const-wide v11, 0x4046800000000000L    # 45.0

    invoke-static {v8, v11, v12}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$902(Lcom/jaga/ibraceletplus/jyring/camera/Preview;D)D

    .line 3406
    :cond_a
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 3407
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    int-to-double v11, v6

    .line 3409
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v11

    move-wide/from16 v21, v11

    int-to-double v11, v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v11

    move-wide/from16 v28, v11

    add-double v11, v19, v26

    .line 3410
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v28

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    add-double v4, v19, v21

    move/from16 v28, v14

    mul-int v14, v6, v7

    int-to-float v14, v14

    move-object/from16 v30, v9

    move-object/from16 v29, v10

    mul-double v9, v11, v4

    double-to-float v9, v9

    div-float v10, v14, v9

    move-object/from16 v22, v8

    move/from16 v19, v9

    float-to-double v8, v10

    .line 3414
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 3415
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    iget-boolean v9, v9, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_low_memory:Z

    if-eqz v9, :cond_c

    .line 3416
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3417
    const-string v9, "TESTING LOW MEMORY"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    .line 3421
    :cond_c
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v9

    const-string v10, " , h1 = "

    move/from16 v20, v9

    const-string v9, " , h0 = "

    move-object/from16 v31, v13

    if-eqz v20, :cond_d

    .line 3422
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "w0 = "

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "w1 = "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "scale = sqrt "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v19

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v2, v22

    .line 3426
    invoke-virtual {v2, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    float-to-double v13, v8

    mul-double v11, v11, v13

    mul-double v4, v4, v13

    int-to-float v13, v6

    mul-float v13, v13, v8

    float-to-int v13, v13

    int-to-float v14, v7

    mul-float v14, v14, v8

    float-to-int v8, v14

    .line 3431
    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v14}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 3432
    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v20, v6

    const-string v6, "after scaling: w0 = "

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "after scaling: w1 = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    move/from16 v20, v6

    .line 3435
    :goto_5
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 3436
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1000(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v9

    invoke-static {v9, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 3437
    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_f

    move-wide v9, v11

    .line 3438
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v6, v11

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_6

    :cond_f
    move-wide v9, v11

    .line 3441
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$900(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)D

    move-result-wide v11

    double-to-float v6, v11

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_6
    const/16 v19, 0x0

    const/16 v23, 0x1

    const/16 v18, 0x0

    move-object/from16 v22, v2

    move/from16 v21, v7

    .line 3443
    invoke-static/range {v17 .. v23}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v6, v17

    if-eq v2, v6, :cond_10

    .line 3446
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :cond_10
    move-object v2, v6

    .line 3449
    :goto_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3450
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3451
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rotated and scaled bitmap size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rotated and scaled bitmap size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v7, v7, v11

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_11
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 3455
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double v17, v4, v9

    add-double v17, v17, v6

    div-double v19, v9, v4

    add-double v19, v19, v6

    const-wide/16 v21, 0x0

    cmpl-double v23, v17, v21

    if-eqz v23, :cond_1e

    const-wide v23, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpg-double v25, v17, v23

    if-gez v25, :cond_12

    goto/16 :goto_d

    :cond_12
    cmpl-double v25, v19, v21

    if-eqz v25, :cond_1d

    cmpg-double v21, v19, v23

    if-gez v21, :cond_13

    goto/16 :goto_c

    :cond_13
    move-object/from16 v21, v15

    int-to-double v14, v8

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v23

    mul-double v14, v14, v11

    mul-double v14, v14, v6

    add-double/2addr v14, v4

    mul-double v32, v9, v6

    sub-double v14, v14, v32

    div-double v14, v14, v17

    double-to-int v8, v14

    int-to-double v14, v8

    mul-double v14, v14, v4

    div-double/2addr v14, v9

    double-to-int v14, v14

    move-wide/from16 v17, v4

    int-to-double v4, v13

    mul-double v4, v4, v23

    mul-double v4, v4, v11

    mul-double v4, v4, v6

    add-double v11, v9, v4

    mul-double v4, v17, v6

    sub-double/2addr v11, v4

    div-double v11, v11, v19

    double-to-int v4, v11

    int-to-double v5, v4

    mul-double v5, v5, v9

    div-double v5, v5, v17

    double-to-int v5, v5

    .line 3471
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 3473
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "w2 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , h2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alt_w2 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , alt_h2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-ge v5, v8, :cond_16

    .line 3477
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 3478
    const-string v6, "chose alt!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v14, v4

    move v11, v5

    goto :goto_8

    :cond_16
    move v11, v8

    :goto_8
    if-gtz v11, :cond_17

    const/4 v4, 0x1

    const/16 v18, 0x1

    goto :goto_a

    .line 3485
    :cond_17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v11, v4, :cond_18

    .line 3486
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v11, v4, -0x1

    goto :goto_9

    :cond_18
    const/16 v18, 0x1

    :goto_9
    move v4, v11

    :goto_a
    if-gtz v14, :cond_19

    const/4 v14, 0x1

    goto :goto_b

    .line 3489
    :cond_19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v14, v5, :cond_1a

    .line 3490
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v14, v5

    .line 3491
    :cond_1a
    :goto_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    .line 3492
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    .line 3493
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 3494
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x0 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , y0 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :cond_1b
    invoke-static {v2, v5, v6, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v4, v2, :cond_1c

    .line 3498
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v4

    .line 3501
    :cond_1c
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_e

    :cond_1d
    :goto_c
    move-object/from16 v21, v15

    .line 3463
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3464
    const-string/jumbo v4, "zero alt denominator?!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1e
    :goto_d
    move-object/from16 v21, v15

    .line 3459
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3460
    const-string/jumbo v4, "zero denominator?!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1f
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v21, v15

    const/16 v16, 0x2

    const/4 v2, 0x0

    :cond_20
    :goto_e
    const/4 v4, -0x1

    .line 3510
    const-string v5, "Failed to save photo"

    const-string v6, "Orientation"

    if-eqz v28, :cond_2a

    if-eqz v0, :cond_21

    .line 3514
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, p1

    move-object/from16 v8, v26

    :goto_f
    const/4 v9, 0x0

    :goto_10
    const/4 v10, 0x0

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    :goto_11
    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v8, v26

    goto/16 :goto_3d

    :catch_1
    move-exception v0

    :goto_12
    move-object v4, v6

    move-object/from16 v8, v26

    goto/16 :goto_18

    .line 3520
    :cond_21
    :try_start_1
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v0, :cond_22

    .line 3521
    :try_start_2
    const-string/jumbo v0, "sent to intent via parcel"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_22
    if-nez v2, :cond_28

    .line 3523
    :try_start_3
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v0, :cond_23

    .line 3524
    :try_start_4
    const-string v0, "create bitmap"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3525
    :cond_23
    :try_start_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x1

    .line 3527
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v7, p1

    .line 3528
    :try_start_6
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v32
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3529
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3530
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3531
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v8
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v8, :cond_24

    .line 3532
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v31

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v30

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v10, v0, v2

    mul-int/lit8 v10, v10, 0x4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    move-object/from16 v2, v32

    goto/16 :goto_3e

    :catch_3
    move-exception v0

    move-object v4, v6

    move-object/from16 v8, v26

    move-object/from16 v2, v32

    goto/16 :goto_18

    :cond_24
    move-object/from16 v9, v21

    :goto_13
    const/16 v8, 0x80

    if-le v0, v8, :cond_27

    const/high16 v8, 0x43000000    # 128.0f

    int-to-float v10, v0

    div-float/2addr v8, v10

    .line 3538
    :try_start_9
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v10
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    if-eqz v10, :cond_25

    .line 3539
    :try_start_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scale to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 3540
    :cond_25
    :try_start_b
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 3541
    invoke-virtual {v10, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v34, 0x0

    const/16 v38, 0x1

    const/16 v33, 0x0

    move/from16 v35, v0

    move/from16 v36, v2

    move-object/from16 v37, v10

    .line 3542
    invoke-static/range {v32 .. v38}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v2, v32

    if-eq v0, v2, :cond_26

    .line 3545
    :try_start_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    .line 3548
    :cond_26
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scaled bitmap size "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scaled bitmap size: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_14

    :cond_27
    move-object/from16 v2, v32

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_12

    :cond_28
    move-object/from16 v7, p1

    .line 3554
    :cond_29
    :goto_14
    :try_start_d
    new-instance v0, Landroid/content/Intent;

    const-string v8, "inline-data"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move-object/from16 v8, v26

    :try_start_e
    invoke-virtual {v8, v4, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 3555
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->finish()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_35

    const/4 v0, 0x0

    goto/16 :goto_f

    :catch_8
    move-exception v0

    goto :goto_17

    :catch_9
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_16

    :catch_b
    move-exception v0

    move-object/from16 v7, p1

    :goto_15
    move-object/from16 v8, v26

    goto/16 :goto_3c

    :catch_c
    move-exception v0

    move-object/from16 v7, p1

    :goto_16
    move-object/from16 v8, v26

    :goto_17
    move-object v4, v6

    :goto_18
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_19
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1a
    move-object v6, v5

    move-object/from16 v5, v29

    goto/16 :goto_41

    :cond_2a
    move-object/from16 v7, p1

    move-object/from16 v8, v26

    const/4 v11, 0x1

    .line 3559
    :try_start_f
    invoke-virtual {v8, v11}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v9
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_36
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_35

    if-nez v9, :cond_2b

    .line 3561
    :try_start_10
    const-string v0, "Couldn\'t create media image file; check storage permissions?"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const-string v10, "Failed to save image file"

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    const/4 v0, 0x0

    goto/16 :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v22, v9

    move-object/from16 v5, v29

    goto/16 :goto_3b

    :catch_e
    move-exception v0

    move-object v4, v6

    const/4 v7, 0x0

    goto :goto_19

    .line 3565
    :cond_2b
    :try_start_11
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_34
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_33

    .line 3566
    :try_start_12
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_31

    if-eqz v0, :cond_2c

    .line 3567
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 3568
    :cond_2c
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_32
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_31

    :goto_1b
    if-eqz v0, :cond_4d

    if-eqz v2, :cond_2d

    .line 3574
    :try_start_15
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v12

    .line 3575
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v13, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_1c

    :catch_f
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    move-object/from16 v5, v29

    goto/16 :goto_39

    :catch_10
    move-exception v0

    move-object v4, v6

    move-object v12, v10

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_1a

    .line 3578
    :cond_2d
    :try_start_16
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 3580
    :goto_1c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3581
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_30
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2f

    if-eqz v0, :cond_2e

    .line 3582
    :try_start_17
    const-string v0, "onPictureTaken saved photo"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    :cond_2e
    if-eqz v9, :cond_4b

    if-eqz v2, :cond_47

    .line 3588
    :try_start_18
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_23

    if-eqz v0, :cond_2f

    .line 3589
    :try_start_19
    const-string/jumbo v0, "write temp file to record EXIF data"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    goto :goto_1d

    :catch_11
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    goto/16 :goto_28

    :catch_12
    move-exception v0

    move-object v4, v6

    move-object v12, v10

    const/4 v7, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1a

    .line 3590
    :cond_2f
    :goto_1d
    :try_start_1a
    const-string v0, "opencamera_exif"

    const-string v12, ""

    invoke-static {v0, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3591
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3592
    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V

    .line 3593
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 3594
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v12
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_23

    if-eqz v12, :cond_30

    .line 3595
    :try_start_1b
    const-string v12, "read back EXIF data"

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 3596
    :cond_30
    :try_start_1c
    new-instance v12, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3597
    const-string v13, "FNumber"

    invoke-virtual {v12, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3598
    const-string v14, "DateTime"

    invoke-virtual {v12, v14}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3599
    const-string v15, "ExposureTime"

    invoke-virtual {v12, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3600
    const-string v11, "Flash"

    invoke-virtual {v12, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3601
    const-string v4, "FocalLength"

    invoke-virtual {v12, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_23

    move-object/from16 v19, v2

    .line 3602
    :try_start_1d
    const-string v2, "GPSAltitude"

    invoke-virtual {v12, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3603
    const-string v7, "GPSAltitudeRef"

    invoke-virtual {v12, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_21

    move-object/from16 v20, v5

    .line 3604
    :try_start_1e
    const-string v5, "GPSDateStamp"

    invoke-virtual {v12, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_20
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1f

    move-object/from16 v21, v10

    .line 3605
    :try_start_1f
    const-string v10, "GPSLatitude"

    invoke-virtual {v12, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1d

    move-object/from16 v26, v8

    .line 3606
    :try_start_20
    const-string v8, "GPSLatitudeRef"

    invoke-virtual {v12, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_1c
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1b

    move-object/from16 v22, v9

    .line 3607
    :try_start_21
    const-string v9, "GPSLongitude"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v9

    .line 3608
    const-string v9, "GPSLongitudeRef"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    .line 3609
    const-string v9, "GPSProcessingMethod"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v9

    .line 3610
    const-string v9, "GPSTimeStamp"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v9

    .line 3612
    const-string v9, "ISOSpeedRatings"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v30, v9

    .line 3613
    const-string v9, "Make"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v31, v9

    .line 3614
    const-string v9, "Model"

    invoke-virtual {v12, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v32, v9

    .line 3615
    invoke-virtual {v12, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_1a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_19

    move-object/from16 v33, v6

    .line 3617
    :try_start_22
    const-string v6, "WhiteBalance"

    invoke-virtual {v12, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3619
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v12
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_18
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    if-nez v12, :cond_31

    .line 3620
    :try_start_23
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 3621
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v6

    const-string v6, "failed to delete temp "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_14
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    move-object/from16 v2, v19

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    move-object/from16 v4, v33

    goto/16 :goto_35

    :catch_14
    move-exception v0

    move-object v7, v9

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    move-object/from16 v4, v33

    goto/16 :goto_32

    :cond_31
    move-object/from16 v34, v6

    .line 3623
    :goto_1e
    :try_start_24
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_18
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_17

    if-eqz v0, :cond_32

    .line 3624
    :try_start_25
    const-string v0, "now write new EXIF data"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_14
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_13

    .line 3625
    :cond_32
    :try_start_26
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_18
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_17

    if-eqz v13, :cond_33

    .line 3627
    :try_start_27
    const-string v6, "FNumber"

    invoke-virtual {v0, v6, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    if-eqz v14, :cond_34

    .line 3629
    const-string v6, "DateTime"

    invoke-virtual {v0, v6, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-eqz v15, :cond_35

    .line 3631
    const-string v6, "ExposureTime"

    invoke-virtual {v0, v6, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-eqz v11, :cond_36

    .line 3633
    const-string v6, "Flash"

    invoke-virtual {v0, v6, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    if-eqz v4, :cond_37

    .line 3635
    const-string v6, "FocalLength"

    invoke-virtual {v0, v6, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    if-eqz v2, :cond_38

    .line 3637
    const-string v4, "GPSAltitude"

    invoke-virtual {v0, v4, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    if-eqz v7, :cond_39

    .line 3639
    const-string v2, "GPSAltitudeRef"

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-eqz v5, :cond_3a

    .line 3641
    const-string v2, "GPSDateStamp"

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    if-eqz v10, :cond_3b

    .line 3643
    const-string v2, "GPSLatitude"

    invoke-virtual {v0, v2, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    if-eqz v8, :cond_3c

    .line 3645
    const-string v2, "GPSLatitudeRef"

    invoke-virtual {v0, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    if-eqz v23, :cond_3d

    .line 3647
    const-string v2, "GPSLongitude"

    move-object/from16 v4, v23

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    if-eqz v24, :cond_3e

    .line 3649
    const-string v2, "GPSLongitudeRef"

    move-object/from16 v4, v24

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    if-eqz v25, :cond_3f

    .line 3651
    const-string v2, "GPSProcessingMethod"

    move-object/from16 v4, v25

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    if-eqz v27, :cond_40

    .line 3653
    const-string v2, "GPSTimeStamp"

    move-object/from16 v4, v27

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    if-eqz v30, :cond_41

    .line 3656
    const-string v2, "ISOSpeedRatings"

    move-object/from16 v4, v30

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    if-eqz v31, :cond_42

    .line 3658
    const-string v2, "Make"

    move-object/from16 v4, v31

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    if-eqz v32, :cond_43

    .line 3660
    const-string v2, "Model"

    move-object/from16 v4, v32

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_14
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_13

    :cond_43
    if-eqz v9, :cond_44

    move-object/from16 v4, v33

    .line 3662
    :try_start_28
    invoke-virtual {v0, v4, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_44
    move-object/from16 v4, v33

    :goto_1f
    if-eqz v34, :cond_45

    .line 3664
    const-string v2, "WhiteBalance"

    move-object/from16 v5, v34

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    :cond_45
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/media/ExifInterface;)V

    .line 3666
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 3667
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3668
    const-string v0, "now saved EXIF data"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_16
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_15

    :cond_46
    move-object/from16 v5, v29

    goto/16 :goto_2f

    :catch_15
    move-exception v0

    goto :goto_20

    :catch_16
    move-exception v0

    goto :goto_21

    :catch_17
    move-exception v0

    move-object/from16 v4, v33

    :goto_20
    move-object/from16 v2, v19

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    goto/16 :goto_35

    :catch_18
    move-exception v0

    move-object/from16 v4, v33

    :goto_21
    move-object v7, v9

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    goto/16 :goto_32

    :catch_19
    move-exception v0

    move-object v4, v6

    goto :goto_22

    :catch_1a
    move-exception v0

    move-object v4, v6

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    goto :goto_23

    :catch_1b
    move-exception v0

    move-object v4, v6

    move-object/from16 v22, v9

    :goto_22
    move-object/from16 v2, v19

    move-object/from16 v8, v26

    goto :goto_29

    :catch_1c
    move-exception v0

    move-object v4, v6

    move-object/from16 v22, v9

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    :goto_23
    move-object/from16 v8, v26

    goto/16 :goto_2b

    :catch_1d
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    goto :goto_25

    :catch_1e
    move-exception v0

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    goto :goto_27

    :catch_1f
    move-exception v0

    goto :goto_24

    :catch_20
    move-exception v0

    goto :goto_26

    :catch_21
    move-exception v0

    move-object/from16 v20, v5

    :goto_24
    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    :goto_25
    move-object/from16 v2, v19

    goto :goto_29

    :catch_22
    move-exception v0

    move-object/from16 v20, v5

    :goto_26
    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    :goto_27
    move-object/from16 v2, v19

    goto :goto_2a

    :catch_23
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v26, v8

    :goto_28
    move-object/from16 v22, v9

    move-object/from16 v21, v10

    :goto_29
    move-object/from16 v5, v29

    goto/16 :goto_30

    :catch_24
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    :goto_2a
    move-object/from16 v6, v20

    move-object/from16 v12, v21

    :goto_2b
    move-object/from16 v5, v29

    goto/16 :goto_31

    :cond_47
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v26, v8

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    .line 3670
    :try_start_29
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1300(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2b

    if-eqz v0, :cond_49

    :try_start_2a
    const-string v0, "preference_location"
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_28
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_27

    move-object/from16 v5, v29

    const/4 v8, 0x0

    :try_start_2b
    invoke-interface {v5, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3671
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3672
    const-string v0, "add GPS direction exif info"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3674
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3675
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/media/ExifInterface;)V

    .line 3676
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 3677
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done adding GPS direction exif info, time taken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_26
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_25

    goto :goto_2e

    :catch_25
    move-exception v0

    goto :goto_2c

    :catch_26
    move-exception v0

    goto :goto_2d

    :catch_27
    move-exception v0

    move-object/from16 v5, v29

    :goto_2c
    move-object/from16 v2, v19

    move-object/from16 v8, v26

    goto :goto_30

    :catch_28
    move-exception v0

    move-object/from16 v5, v29

    :goto_2d
    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    move-object/from16 v8, v26

    goto :goto_31

    :cond_49
    move-object/from16 v5, v29

    :cond_4a
    :goto_2e
    const/4 v9, 0x0

    :goto_2f
    move-object/from16 v2, v22

    move-object/from16 v8, v26

    .line 3682
    :try_start_2c
    invoke-virtual {v8, v2}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->broadcastFile(Ljava/io/File;)V

    .line 3683
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_2a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_29

    move-object/from16 v10, v21

    :try_start_2d
    iput-object v10, v0, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->test_last_saved_image:Ljava/lang/String;

    goto :goto_33

    :catch_29
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v22, v2

    goto :goto_34

    :catch_2a
    move-exception v0

    move-object/from16 v10, v21

    goto :goto_36

    :catch_2b
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v2, v22

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    move-object/from16 v2, v19

    :goto_30
    const/4 v9, 0x0

    goto :goto_35

    :catch_2c
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v2, v22

    move-object/from16 v8, v26

    move-object/from16 v5, v29

    move-object v9, v2

    move-object v12, v10

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    :goto_31
    const/4 v7, 0x0

    :goto_32
    const/4 v11, 0x1

    goto/16 :goto_41

    :cond_4b
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object v2, v9

    move-object/from16 v5, v29

    const/4 v9, 0x0

    :goto_33
    if-eqz v28, :cond_4c

    const/4 v0, -0x1

    .line 3686
    invoke-virtual {v8, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->setResult(I)V

    .line 3687
    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->finish()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_37

    :catch_2d
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v21, v10

    :goto_34
    move-object/from16 v2, v19

    :goto_35
    const/4 v11, 0x1

    goto/16 :goto_3f

    :catch_2e
    move-exception v0

    :goto_36
    move-object v7, v9

    move-object v12, v10

    move-object/from16 v6, v20

    const/4 v11, 0x1

    move-object v9, v2

    move-object/from16 v2, v19

    goto/16 :goto_41

    :cond_4c
    :goto_37
    move-object v6, v9

    const/4 v0, 0x1

    goto :goto_38

    :catch_2f
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object v2, v9

    move-object/from16 v5, v29

    move-object/from16 v22, v2

    move-object/from16 v21, v10

    move-object/from16 v2, v19

    goto :goto_39

    :catch_30
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object v4, v6

    move-object v2, v9

    move-object/from16 v5, v29

    move-object v12, v10

    move-object/from16 v2, v19

    goto :goto_3a

    :cond_4d
    move-object/from16 v19, v2

    move-object v4, v6

    move-object v2, v9

    move-object/from16 v5, v29

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_38
    move-object v9, v2

    move-object/from16 v2, v19

    goto/16 :goto_42

    :catch_31
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v5, v29

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    :goto_39
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_3f

    :catch_32
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v5, v29

    move-object v12, v10

    :goto_3a
    move-object/from16 v6, v20

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_41

    :catch_33
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v5, v29

    move-object/from16 v22, v9

    :goto_3b
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    goto :goto_3f

    :catch_34
    move-exception v0

    move-object/from16 v20, v5

    move-object v4, v6

    move-object/from16 v5, v29

    move-object/from16 v6, v20

    const/4 v7, 0x0

    goto :goto_40

    :catch_35
    move-exception v0

    :goto_3c
    move-object/from16 v20, v5

    move-object v4, v6

    :goto_3d
    move-object/from16 v5, v29

    :goto_3e
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 3698
    :goto_3f
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 3699
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "I/O error writing file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_4e
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 3701
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-object/from16 v6, v20

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    move-object v6, v9

    move v0, v11

    move-object/from16 v10, v21

    move-object/from16 v9, v22

    goto :goto_42

    :catch_36
    move-exception v0

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, v29

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_40
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3692
    :goto_41
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 3693
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "File not found: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_4f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 3695
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V

    move-object v6, v7

    move v0, v11

    move-object v10, v12

    .line 3704
    :goto_42
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)Z

    .line 3705
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1502(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)I

    .line 3706
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v7

    if-lez v7, :cond_50

    .line 3709
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    .line 3710
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 3711
    const-string v7, "burst mode photos remaining: onPictureTaken started preview"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 3714
    :cond_50
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1502(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)I

    .line 3715
    const-string v7, "preference_pause_preview"

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 3716
    iget-object v11, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 3717
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "pause_preview? "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-eqz v7, :cond_52

    if-eqz v0, :cond_52

    .line 3719
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v11, 0x1

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1800(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V

    .line 3720
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7, v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1902(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_43

    :cond_52
    const/4 v11, 0x1

    .line 3725
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    .line 3726
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2000(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V

    .line 3727
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 3728
    const-string v7, "onPictureTaken started preview"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_43
    if-eqz v2, :cond_54

    .line 3733
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3737
    :cond_54
    const-string v2, "0"

    if-eqz v0, :cond_65

    if-eqz v9, :cond_65

    .line 3739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3740
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3741
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3742
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v14, v7

    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getWidth()I

    move-result v7

    move-wide/from16 v19, v12

    int-to-double v11, v7

    div-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 3743
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x0

    .line 3744
    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/4 v11, 0x1

    .line 3745
    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3746
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    iput v12, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3747
    const-string v12, "preference_thumbnail_animation"

    invoke-interface {v5, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_55

    .line 3749
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v13, v13, 0x4

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3751
    :cond_55
    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v13}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 3752
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "    picture width   : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "    preview width   : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-virtual {v13}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->getWidth()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "    ratio           : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "    inSampleSize    : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "    current_rotation: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2100(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    :cond_56
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3759
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-object/from16 v13, p1

    array-length v14, v13

    const/4 v15, 0x0

    invoke-static {v13, v15, v14, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2202(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    if-nez v6, :cond_58

    .line 3765
    :try_start_2e
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 3766
    const-string v0, "    read exif orientation"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_57
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3768
    invoke-virtual {v0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3770
    :cond_58
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    exif orientation string: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    :cond_59
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_44

    .line 3777
    :cond_5a
    const-string v0, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v0, 0xb4

    goto :goto_45

    .line 3780
    :cond_5b
    const-string v0, "6"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/16 v0, 0x5a

    goto :goto_45

    .line 3783
    :cond_5c
    const-string v0, "8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/16 v0, 0x10e

    goto :goto_45

    .line 3788
    :cond_5d
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    unsupported exif orientation: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_44
    const/4 v0, 0x0

    .line 3791
    :goto_45
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    exif orientation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :cond_5f
    rem-int/lit16 v0, v0, 0x168
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_37

    goto :goto_46

    :catch_37
    move-exception v0

    .line 3796
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 3797
    const-string v4, "exif orientation ioexception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 3800
    :goto_46
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3801
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    thumbnail orientation: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    if-eqz v0, :cond_62

    .line 3804
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 3805
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v6, v6, v9

    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    invoke-virtual {v4, v0, v6, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3806
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v21

    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    const/16 v27, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v26, v4

    invoke-static/range {v21 .. v27}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3807
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v0, v4, :cond_62

    .line 3808
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 3809
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v4, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2202(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_62
    const/4 v11, 0x1

    .line 3813
    invoke-interface {v5, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3814
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2302(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)Z

    .line 3815
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;J)J

    .line 3817
    :cond_63
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2200(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIconToBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v7, :cond_64

    .line 3820
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 3822
    :cond_64
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "    time to create thumbnail: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_65
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3828
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v0

    if-lez v0, :cond_68

    .line 3829
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1610(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    .line 3831
    const-string v0, "preference_burst_interval"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 3834
    :try_start_2f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_38

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    goto :goto_47

    :catch_38
    move-exception v0

    .line 3837
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$600(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 3838
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to parse timer_value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    :cond_66
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-wide v2, v4

    :goto_47
    cmp-long v0, v2, v4

    if-nez v0, :cond_67

    .line 3846
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$1502(Lcom/jaga/ibraceletplus/jyring/camera/Preview;I)I

    .line 3847
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2000(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Z)V

    .line 3848
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V

    goto :goto_48

    .line 3851
    :cond_67
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/camera/Preview$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    const/4 v11, 0x1

    invoke-virtual {v0, v2, v3, v11}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->takePictureOnTimer(JZ)V

    :cond_68
    :goto_48
    return-void
.end method
