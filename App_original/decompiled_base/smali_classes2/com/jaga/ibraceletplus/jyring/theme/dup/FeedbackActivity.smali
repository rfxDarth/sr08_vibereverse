.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "FeedbackActivity.java"


# static fields
.field private static final QINIU_UPLOAD_URL:Ljava/lang/String; = "https://up-z2.qiniup.com"

.field private static final REQUEST_CODE_PERMISSION:I = 0x64

.field private static final REQUEST_CODE_PHOTO_PICKER:I = 0x3ea

.field private static final REQUEST_CODE_SYSTEM_PICKER:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "FeedbackActivity"


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field cid:Ljava/lang/String;

.field did:Ljava/lang/String;

.field private etAppVersion:Landroid/widget/EditText;

.field private etContact:Landroid/widget/EditText;

.field private etDescription:Landroid/widget/EditText;

.field private etDeviceModel:Landroid/widget/EditText;

.field private ivAddMedia:Landroid/widget/ImageView;

.field private llMediaContainer:Landroid/widget/LinearLayout;

.field private final pickMediaLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectedMediaPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadedUrls:Ljava/util/List;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->cid:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->did:Ljava/lang/String;

    .line 315
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->pickMediaLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadedUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadAllMedia(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->hideLoading()V

    return-void
.end method

.method private getSafePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const-string v0, "media_"

    .line 419
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x1000

    .line 423
    :try_start_2
    new-array v2, v2, [B

    .line 425
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 426
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 420
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleSelectedUri(Landroid/net/Uri;)V
    .locals 6

    const-string/jumbo v0, "temp_image_"

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 335
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1000

    .line 337
    new-array v2, v2, [B

    .line 339
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 340
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "PhotoPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u56fe\u7247\u5df2\u4fdd\u5b58\u81f3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 331
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 348
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private handleSelectedUris(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 408
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getSafePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->refreshMediaPreview()V

    return-void
.end method

.method private handleSubmit()V
    .locals 7

    .line 511
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    const-string/jumbo v0, "\u8bf7\u586b\u5199\u95ee\u9898\u63cf\u8ff0"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->showLoading()V

    .line 520
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadedUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 522
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "/JRing/log/"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 535
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-bluetooth.log"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "/"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x2

    invoke-static {v3, v1, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-ui.log"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 547
    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadAllMedia(I)V

    return-void
.end method

.method private hideLoading()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0a0179

    .line 114
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDeviceModel:Landroid/widget/EditText;

    const v0, 0x7f0a0176

    .line 115
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etAppVersion:Landroid/widget/EditText;

    const v0, 0x7f0a0178

    .line 116
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDescription:Landroid/widget/EditText;

    const v0, 0x7f0a0177

    .line 117
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etContact:Landroid/widget/EditText;

    const v0, 0x7f0a0289

    .line 118
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->llMediaContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a021c

    .line 119
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->ivAddMedia:Landroid/widget/ImageView;

    const v0, 0x7f0a00a2

    .line 120
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->btnSubmit:Landroid/widget/Button;

    const v0, 0x7f0a01d5

    .line 122
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static isSuccess(Ljava/lang/String;)Z
    .locals 3

    .line 671
    const-string v0, "error_code"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 674
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 675
    const-string v0, "200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 680
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private loadData()V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cid"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->cid:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "did"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->did:Ljava/lang/String;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "device_model"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDeviceModel:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u672a\u77e5"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etAppVersion:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 151
    :catch_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etAppVersion:Landroid/widget/EditText;

    const-string v1, "1.0.0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshMediaPreview()V
    .locals 11

    .line 452
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->llMediaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 461
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x78

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v3, 0x12

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x6

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 467
    :goto_0
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 469
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 472
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 473
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 474
    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 475
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 479
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 483
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 486
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v10, 0x800035

    .line 488
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v10, v10, v0

    float-to-int v10, v10

    .line 490
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 491
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 492
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f080113

    .line 495
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x7f08008e

    .line 496
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 497
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 499
    new-instance v9, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;I)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 505
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 506
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->llMediaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selectMedia()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectMediaAction()V

    return-void
.end method

.method private selectMediaAction()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->pickMediaLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 357
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 165
    const-string/jumbo v1, "\u63d0\u4ea4\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private submitFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 620
    const-string v0, ""

    const-string v1, "feedback"

    .line 0
    const-string v2, "feedback request "

    .line 621
    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    const-string v4, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 622
    const-string v4, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v3, v4, v5}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 625
    :try_start_0
    const-string v5, "action_cmd"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string/jumbo v5, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string/jumbo v5, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "Token"

    invoke-virtual {v5, v6, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 630
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 631
    const-string/jumbo v7, "tid"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string/jumbo v5, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v5, "device_name"

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    const-string p1, "device_productcode"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->cid:Ljava/lang/String;

    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string p1, "device_version"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->did:Ljava/lang/String;

    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    invoke-virtual {v6, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string p1, "logurl"

    invoke-virtual {v6, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string p1, "imageurl"

    invoke-virtual {v6, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string p1, "from"

    invoke-virtual {v6, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    const-string p1, "phone_id"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    const-string p1, "phone_name"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneName2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string p1, "phone_os"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneOS2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string p1, "app_version"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string p1, "nation"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getNationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string p1, "body"

    invoke-virtual {v4, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string p1, "feedback url http://api.keeprapid.com:8081/ronaldo-member"

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->saveLog(Ljava/lang/String;)V

    .line 652
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->saveLog(Ljava/lang/String;)V

    .line 654
    new-instance p1, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-direct {p1, p2, p3}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v3, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 656
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 658
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 660
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "submitFeedback : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->saveLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private submitFeedback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private uploadAllMedia(I)V
    .locals 12

    .line 552
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 554
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadedUrls:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->submitFeedback(Ljava/util/List;)V

    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadedUrls:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedbackActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    .line 563
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->uploadAllMedia(I)V

    return-void

    .line 567
    :cond_1
    new-instance v1, Lcom/qiniu/android/storage/UploadManager;

    new-instance v3, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v3}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    .line 586
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;

    const-string v4, "cAz2dKqt2jjnTKLNF-tHtQ21R4devC7p4L4NV5bW"

    const-string v5, "iVfGUnOTgNnrhIa6J7B2fLA8bYR2SOHtKbDhW9zS"

    const-string v6, "applog"

    invoke-direct {v3, v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0x93a80

    const/4 v6, 0x0

    .line 589
    invoke-virtual {v3, v6, v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;->generateUploadToken(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6210\u7684Token: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Qiniu"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;

    invoke-direct {v5, p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;ILjava/lang/String;)V

    new-instance v6, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$2$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(Landroid/net/Uri;)V
    .locals 3

    .line 318
    const-string v0, "PhotoPicker"

    if-eqz p1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u9009\u62e9\u7684URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->handleSelectedUris(Ljava/util/List;)V

    return-void

    .line 326
    :cond_0
    const-string/jumbo p1, "\u7528\u6237\u672a\u9009\u62e9\u4efb\u4f55\u5a92\u4f53"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectMedia()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->handleSubmit()V

    return-void
.end method

.method synthetic lambda$refreshMediaPreview$3$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(ILandroid/view/View;)V
    .locals 0

    .line 500
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectedMediaPaths:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->refreshMediaPreview()V

    return-void
.end method

.method synthetic lambda$submitFeedback$4$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(Ljava/lang/String;)V
    .locals 1

    .line 705
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->hideLoading()V

    .line 706
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->isSuccess(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 707
    const-string/jumbo p1, "\u53cd\u9988\u63d0\u4ea4\u6210\u529f\uff01"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 708
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->finish()V

    return-void

    .line 710
    :cond_0
    const-string/jumbo p1, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$submitFeedback$5$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity()V
    .locals 2

    .line 716
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->hideLoading()V

    const-string/jumbo v0, "\u7f51\u7edc\u9519\u8bef"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$submitFeedback$6$com-jaga-ibraceletplus-jyring-theme-dup-FeedbackActivity(Ljava/util/List;)V
    .locals 8

    .line 0
    const-string/jumbo v0, "response : "

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDeviceModel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 692
    const-string v1, ""

    if-eqz p1, :cond_2

    .line 693
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<br/>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 696
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 697
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v6, v1

    move-object v5, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    :cond_2
    move-object v5, v1

    move-object v6, v5

    .line 700
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->etContact:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, p0

    .line 701
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->submitFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->saveLog(Ljava/lang/String;)V

    .line 704
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 715
    :goto_3
    const-string v0, "FeedbackActivity"

    const-string v1, "Submit feedback error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    .line 103
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->setContentView(I)V

    .line 104
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 106
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->initViews()V

    .line 107
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->loadData()V

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->ivAddMedia:Landroid/widget/ImageView;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 159
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->hideLoading()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 441
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 443
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->selectMedia()V

    return-void

    .line 446
    :cond_0
    const-string/jumbo p1, "\u9700\u8981\u5b58\u50a8\u6743\u9650\u624d\u80fd\u9009\u62e9\u5a92\u4f53\u6587\u4ef6"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/FeedbackActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
