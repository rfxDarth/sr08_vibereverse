.class Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 263
    const-string v0, "body"

    const-string v1, "memberid"

    .line 0
    const-string/jumbo v2, "result "

    const/4 v3, 0x1

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 267
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    const-string p1, "error_code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 354
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130186

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 350
    :pswitch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130278

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 346
    :pswitch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130277

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 342
    :pswitch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130276

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    :pswitch_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130275

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 334
    :pswitch_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130274

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 330
    :pswitch_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130273

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 326
    :pswitch_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130272

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 322
    :pswitch_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130271

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 318
    :pswitch_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130270

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 314
    :pswitch_9
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026f

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 310
    :pswitch_a
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026e

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 306
    :pswitch_b
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026d

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 302
    :pswitch_c
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026c

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 298
    :pswitch_d
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026b

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 294
    :pswitch_e
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f13026a

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    :pswitch_f
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130269

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v4, "tid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v4, "username"

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v5, v5, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "Token"

    invoke-virtual {v2, v4, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {p1, v1, v0}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const v0, 0x7f130188

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 284
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 361
    throw p1

    :catch_0
    move-exception p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v3

    nop

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
