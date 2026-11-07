.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1315
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string v1, "ACTION_NOTIFY_UNBOND_ACK call disconnectDeviceBatch in handler."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$8;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void
.end method
