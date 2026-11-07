.class Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/sign/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    const-class v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
