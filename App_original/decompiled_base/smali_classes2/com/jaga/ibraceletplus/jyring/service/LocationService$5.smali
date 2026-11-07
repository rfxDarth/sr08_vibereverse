.class Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;->startLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
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

    .line 480
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 3

    .line 483
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const-string v0, "All location settings are satisfied."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1400(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1200(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    .line 497
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1300(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 496
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 499
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$1100(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 480
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
