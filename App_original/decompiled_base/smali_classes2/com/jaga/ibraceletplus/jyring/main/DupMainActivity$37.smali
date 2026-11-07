.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2357
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2360
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$37;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-class v3, Lcom/jaga/ibraceletplus/jyring/guide/GuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
