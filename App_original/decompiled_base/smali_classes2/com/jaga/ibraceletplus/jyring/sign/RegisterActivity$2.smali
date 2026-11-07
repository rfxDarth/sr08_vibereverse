.class Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "ble register result : "

    .line 137
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 138
    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 143
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string p1, "error_code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 145
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 218
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13018c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 214
    :pswitch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130278

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 210
    :pswitch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130277

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 206
    :pswitch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130276

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 202
    :pswitch_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130275

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 198
    :pswitch_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130274

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 194
    :pswitch_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130273

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 190
    :pswitch_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130272

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 186
    :pswitch_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130271

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 182
    :pswitch_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130270

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 178
    :pswitch_9
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 174
    :pswitch_a
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026e

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :pswitch_b
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026d

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    :pswitch_c
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :pswitch_d
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :pswitch_e
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13026a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :pswitch_f
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f130269

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v0, "username"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    const v0, 0x7f13018d

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 150
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->finish()V
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

    .line 224
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 222
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return v1

    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->dl:Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 227
    throw p1

    :pswitch_data_0
    .packed-switch 0x9c40
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa029
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa411
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
