.class Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;->createLocationCallback()V
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

    .line 257
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 260
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 262
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$502(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Landroid/location/Location;)Landroid/location/Location;

    .line 263
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$602(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$500(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$700(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Landroid/location/Location;)V

    return-void
.end method
