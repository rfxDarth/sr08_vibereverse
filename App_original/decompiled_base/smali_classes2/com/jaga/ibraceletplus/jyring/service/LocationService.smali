.class public Lcom/jaga/ibraceletplus/jyring/service/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;
    }
.end annotation


# static fields
.field private static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x3e8L

.field private static final KEY_LAST_UPDATED_TIME_STRING:Ljava/lang/String; = "last-updated-time-string"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_REQUESTING_LOCATION_UPDATES:Ljava/lang/String; = "requesting-location-updates"

.field private static final REQUEST_CHECK_SETTINGS:I = 0x1

.field private static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x7d0L


# instance fields
.field private Receiver:Landroid/content/BroadcastReceiver;

.field private TAG:Ljava/lang/String;

.field private bFirst:Z

.field private bRun:Z

.field private currentSteps:I

.field private error:I

.field private gps:F

.field private handler:Landroid/os/Handler;

.field private hasheart:I

.field private hasstep:I

.field private heartrate:I

.field private heartrateCnt:I

.field private heartrateavg:I

.field private heartratemax:I

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private llCurrent:Lcom/google/android/gms/maps/model/LatLng;

.field private mCurrentLocation:Landroid/location/Location;

.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLastUpdateTime:Ljava/lang/String;

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private mRequestingLocationUpdates:Ljava/lang/Boolean;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private mode:I

.field private runid:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private start:Ljava/lang/String;

.field private totalCalor:F

.field private totalDistance:F

.field private totalPace:I

.field private totalTime:I

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->weight:F

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->currentSteps:I

    .line 65
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrate:I

    .line 66
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateCnt:I

    .line 67
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    .line 68
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    .line 69
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    .line 70
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasstep:I

    .line 174
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->Receiver:Landroid/content/BroadcastReceiver;

    .line 280
    const-string v2, ""

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->start:Ljava/lang/String;

    .line 321
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    .line 322
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    .line 323
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalPace:I

    .line 324
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalCalor:F

    .line 325
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v0, -0x40800000    # -1.0f

    .line 326
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bFirst:Z

    .line 328
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    .line 423
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    .line 424
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    .line 425
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->handler:Landroid/os/Handler;

    .line 426
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/service/LocationService$3;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$3;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runnable:Ljava/lang/Runnable;

    .line 433
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mode:I

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrate:I

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrate:I

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    return p0
.end method

