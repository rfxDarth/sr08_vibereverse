.class Lcom/jaga/ibraceletplus/jyring/AppMng$1;
.super Ljava/lang/Object;
.source "AppMng.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/AppMng;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/AppMng;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/AppMng;->access$010(Lcom/jaga/ibraceletplus/jyring/AppMng;)I

    .line 70
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/AppMng;->access$000(Lcom/jaga/ibraceletplus/jyring/AppMng;)I

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->access$102(Lcom/jaga/ibraceletplus/jyring/AppMng;Z)Z

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/AppMng;->access$008(Lcom/jaga/ibraceletplus/jyring/AppMng;)I

    .line 64
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/AppMng$1;->this$0:Lcom/jaga/ibraceletplus/jyring/AppMng;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/AppMng;->access$102(Lcom/jaga/ibraceletplus/jyring/AppMng;Z)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
