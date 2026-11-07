.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1083
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1084
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1085
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->result:Ljava/lang/String;

    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1087
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$checkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
