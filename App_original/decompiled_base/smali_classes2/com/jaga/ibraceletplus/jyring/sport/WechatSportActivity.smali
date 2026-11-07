.class public Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "WechatSportActivity.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private fileName:Ljava/lang/String;

.field ivCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01dd
    .end annotation
.end field

.field tvDevice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048e
    .end annotation
.end field

.field tvMac:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->retryQrcode()V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->createQrcode(Ljava/lang/String;)V

    return-void
.end method

.method private createQrcode(Ljava/lang/String;)V
    .locals 5

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f130374

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->isConnectBt()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    .line 143
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f13050b

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 154
    :cond_4
    const-string v0, "51233"

    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_1
    const-string v2, "action_cmd"

    const-string v3, "assign_wxdevice"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v2, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v2, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string/jumbo v3, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v3, "macid"

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->macid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v3, "product_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v0, "force"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v0, "body"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "url http://api.keeprapid.com:8081/ronaldo-gearcenter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "param "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Ljava/lang/String;)V

    new-instance p1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    const-string v4, "http://api.keeprapid.com:8081/ronaldo-gearcenter"

    invoke-direct {v2, v4, v1, v3, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private initData()V
    .locals 4

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v1, "jringACTION_NOTIFY_GET_DEVICE_CODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getMacid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->macid:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->tvMac:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAC "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->macid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->macid:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_wechat.png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    .line 92
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->ivCode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 76
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-void
.end method

.method private retryQrcode()V
    .locals 3

    .line 313
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13057d

    .line 314
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    const v2, 0x7f13016b

    .line 315
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1301b1

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method OnClickbAuth()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a006a
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method OnClickivDevice()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ea
        }
    .end annotation

    .line 304
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDeviceCode()I

    .line 305
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 308
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->dialogLoading:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return-void
.end method

.method OnClicktvSave()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0500
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    .line 284
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 285
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->bitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 289
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/ImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 293
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 295
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->fileName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d005d

    .line 54
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    .line 63
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
