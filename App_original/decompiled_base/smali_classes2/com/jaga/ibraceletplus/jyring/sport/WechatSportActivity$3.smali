.class Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->createQrcode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 246
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
