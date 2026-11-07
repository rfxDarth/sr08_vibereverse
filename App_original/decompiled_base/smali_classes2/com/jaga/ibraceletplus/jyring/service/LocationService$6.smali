.class Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;->stopLocationUpdates()V
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
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

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

    .line 556
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const-string/jumbo v0, "removeLocationUpdates: complete."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1002(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
