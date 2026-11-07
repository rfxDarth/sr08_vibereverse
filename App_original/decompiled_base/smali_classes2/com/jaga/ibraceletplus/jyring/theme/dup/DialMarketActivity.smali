.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "DialMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;,
        Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownLoadImageTask;,
        Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;,
        Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;
    }
.end annotation


# instance fields
.field private checkDialServerInfoHandler:Landroid/os/Handler;

.field private checkDialServerInfoRunnable:Ljava/lang/Runnable;

.field private dailAdapter:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;

.field private dialInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private downloadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 319
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfoHandler:Landroid/os/Handler;

    .line 417
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dialInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dialInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;)Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dailAdapter:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Landroid/widget/GridView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkDialServerInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 436
    :try_start_0
    const-string v0, "http://download.keeprapid.com/apps/smartband/keepfit/dialinfo/%1$s/dail.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 437
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 438
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 439
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const-string p1, ""

    return-object p1
.end method

.method private downloadFirmware(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/JRing/firmware"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 209
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?t="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jringACTION_NOTIFY_DEVICE_DIALINFO_CHANGED_TEST"

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 211
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/util/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 7

    .line 285
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->downloadInfoList:Ljava/util/ArrayList;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 289
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "DIALMARKET_EXPIRE_TIMESTAMP"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 290
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v5, "DIALMARKET_JSON"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    .line 291
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 296
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "isLocal"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 300
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 292
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->checkDialServerInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a01aa

    .line 305
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->mGridView:Landroid/widget/GridView;

    .line 306
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 267
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0032

    .line 268
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->setContentView(I)V

    .line 270
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->initData()V

    .line 271
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 276
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    return-void
.end method
