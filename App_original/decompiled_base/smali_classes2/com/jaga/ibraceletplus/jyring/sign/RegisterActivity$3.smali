.class Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 232
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 238
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 239
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/sign/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
