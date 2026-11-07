.class Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->createQrcode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

.field final synthetic val$force:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->val$force:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 178
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    const-string/jumbo v0, "setDeviceCode "

    .line 181
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResponse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 183
    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f13057a

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 185
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 187
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 188
    const-string v1, "deviceid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "qrticket"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v3, "existflag"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    new-array v0, v0, [B

    const/4 v3, 0x0

    .line 195
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 196
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v4, :cond_0

    .line 197
    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_1
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setDeviceCode([B)I

    .line 203
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {v2}, Lcom/google/zxing/common/BitmapUtils;->create2DCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 205
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->OnClicktvSave()V

    return-void

    .line 217
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_3

    .line 219
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    add-int/2addr v1, v3

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 222
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 228
    :cond_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_5

    .line 230
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 232
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 233
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
