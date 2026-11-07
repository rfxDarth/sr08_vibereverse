.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$deleteAccountRunnable;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CAPTURE_CAMEIA:I = 0x1

.field private static final REQUEST_CODE_CAPTURE_CROP:I = 0x2

.field private static final REQUEST_CODE_PICK_IMAGE:I


# instance fields
.field private bAvatar:Landroid/graphics/Bitmap;

.field protected bChange:Z

.field private capturPath:Ljava/lang/String;

.field civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e2
    .end annotation
.end field

.field private curAvatarFilename:Ljava/lang/String;

.field deleteAccountHandler:Landroid/os/Handler;

.field etNickName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0173
    .end annotation
.end field

.field private fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

.field private imageCropFile:Ljava/io/File;

.field ivFemale:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ef
    .end annotation
.end field

.field ivMale:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01f8
    .end annotation
.end field

.field ivSync:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field logoutHandler:Landroid/os/Handler;

.field private logoutRunnable:Ljava/lang/Runnable;

.field private passport:Ljava/lang/String;

.field rlChange:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0361
    .end annotation
.end field

.field rlDeletion:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0363
    .end annotation
.end field

.field tvBirthday:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045f
    .end annotation
.end field

.field tvHeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04be
    .end annotation
.end field

.field tvLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c9
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0543
    .end annotation
.end field

.field tvWeight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a054e
    .end annotation
.end field

.field private unitMode:I

.field private updateUserAvatarHandler:Landroid/os/Handler;

.field private updateUserAvatarRunnable:Ljava/lang/Runnable;

.field updateUserInfoHandler:Landroid/os/Handler;

