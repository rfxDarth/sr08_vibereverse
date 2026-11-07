.class public Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "RunRecordActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private alMarkerGoogle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private bLocate:Z

.field bPause:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0071
    .end annotation
.end field

.field bResume:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0072
    .end annotation
.end field

.field private bShowStep:Z

.field bStop:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0075
    .end annotation
.end field

.field private br:Landroid/content/BroadcastReceiver;

.field private duration:I

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private heartrate:I

.field private heartrateCnt:I

.field private heartrate_mode:I

.field private heartrateavg:I

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private iconGmap:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private intent:Landroid/content/Intent;

.field ivGps:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01f0
    .end annotation
.end field

.field llCalorie:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0249
    .end annotation
.end field

.field llCountDown:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024d
    .end annotation
.end field

.field llHeartrate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0263
    .end annotation
.end field

.field llStep:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027b
    .end annotation
.end field

.field private ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private markerGoogle:Lcom/google/android/gms/maps/model/Marker;

.field private mode:I

.field private polylineGoogle:Lcom/google/android/gms/maps/model/Polyline;

.field private sc:Landroid/content/ServiceConnection;

.field private sportName:Ljava/lang/String;

.field suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ff
    .end annotation
.end field

.field tvCalor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046e
    .end annotation
.end field

.field tvCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0484
    .end annotation
.end field

.field tvDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field tvHeartrate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04bb
    .end annotation
.end field

.field tvLocation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c7
    .end annotation
.end field

.field tvLocationInit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c8
    .end annotation
.end field

.field tvPace:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ec
    .end annotation
.end field

.field tvSportName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0514
    .end annotation
.end field

.field tvStep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0519
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0535
    .end annotation
.end field

.field tvUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0540
    .end annotation
.end field

.field private unit:Ljava/lang/String;

.field private va:Landroid/animation/ValueAnimator;

.field private widthEnd:I

