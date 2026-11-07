.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$28;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->insertGoogleFit(Z)V
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

    .line 1721
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$28;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$28;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->insertGoogleFitTask()V

    return-void
.end method
