.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->stopLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
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

    .line 2087
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2090
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string/jumbo v0, "removeLocationUpdates: complete."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2091
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$34;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1602(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
