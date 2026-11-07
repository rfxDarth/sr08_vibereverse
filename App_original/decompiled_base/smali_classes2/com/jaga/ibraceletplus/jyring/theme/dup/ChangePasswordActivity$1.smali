.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->OnClickbChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 81
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 85
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    const-string p1, "error_code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 156
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v1, 0x7f13017c

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 152
    :pswitch_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130278

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130277

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 144
    :pswitch_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130276

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 140
    :pswitch_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130275

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 136
    :pswitch_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130274

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 132
    :pswitch_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130273

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 128
    :pswitch_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130272

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 124
    :pswitch_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130271

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    :pswitch_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130270

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 116
    :pswitch_9
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026f

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :pswitch_a
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026e

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :pswitch_b
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026d

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :pswitch_c
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026c

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :pswitch_d
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026b

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :pswitch_e
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f13026a

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :pswitch_f
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v2, 0x7f130269

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    const v1, 0x7f13017f

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ChangePasswordActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->dismiss()V

    return v0

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