.field private updateUserInfoRunnable:Ljava/lang/Runnable;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    .line 369
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserAvatarRunnable:Ljava/lang/Runnable;

    .line 383
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserAvatarHandler:Landroid/os/Handler;

    .line 435
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->logoutRunnable:Ljava/lang/Runnable;

    .line 477
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->logoutHandler:Landroid/os/Handler;

    .line 491
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserInfoHandler:Landroid/os/Handler;

    .line 512
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserInfoRunnable:Ljava/lang/Runnable;

    .line 575
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->unitMode:I

    .line 576
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    .line 610
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->deleteAccountHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bAvatar:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->curAvatarFilename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserAvatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initBirth()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initHeight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->unitMode:I

    return p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initWeight()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;F)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateWeightGoogle(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Lcom/google/android/gms/fitness/FitnessOptions;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserAvatarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->logout()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->logoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->deleteAccount()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->showUpdateUser(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bAvatar:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private deleteAccount()Ljava/lang/String;
    .locals 8

    .line 669
    const-string v0, ""

    .line 0
    const-string v1, "delete account request : "

    .line 670
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 671
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 673
    :try_start_0
    const-string v4, "action_cmd"

    const-string v5, "member_delete"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string/jumbo v4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    const-string/jumbo v4, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "Token"

    invoke-virtual {v4, v5, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 678
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 679
    const-string/jumbo v6, "source"

    const-string v7, "origin"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string/jumbo v6, "tid"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    const-string/jumbo v4, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v4, "body"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 689
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 690
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 702
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 700
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 698
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 696
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 694
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getImageFromAlbum()V
    .locals 3

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getImageFromCamera()V
    .locals 5

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/JRing/imgs"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    new-instance v2, Ljava/io/File;

    const-string v3, "headimg_temp.jpg"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v4, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 348
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private gotoCrop(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->createImageFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->imageCropFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    const-string v2, "crop"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v2, "outputX"

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v2, "outputY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo v2, "scale "

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string/jumbo v2, "return-data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string v0, "image/*"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const-string v2, "output"

    if-lt p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->imageCropFile:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 282
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x2

    .line 284
    invoke-virtual {p0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private initAvatar()V
    .locals 3

    const v0, 0x7f0a00e2

    .line 806
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/JRing/imgs"

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/headimg.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bAvatar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private initBirth()V
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    const-string v2, "1990-01-01"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvBirthday:Landroid/widget/TextView;

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$13;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->unitMode:I

    return-void
.end method

.method private initGender()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$11;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$11;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$12;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 903
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 907
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivMale:Landroid/widget/ImageView;

    const v2, 0x7f1000d5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 908
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivFemale:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initHeight()V
    .locals 5

    .line 979
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    const-string v2, "170"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 982
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->unitMode:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 1012
    :cond_0
    sget v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->CM2INCH:F

    mul-float v0, v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    float-to-double v2, v0

    .line 1014
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    rem-int/lit8 v0, v0, 0xc

    .line 1015
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;

    invoke-direct {v3, p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$15;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1302c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 985
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvHeight:Landroid/widget/TextView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$14;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initName()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "source"

    const-string v3, "origin"

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "nickname"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$10;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$10;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvLogin:Landroid/widget/TextView;

    const v2, 0x7f13041a

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 748
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlDeletion:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setClickable(Z)V

    .line 752
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlChange:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->etNickName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->rlDeletion:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 757
    :goto_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initName()V

    .line 758
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initGender()V

    .line 759
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initAvatar()V

    .line 760
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initBirth()V

    .line 761
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initHeight()V

    .line 762
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initWeight()V

    .line 764
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->ivSync:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a01d5

    .line 767
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 768
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$9;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWeight()V
    .locals 5

    .line 1046
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1049
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130588

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1050
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->unitMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1051
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130589

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1052
    sget v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KG2LB:F

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1054
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;

    invoke-direct {v3, p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$16;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private logout()Ljava/lang/String;
    .locals 6

    const-string v0, "logout request:"

    .line 450
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 451
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 453
    :try_start_0
    const-string v3, "action_cmd"

    const-string v4, "logout"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string/jumbo v3, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    const-string/jumbo v3, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 458
    const-string/jumbo v4, "tid"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v4, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v4, "body"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->TAG:Ljava/lang/String;

    const-string v4, "logout url:http://api.keeprapid.com:8081/ronaldo-member"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 467
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    const-string v0, ""

    return-object v0
.end method

.method private saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 233
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p2, 0x0

    .line 235
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p2, :cond_0

    .line 238
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 244
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method private setPicToView(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/imgs"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/headimg.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->curAvatarFilename:Ljava/lang/String;

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->civUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private showUpdateUser(Z)V
    .locals 2

    .line 784
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 786
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 795
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->updateUserInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private startPhotoZoom(Landroid/net/Uri;)V
    .locals 4

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    .line 206
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    :cond_0
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string p1, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string p1, "aspectX"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string p1, "aspectY"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string p1, "outputX"

    const/16 v1, 0xa0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string p1, "outputY"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_1

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "file:///"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "headimg_temp.jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 216
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "outputFormat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string p1, "noFaceDetection"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    const-string/jumbo p1, "return-data"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string/jumbo p1, "scale"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const-string/jumbo p1, "scaleUpIfNeeded"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateUserAvatar(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 432
    const-string p1, ""

    return-object p1
.end method

.method private updateUserInfo()Ljava/lang/String;
    .locals 10

    .line 526
    const-string v0, "60"

    const-string v1, ""

    .line 0
    const-string/jumbo v2, "updateUserInfo request:"

    const/4 v3, 0x0

    .line 526
    iput-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    .line 529
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 530
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 532
    :try_start_0
    const-string v5, "action_cmd"

    const-string/jumbo v6, "user_update"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string/jumbo v5, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string/jumbo v5, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 537
    const-string/jumbo v6, "tid"

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string/jumbo v6, "uid"

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string/jumbo v6, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "nickname"

    invoke-virtual {v6, v7, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 543
    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "Gender"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 545
    const-string v7, "gender"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 546
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "Height"

    const-string v8, "170"

    invoke-virtual {v6, v7, v8}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 548
    const-string v7, "height"

    float-to-double v8, v6

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 549
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "Weight"

    invoke-virtual {v6, v7, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 551
    const-string/jumbo v7, "weight"

    float-to-double v8, v6

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 552
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v7, "StepStride"

    invoke-virtual {v6, v7, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 554
    const-string/jumbo v6, "stride"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "Birthday"

    const-string v7, "1990-01-01"

    invoke-virtual {v0, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v6, "birth"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    const-string v0, "body"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 564
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private updateWeightGoogle(F)V
    .locals 5

    .line 1087
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    .line 1088
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1087
    const-string v3, "P_ENABLE_GOOGLE_API"

    invoke-virtual {v0, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-static {}, Lcom/google/android/gms/fitness/FitnessOptions;->builder()Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 1092
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->accessActivitySessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    .line 1093
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    move-result-object v0

    .line 1094
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->build()Lcom/google/android/gms/fitness/FitnessOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->fitnessOptions:Lcom/google/android/gms/fitness/FitnessOptions;

    .line 1096
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    .line 1097
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    .line 1098
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    const-string v2, "Weight"

    .line 1099
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1100
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 1102
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1106
    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 1107
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 1109
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$17;

    invoke-direct {v1, p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$17;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;Lcom/google/android/gms/fitness/data/DataSet;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method OnClickivSync()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    return-void
.end method

.method OnClicktvChange()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0473
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method OnClicktvDeletion()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a048c
        }
    .end annotation

    .line 598
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1301fe

    .line 599
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1301fd

    .line 600
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;)V

    const v2, 0x7f1301fc

    .line 601
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13015a

    const/4 v2, 0x0

    .line 607
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method OnClicktvLogin()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04c9
        }
    .end annotation

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 713
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    if-eqz v1, :cond_0

    .line 716
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 719
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 720
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->finish()V

    return-void

    .line 722
    :cond_1
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->resetLocalUserInfo()V

    .line 723
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 724
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->logoutRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 727
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 728
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->finish()V

    return-void
.end method

.method public createImageFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 4

    const-string p2, "/headimg.jpg"

    .line 296
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 297
    const-string v0, "headimg.jpg"

    .line 303
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getAppRootDirPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 309
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 312
    const-string v2, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->uri:Landroid/net/Uri;

    return-object p2

    .line 317
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/imgs"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppRootDirPath()Ljava/io/File;
    .locals 3

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/JRing/imgs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCropFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 7

    .line 329
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 332
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 334
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 336
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 p2, 0x18

    if-nez p1, :cond_2

    if-eqz p3, :cond_5

    .line 126
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 131
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->capturPath:Ljava/lang/String;

    .line 133
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 135
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->capturPath:Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "com.jaga.ibraceletplus.aigoband.fileprovider"

    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->capturPath:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->capturPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 148
    :goto_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startPhotoZoom(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_5

    .line 161
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 166
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->setPicToView(Landroid/graphics/Bitmap;)V

    return-void

    .line 168
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_5

    .line 169
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 171
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->capturPath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->setPicToView(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 180
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "/JRing/imgs"

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_5

    .line 182
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/headimg_temp.jpg"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->startPhotoZoom(Landroid/net/Uri;)V

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d005c

    .line 101
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initData()V

    .line 104
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->initView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->bChange:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setUserProfile()V

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->passport:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->showUpdateUser(Z)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->finish()V

    .line 200
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public resetLocalUserInfo()V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Token"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Gender"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Height"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "StepStride"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "State"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "memberid"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->delRunningData(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/imgs"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/headimg.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->deleteFile(Ljava/lang/String;)Z

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/UserInfoActivity;->mid:Ljava/lang/String;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v0

    const/4 v1, 0x0

    .line 1150
    iput v1, v0, Lcom/keeprapid/serverdataload/model/Key;->member:I

    .line 1151
    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    return-void
.end method
