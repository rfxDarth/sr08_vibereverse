.class Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;
.super Ljava/lang/Object;
.source "ForgetPwdActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "ble forget password result : "

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 89
    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 94
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string p1, "error_code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 96
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    const v0, 0x7f130182

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    const v0, 0x7f130183

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return v1

    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/ForgetPwdActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 113
    throw p1
.end method
