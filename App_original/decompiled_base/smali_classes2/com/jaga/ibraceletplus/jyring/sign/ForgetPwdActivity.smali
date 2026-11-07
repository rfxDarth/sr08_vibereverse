.class public Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "ForgetPwdActivity.java"


# instance fields
.field bForget:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a006e
    .end annotation
.end field

.field protected dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field handler:Landroid/os/Handler;

.field operateRunnable:Ljava/lang/Runnable;

.field rlBackground:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035f
    .end annotation
.end field

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->handler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->operateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->forgetPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private forgetPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 133
    const-string/jumbo v0, "utf-8"

    .line 0
    const-string v1, "ble forget password request : "

    .line 134
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :try_start_0
    const-string v4, "action_cmd"

    const-string v5, "getback_password"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v4, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo p1, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "zh"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "chs"

    goto :goto_0

    :cond_0
    const-string p1, "eng"

    .line 146
    :goto_0
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    const-string v0, "lang"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string p1, "body"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 156
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const-string p1, ""

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->bForget:Landroid/widget/Button;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0042

    .line 45
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 48
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->init()V

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->initView()V

    return-void
.end method
