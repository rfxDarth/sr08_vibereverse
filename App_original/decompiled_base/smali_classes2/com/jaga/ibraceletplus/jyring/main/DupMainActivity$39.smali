.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$39;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
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

    .line 2558
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$39;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2561
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$39;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    return-void
.end method
