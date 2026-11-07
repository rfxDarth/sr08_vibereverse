.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "ChangePasswordActivity.java"


# instance fields
.field private dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

.field etNewPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0171
    .end annotation
.end field

.field etNewPwd2:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0172
    .end annotation
.end field

.field etOldPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0174
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->changePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private changePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "ble change password request : "

    .line 183
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://api.keeprapid.com:8081/ronaldo-member"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    :try_start_0
    const-string v3, "action_cmd"

    const-string v4, "change_password"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v3, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v3, "version"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getApiVersion()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 191
    const-string/jumbo v4, "tid"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->tid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v4, "vid"

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getVID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v4, "old_password"

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->calcPasswordMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string p1, "new_password"

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->calcPasswordMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string p1, "body"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 202
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string p1, ""

    return-object p1
.end method

.method private initData()V
    .locals 1

    .line 39
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    return-void
.end method


# virtual methods
.method OnClickbChange()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a006b
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etOldPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->etNewPwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_3

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v0, 0x7f13017e

    .line 66
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/HttpUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const v0, 0x7f13050b

    .line 74
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    .line 77
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 166
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 58
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 32
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->initData()V

    return-void
.end method
