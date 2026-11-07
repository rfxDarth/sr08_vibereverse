.class Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager$1;
.super Ljava/lang/Object;
.source "SuotaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->processStep(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/SuotaManager;->enableNotifications()V

    return-void
.end method