.field private widthStart:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 53
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate:I

    .line 63
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateCnt:I

    .line 64
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateavg:I

    .line 65
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bShowStep:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    const-string v2, ""

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    .line 120
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->br:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    .line 219
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sc:Landroid/content/ServiceConnection;

    const/4 v3, 0x2

    .line 236
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->va:Landroid/animation/ValueAnimator;

    .line 237
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mode:I

    const/4 v3, 0x1

    .line 238
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    .line 239
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->intent:Landroid/content/Intent;

    .line 240
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 241
    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->unit:Ljava/lang/String;

    .line 345
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->widthStart:I

    .line 346
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->widthEnd:I

    const/16 v0, 0x7d0

    .line 347
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->duration:I

    .line 399
    iput-boolean v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    .line 457
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->markerGoogle:Lcom/google/android/gms/maps/model/Marker;

    .line 458
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->polylineGoogle:Lcom/google/android/gms/maps/model/Polyline;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->alMarkerGoogle:Ljava/util/ArrayList;

    .line 512
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->setGps(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/jaga/ibraceletplus/jyring/service/LocationService;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/jaga/ibraceletplus/jyring/service/LocationService;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bShowStep:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bShowStep:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mode:I

    return p0
.end method

.method static synthetic access$1400(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->widthStart:I

    return p0
.end method

.method static synthetic access$1500(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->widthEnd:I

    return p0
.end method

.method static synthetic access$1602(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iconGmap:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getLocation(DD)V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getLocationGoogle2(DD)V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->unit:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getLocationGoogle(DD)V

    return-void
.end method

.method static synthetic access$600(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->startHeartrateMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate:I

    return p0
.end method

.method static synthetic access$702(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate:I

    return p1
.end method

.method static synthetic access$800(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateavg:I

    return p0
.end method

.method static synthetic access$802(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateavg:I

    return p1
.end method

.method static synthetic access$900(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateCnt:I

    return p0
.end method

.method static synthetic access$912(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateCnt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrateCnt:I

    return v0
.end method

.method private getLocation(DD)V
    .locals 0

    .line 454
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initMap(DD)V

    return-void
.end method

.method private getLocationGoogle(DD)V
    .locals 1

    .line 462
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 465
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {v0, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->markerGoogle:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 471
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iconGmap:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 472
    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 471
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->markerGoogle:Lcom/google/android/gms/maps/model/Marker;

    .line 474
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->getRun()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 475
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->alMarkerGoogle:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->markerGoogle:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->polylineGoogle:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_3

    .line 479
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->alMarkerGoogle:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060023

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->polylineGoogle:Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method

.method private getLocationGoogle2(DD)V
    .locals 1

    .line 484
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 487
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {v0, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 10

    .line 244
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mode:I

    .line 245
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "DistanceUnit"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->unit:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_SHOW_SPORT_STEP"

    const-string v3, "false"

    invoke-virtual {v0, v1, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bShowStep:Z

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    const-string v1, "jringLOACTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "jringACTION_NOTIFY_LOACTION_CHANGED_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "jringSENSORDATA_BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "jringACTION_NOTIFY_SPORTS_STEPS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "jringACTION_NOTIFY_ALARM_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 259
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->va:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->duration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 260
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->va:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;

    invoke-direct {v3, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->intent:Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 273
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sc:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 274
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f130137

    .line 275
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    .line 276
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mode:I

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_0

    const/4 v5, 0x5

    packed-switch v3, :pswitch_data_0

    .line 302
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    .line 303
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    .line 294
    :pswitch_0
    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f130456

    .line 295
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    .line 298
    :pswitch_1
    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f13044a

    .line 299
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    .line 290
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f13043f

    .line 291
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 286
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f130441

    .line 287
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_1
    iput v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    .line 279
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_2
    iput v5, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const v0, 0x7f130454

    .line 283
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvSportName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sportName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-direct {p0, v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->startHeartrateMode(Z)V

    .line 321
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AlarmManager;

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 323
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const-wide/32 v5, 0xea60

    const-wide/32 v7, 0xea60

    const/4 v4, 0x0

    .line 324
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initMap(DD)V
    .locals 8

    .line 516
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a017f

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/SupportMapFragment;

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 521
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 9

    .line 408
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v1, "FUNCTION_SPORT_FROM_APP"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCalorie:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llHeartrate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bShowStep:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->mode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_2

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llStep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCalorie:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llHeartrate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llStep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "Latitude"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v3, "Longitude"

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getNationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v8, v4, v6

    if-nez v8, :cond_3

    .line 431
    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getNationLatitude(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 432
    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getNationLongitude(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 434
    :cond_3
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocationInit:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initMap(DD)V

    .line 437
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setOnUnLockListener(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;)V

    .line 449
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->unit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvUnit:Landroid/widget/TextView;

    const v1, 0x7f130547

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setGps(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 502
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 504
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    const v0, 0x7f1000da

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 506
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    const v0, 0x7f1000d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 508
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    const v0, 0x7f1000d8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private startHeartrateMode(Z)V
    .locals 4

    const-string v0, "call startHeartrateMode: "

    .line 328
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SPORT_FROM_APP"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-nez v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->heartrate_mode:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setHeartRateMode(ZII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 337
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method OnClickbPause()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0071
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setRun(Z)V

    .line 377
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bPause:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method OnClickbResume()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0072
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setRun(Z)V

    .line 365
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bResume:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->reset()V

    .line 368
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setVisibility(I)V

    return-void
.end method

.method OnClickbStop()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0075
        }
    .end annotation

    const/4 v0, -0x1

    .line 353
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->setResult(I)V

    .line 354
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ls:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runStop(Z)V

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->startHeartrateMode(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->finish()V

    return-void
.end method

.method OnClickivLocate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01f7
        }
    .end annotation

    .line 382
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f1000db

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 385
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f1000dc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :goto_0
    iget-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bLocate:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0054

    .line 73
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 76
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initData()V

    .line 77
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->stopService(Landroid/content/Intent;)Z

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method onIvGpsClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01f0
        }
    .end annotation

    .line 496
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocation:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocationInit:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
