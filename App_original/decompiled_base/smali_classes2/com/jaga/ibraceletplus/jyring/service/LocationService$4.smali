.class Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;->startLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 502
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 505
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2136

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    const-string p1, "Location settings are inadequate, and cannot be fixed here. Fix in Settings."

    .line 522
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1002(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const-string v0, "Location settings are not satisfied. Attempting to upgrade location settings "

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 527
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1100(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    return-void
.end method