.method static synthetic access$1002(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->updateUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateCnt:I

    return p0
.end method

.method static synthetic access$212(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateCnt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateCnt:I

    return v0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    return p1
.end method

.method static synthetic access$402(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->currentSteps:I

    return p1
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Landroid/location/Location;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mCurrentLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$602(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLastUpdateTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/service/LocationService;Landroid/location/Location;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->sendLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 275
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method private createLocationCallback()V
    .locals 1

    .line 257
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$2;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method private createLocationRequest()V
    .locals 4

    .line 245
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 v1, 0x64

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private sendCurLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    .line 393
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string/jumbo v0, "sendLocation %s %s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_LOACTION_CHANGED_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v1, "lat"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 398
    const-string v1, "lon"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 399
    const-string p1, "gps"

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 400
    const-string p1, "error"

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private sendLocation()V
    .locals 7

    .line 405
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 406
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const-string/jumbo v0, "sendLocation %s %s %s %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringLOACTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-string v3, "lat"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const-string v3, "lon"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 414
    const-string v1, "gps"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 415
    const-string/jumbo v1, "totalDistance"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 416
    const-string/jumbo v1, "totalTime"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string/jumbo v1, "totalPace"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalPace:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string/jumbo v1, "totalCalor"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalCalor:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 419
    const-string v1, "error"

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method

.method private setButtonsEnabledState()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 20

    move-object/from16 v0, p0

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iput v5, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    float-to-int v5, v5

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    .line 337
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v7, v10, v6

    const/4 v6, 0x2

    aput-object v8, v10, v6

    const/4 v7, 0x3

    aput-object v5, v10, v7

    const/4 v5, 0x4

    aput-object v9, v10, v5

    const-string/jumbo v5, "setLocation %s %s %s %s %s"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v9, v11, v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->start:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".log"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/JRing/log/"

    invoke-static {v7, v5, v9, v8}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v5, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bFirst:Z

    const/high16 v7, 0x41200000    # 10.0f

    if-eqz v5, :cond_0

    iget v8, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_2

    :cond_0
    if-nez v5, :cond_1

    iget v5, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->gps:F

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_2

    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v5, v1, v8

    if-nez v5, :cond_3

    cmpl-double v5, v3, v8

    if-nez v5, :cond_3

    .line 346
    :cond_2
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 347
    invoke-direct {v0, v5}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->sendCurLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    .line 350
    :cond_3
    iput-boolean v11, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bFirst:Z

    .line 352
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    .line 353
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v10, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    .line 356
    iget-boolean v1, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    if-eqz v1, :cond_9

    if-eqz v5, :cond_4

    .line 357
    iget-wide v1, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_4

    iget-wide v1, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_4

    .line 358
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    float-to-double v1, v1

    iget-wide v12, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v14, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v3

    move-wide/from16 v18, v8

    invoke-static/range {v12 .. v19}, Lcom/jaga/ibraceletplus/jyring/util/GpsUtil;->getDistance(DDDD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    .line 360
    :cond_4
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    cmpl-float v2, v1, v7

    if-lez v2, :cond_8

    .line 361
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalPace:I

    .line 363
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mode:I

    if-eqz v2, :cond_7

    if-ne v2, v6, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    if-ne v2, v4, :cond_6

    const/16 v2, 0x9

    goto :goto_1

    :cond_6
    const/4 v2, 0x6

    goto :goto_1

    :cond_7
    :goto_0
    const/16 v2, 0xa

    .line 367
    :goto_1
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->weight:F

    mul-float v1, v1, v4

    int-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v1, v7

    div-float/2addr v1, v3

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalCalor:F

    .line 370
    :cond_8
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;-><init>()V

    .line 371
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLatitude(D)V

    .line 372
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->llCurrent:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLongitude(D)V

    .line 373
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setRunid(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setAddtimestamp(J)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setAltitude(D)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setDirection(F)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setRadius(F)V

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setSpeed(F)V

    .line 379
    invoke-virtual {v1, v11}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setSatellite(I)V

    .line 380
    invoke-virtual {v1, v11}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLocType(I)V

    .line 381
    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrate:I

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setHeartrate(I)V

    .line 382
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertRunHistory(Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;)J

    .line 383
    invoke-virtual {v0, v11}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runUpdate(I)V

    :cond_9
    return-void
.end method

.method private startLocationUpdates()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$5;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    .line 480
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$4;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private stopLocationUpdates()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const-string/jumbo v0, "stopLocationUpdates: updates never requested, no-op."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$6;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    .line 553
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private updateUI()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setButtonsEnabledState()V

    return-void
.end method

.method private updateValuesFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "requesting-location-updates"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "location"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mCurrentLocation:Landroid/location/Location;

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "last-updated-time-string"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLastUpdateTime:Ljava/lang/String;

    .line 227
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mCurrentLocation:Landroid/location/Location;

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setLocation(Landroid/location/Location;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getRun()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 290
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;-><init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Weight"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->weight:F

    const/4 v0, 0x0

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mLastUpdateTime:Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v1, "jringSENSORDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "jringACTION_NOTIFY_SPORTS_STEPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 164
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->createLocationCallback()V

    .line 165
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->createLocationRequest()V

    .line 166
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->buildLocationSettingsRequest()V

    .line 168
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 170
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->startLocationUpdates()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->start:Ljava/lang/String;

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 295
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public runStart(III)V
    .locals 5

    .line 436
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    .line 437
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasstep:I

    .line 438
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->mode:I

    const/4 p2, 0x1

    .line 439
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 441
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    .line 442
    new-instance p2, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-direct {p2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;-><init>()V

    .line 443
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setRunid(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setAddtimestamp(J)V

    .line 445
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTimezone(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_0
    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMacid(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string/jumbo v4, "userid"

    invoke-virtual {v0, v4, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setUid(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v4, "memberid"

    invoke-virtual {v0, v4, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMid(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setType(I)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setFinish(I)V

    .line 455
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartrateavg(I)V

    .line 456
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartratemax(I)V

    .line 457
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->currentSteps:I

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalstep(I)V

    .line 458
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasheart(I)V

    .line 459
    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasstep(I)V

    .line 460
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertRunRecord(Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;)J

    .line 461
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "runStart: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hasheart = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", heartrateavg = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", heartratemax = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public runStop(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 469
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runUpdate(I)V

    .line 470
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->stopLocationUpdates()V

    return-void
.end method

.method public runUpdate(I)V
    .locals 5

    .line 575
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;-><init>()V

    .line 576
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setRunid(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setAddtimestamp(J)V

    .line 578
    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setFinish(I)V

    .line 579
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalDistance:F

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaldistance(F)V

    .line 580
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalTime:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaltime(I)V

    .line 581
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalCalor:F

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalcalories(F)V

    .line 582
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->totalPace:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setPace(I)V

    .line 583
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartrateavg(I)V

    .line 584
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartratemax(I)V

    .line 585
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->currentSteps:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalstep(I)V

    .line 586
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasheart(I)V

    .line 587
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasstep:I

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasstep(I)V

    .line 588
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateRunRecord(Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;)I

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "runUpdate: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasheart = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->hasheart:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", heartrateavg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartrateavg:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", heartratemax = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->heartratemax:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->saveLog(Ljava/lang/String;)V

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 4

    .line 593
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-ui.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/JRing/log/"

    invoke-static {p0, p1, v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected sendBroadcastWithPackage(Landroid/content/Intent;)V
    .locals 1

    .line 388
    const-string v0, "com.jaga.ibraceletplus.jyring"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setRun(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->bRun:Z

    return-void
.end method
