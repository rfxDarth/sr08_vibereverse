.class public Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field bLogin:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0070
    .end annotation
.end field

.field protected bNeedConfirm:Z

.field cbConfirm:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c6
    .end annotation
.end field

.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private gender:I

.field private handler:Landroid/os/Handler;

.field llAgreementPrivacy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023a
    .end annotation
.end field

.field private nickName:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field rlBackground:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035f
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private runnable3:Ljava/lang/Runnable;

.field private userIcon:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 259
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->handler:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$7;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->runnable:Ljava/lang/Runnable;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->nickName:Ljava/lang/String;

    .line 417
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->userIcon:Ljava/lang/String;

    const/4 v0, 0x1

    .line 418
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->gender:I

    .line 493
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$8;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->runnable3:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showAgreement()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showPrivacy()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showNeedPrivacyConfirm()V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->nickName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->userIcon:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->login3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    .line 219
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bLogin:Landroid/widget/Button;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    :cond_0
    return-void
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "login "

    .line 381
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 384
    :try_start_0
    const-string v3, "action_cmd"

    const-string v4, "login"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string/jumbo v3, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v3, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 389
    const-string/jumbo v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string p1, "pwd"

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->calcPasswordMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string/jumbo p1, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string p1, "phone_id"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string p1, "phone_name"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string p1, "phone_os"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneOS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string p1, "app_version"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string p1, "nation"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getNationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string p1, "body"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->TAG:Ljava/lang/String;

    const-string p2, "login url http://api.keeprapid.com:8081/ronaldo-member"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 406
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 407
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    const-string p1, ""

    return-object p1
.end method

.method private login3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 506
    const-string/jumbo v0, "utf-8"

    .line 0
    const-string v1, "param "

    .line 507
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 510
    :try_start_0
    const-string v4, "action_cmd"

    const-string v5, "register_login"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string/jumbo v4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string/jumbo v4, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 515
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 516
    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string p1, "pwd"

    const-string v5, "123456"

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string p3, "nickname"

    invoke-virtual {v4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string p1, "headimg"

    invoke-virtual {v4, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo p1, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string p1, "phone_id"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string p1, "phone_name"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string p1, "phone_os"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneOS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string p1, "app_version"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string p1, "nation"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getNationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo p1, "source"

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string p1, "body"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 532
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "url http://api.keeprapid.com:8081/ronaldo-member"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 535
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 537
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    const-string p1, ""

    return-object p1
.end method

.method private showAgreement()V
    .locals 4

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string/jumbo v2, "title_name"

    const-string/jumbo v3, "user_agreement"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNeedPrivacyConfirm()V
    .locals 2

    const v0, 0x7f130570

    const/4 v1, 0x1

    .line 162
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showPrivacyDialog()V

    return-void
.end method

.method private showPrivacy()V
    .locals 4

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 209
    const-string/jumbo v2, "title_name"

    const-string/jumbo v3, "user_privacy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPrivacyDialog()V
    .locals 3

    .line 105
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d008c

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0450

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a04f4

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f130574

    .line 125
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13056e

    .line 126
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130573

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showUser(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public OnClickivQq()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0204
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 422
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showNeedPrivacyConfirm()V

    :cond_0
    return-void
.end method

.method public OnClickivWechat()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a021b
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 434
    iget-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showNeedPrivacyConfirm()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0047

    .line 66
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->init()V

    .line 70
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->initView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    return-void
.end method

.method tvAgreementOnClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0450
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showAgreement()V

    return-void
.end method

.method tvForgetOnClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04aa
        }
    .end annotation

    .line 168
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 169
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showNeedPrivacyConfirm()V

    return-void

    .line 174
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tvPrivacyOnClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04f4
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showPrivacy()V

    return-void
.end method

.method tvSignupOnClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0509
        }
    .end annotation

    .line 185
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tvSkipOnClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a050a
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->cbConfirm:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 151
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->bNeedConfirm:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->showNeedPrivacyConfirm()V

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bFirst"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bPrivacyConfirm"

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
