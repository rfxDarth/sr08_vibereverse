.class public Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "RegisterActivity.java"


# instance fields
.field protected bNeedConfirm:Z

.field bSignup:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0073
    .end annotation
.end field

.field cbConfirm:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c6
    .end annotation
.end field

.field protected dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field private handler:Landroid/os/Handler;

.field llAgreementPrivacy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023a
    .end annotation
.end field

.field protected password:Ljava/lang/String;

.field rlBackground:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035f
    .end annotation
.end field

.field runnable:Ljava/lang/Runnable;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bNeedConfirm:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->handler:Landroid/os/Handler;

    .line 232
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showNeedPrivacyConfirm()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->setError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->register(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showAgreement()V

    return-void
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showPrivacy()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bSignup:Landroid/widget/Button;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->bNeedConfirm:Z

    :cond_0
    return-void
.end method

.method private register(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 248
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    const-string v1, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 251
    :try_start_0
    const-string v2, "action_cmd"

    const-string v3, "register"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v2, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v2, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 256
    const-string/jumbo v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v3, "pwd"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo p2, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string p2, "phone_id"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string p2, "phone_name"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string p2, "phone_os"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getPhoneOS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string p2, "app_version"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string p2, "email"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string p1, "body"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    new-instance p1, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 270
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const-string p1, ""

    return-object p1
.end method

.method private setError(Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f13016b

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showAgreement()V
    .locals 4

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string/jumbo v2, "title_name"

    const-string/jumbo v3, "user_agreement"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNeedPrivacyConfirm()V
    .locals 2

    const v0, 0x7f130570

    const/4 v1, 0x1

    .line 281
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showPrivacyDialog()V

    return-void
.end method

.method private showPrivacy()V
    .locals 4

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string/jumbo v2, "title_name"

    const-string/jumbo v3, "user_privacy"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPrivacyDialog()V
    .locals 3

    .line 286
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d008c

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0450

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$4;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a04f4

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$5;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f130574

    .line 306
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13056e

    .line 307
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$7;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$7;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130573

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$6;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$6;-><init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0051

    .line 64
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 67
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->init()V

    .line 68
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->initView()V

    return-void
.end method

.method tvAgreementOnClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0450
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showAgreement()V

    return-void
.end method

.method tvPrivacyOnClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04f4
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->showPrivacy()V

    return-void
.end method
