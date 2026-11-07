.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->startLocationUpdates()V
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

    .line 1908
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 3

    .line 1911
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "All location settings are satisfied."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1914
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    .line 1915
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1900(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1914
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 1917
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

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

    .line 1908
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$31;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
