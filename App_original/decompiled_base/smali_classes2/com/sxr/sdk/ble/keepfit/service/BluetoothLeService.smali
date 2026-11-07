.class public Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "BluetoothLeService"

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static final d:J = 0x3a98L

.field private static final e:J = 0x2710L

.field private static f:Landroid/os/Handler;

.field private static g:Ljava/lang/Runnable;

.field private static h:Landroid/os/Handler;

.field private static i:Ljava/lang/Runnable;


# instance fields
.field private final A:I

.field private A0:Z

.field private B:Landroid/os/Handler;

.field private final B0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/Runnable;

.field private C0:Z

.field private D:Ljava/lang/Runnable;

.field D0:Ljava/lang/Runnable;

.field private E:I

.field private E0:Z

.field private F:I

.field private F0:Z

.field private G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

.field private G0:I

.field private H:Landroid/os/Handler;

.field private H0:Ljava/lang/String;

.field private final I:Ljava/lang/Runnable;

.field private I0:I

.field private J:Ljava/lang/Thread;

.field private final J0:Landroid/content/BroadcastReceiver;

.field protected K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

.field private final K0:Landroid/content/BroadcastReceiver;

.field private final L:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;

.field private L0:Ljava/lang/String;

.field private M:Ljava/lang/StringBuilder;

.field private M0:I

.field private final N:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;

.field private N0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Ljava/lang/String;

.field private O0:I

.field private P:Ljava/lang/String;

.field private P0:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private final Q0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private R:I

.field private R0:Landroid/bluetooth/le/ScanCallback;

.field private S:I

.field private S0:I

.field private T:I

.field private T0:Z

.field private U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

.field private U0:I

.field private V:Z

.field private V0:Z

.field private W:Z

.field private W0:[B

.field private X:Z

.field private X0:Z

.field private Y:I

.field private Y0:I

.field private Z:I

.field private Z0:J

.field private a0:I

.field a1:Ljava/lang/Runnable;

.field private b0:I

.field private b1:Z

.field private c0:Z

.field private c1:I

.field private d0:Z

.field private d1:I

.field private e0:I

.field private e1:I

.field private f0:I

.field private f1:I

.field private g0:I

.field private final g1:Ljava/lang/Runnable;

.field private h0:I

.field private h1:Z

.field private i0:I

.field private i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

.field private j:Landroid/bluetooth/BluetoothManager;

.field private j0:I

.field private j1:I

.field private k:Landroid/bluetooth/BluetoothAdapter;

.field private k0:I

.field private k1:Landroid/os/Handler;

.field private l:Landroid/bluetooth/BluetoothGatt;

.field private l0:I

.field private l1:Ljava/lang/Runnable;

.field private m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

.field private m0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private m1:Ljava/lang/Runnable;

.field private n:Z

.field private n0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private n1:Ljava/lang/Runnable;

.field private o:Z

.field private o0:Z

.field private o1:Ljava/lang/Runnable;

.field private p:Ljava/lang/Thread;

.field private p0:Landroid/os/PowerManager$WakeLock;

.field private p1:Ljava/lang/Runnable;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private q0:I

.field private r:Ljava/lang/Thread;

.field private final r0:Landroid/bluetooth/BluetoothGattCallback;

.field private s:J

.field private s0:Landroid/os/Handler;

.field private t:Ljava/lang/String;

.field private t0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private final u0:Ljava/lang/Runnable;

.field public v:Z

.field private final v0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private w0:[Ljava/lang/String;

.field private x:J

.field private x0:[Ljava/lang/String;

.field private y:Z

.field private y0:Z

.field private z:Z

.field private z0:Z


# direct methods
.method public static synthetic $r8$lambda$jb2MNhXbArr9-gCdKl8USZJef7s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j:Landroid/bluetooth/BluetoothManager;

    .line 5
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o:Z

    .line 17
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p:Ljava/lang/Thread;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r:Ljava/lang/Thread;

    const-wide/16 v3, 0x0

    .line 23
    iput-wide v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s:J

    .line 33
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v:Z

    .line 35
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w:Z

    .line 36
    iput-wide v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x:J

    .line 38
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    .line 39
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z:Z

    .line 40
    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A:I

    .line 42
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    .line 51
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E:I

    const/16 v3, 0x3c

    .line 53
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    .line 55
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    .line 57
    new-instance v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$k;

    invoke-direct {v3, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$k;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I:Ljava/lang/Runnable;

    .line 68
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J:Ljava/lang/Thread;

    .line 79
    new-instance v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;

    invoke-direct {v3, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$l;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;

    .line 1316
    new-instance v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;

    invoke-direct {v3, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$u;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;

    const/16 v3, 0xc8

    .line 1436
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    .line 1437
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S:I

    .line 1438
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    .line 1441
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V:Z

    .line 1442
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W:Z

    .line 1443
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X:Z

    .line 1444
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y:I

    .line 1445
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z:I

    .line 1446
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0:I

    .line 1447
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b0:I

    .line 1448
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0:Z

    .line 1449
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0:Z

    .line 1450
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0:I

    const/4 v3, 0x4

    .line 1451
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0:I

    .line 1460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m0:Ljava/util/List;

    .line 1462
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n0:Ljava/util/List;

    .line 1672
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0:Z

    .line 1673
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p0:Landroid/os/PowerManager$WakeLock;

    const/4 v3, -0x1

    .line 1674
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q0:I

    .line 1675
    new-instance v4, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;

    invoke-direct {v4, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$w;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0:Landroid/bluetooth/BluetoothGattCallback;

    .line 2000
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    .line 2140
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u0:Ljava/lang/Runnable;

    .line 2141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    .line 2448
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    .line 2449
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x0:[Ljava/lang/String;

    .line 2450
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y0:Z

    .line 2607
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    .line 2608
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A0:Z

    .line 2609
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2611
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C0:Z

    .line 2743
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D0:Ljava/lang/Runnable;

    .line 2814
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E0:Z

    .line 2815
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F0:Z

    .line 2816
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G0:I

    .line 2818
    const-string v0, ""

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H0:Ljava/lang/String;

    .line 2819
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I0:I

    .line 2821
    new-instance v4, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    invoke-direct {v4, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J0:Landroid/content/BroadcastReceiver;

    .line 3082
    new-instance v4, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;

    invoke-direct {v4, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K0:Landroid/content/BroadcastReceiver;

    .line 3267
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M0:I

    .line 3473
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    .line 3555
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P0:Ljava/lang/String;

    .line 3644
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$g;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$g;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Q0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 3732
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    .line 3800
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T0:Z

    const/4 v0, 0x2

    .line 3801
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U0:I

    .line 3845
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V0:Z

    .line 3849
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X0:Z

    .line 3850
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y0:I

    .line 3878
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$j;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a1:Ljava/lang/Runnable;

    .line 4002
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b1:Z

    .line 4075
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c1:I

    .line 4076
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d1:I

    .line 4077
    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e1:I

    .line 5411
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$n;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g1:Ljava/lang/Runnable;

    .line 6197
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h1:Z

    .line 6198
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    const/16 v0, 0x7d0

    .line 6398
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    .line 6399
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Z)I

    move-result p0

    return p0
.end method

.method static synthetic A(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A()V
    .locals 2

    .line 3
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s0:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s0:Landroid/os/Handler;

    .line 9
    :cond_1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method static synthetic B(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M0:I

    return p0
.end method

.method static synthetic B(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t(Z)I

    move-result p0

    return p0
.end method

.method private B()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    const-string v2, "BluetoothLeService"

    if-nez v0, :cond_0

    .line 4
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 6
    const-string v0, " Unable to initialize BluetoothManager."

    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 13
    const-string v0, " Unable to obtain a BluetoothAdapter."

    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 21
    :cond_2
    const-string v0, "Initialize BluetoothManager."

    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/Ota;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    return-object p0
.end method

.method private C()Z
    .locals 2

    .line 3
    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic C(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    return p1
.end method

.method static synthetic D(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v(Z)I

    move-result p0

    return p0
.end method

.method static synthetic D(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H0:Ljava/lang/String;

    return-object p0
.end method

.method private D()Z
    .locals 1

    .line 3
    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic E(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I0:I

    return p0
.end method

.method private E()Z
    .locals 5

    const-string v0, "BluetoothLeService"

    const-string v1, "isDeviceBusy:"

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    const-string v4, "mDeviceBusy"

    invoke-virtual {p0, v3, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDeviceBusy NoSuchFieldException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDeviceBusy IllegalAccessException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method static synthetic F(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G0:I

    return p0
.end method

.method private F()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o:Z

    return v0
.end method

.method private static G()Landroid/content/IntentFilter;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->k0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->m0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic G(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P()V

    return-void
.end method

.method private static H()Landroid/content/IntentFilter;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic H(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    return-object p0
.end method

.method private I()I
    .locals 3

    .line 2
    const-string v0, "notifyDownloadFtpFileCompleted0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 6
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x54

    .line 7
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x7

    .line 8
    aput-byte v2, v0, v1

    .line 10
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 11
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic I(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y()I

    move-result p0

    return p0
.end method

.method private J()I
    .locals 5

    .line 2
    const-string v0, "queryAiState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 5
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 7
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    .line 8
    aput-byte v1, v0, v3

    const/4 v4, 0x2

    .line 9
    aput-byte v3, v0, v4

    const/4 v4, 0x3

    .line 10
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 11
    aput-byte v3, v0, v4

    const/4 v4, 0x5

    .line 12
    aput-byte v1, v0, v4

    const/4 v4, 0x6

    .line 13
    aput-byte v3, v0, v4

    .line 14
    aput-byte v1, v0, v2

    const/16 v2, 0x8

    .line 15
    aput-byte v1, v0, v2

    .line 17
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 18
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic J(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method private K()I
    .locals 3

    .line 2
    const-string v0, "queryOfflineSpeechRecognitionState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 5
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 7
    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 8
    aput-byte v1, v0, v2

    .line 10
    invoke-direct {p0, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 11
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic K(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    return p0
.end method

.method static synthetic L(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L0:Ljava/lang/String;

    return-object p0
.end method

.method private L()V
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enter reconnectFromDisconnect status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x:J

    .line 6
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w:Z

    .line 8
    const-string v0, "call disconnected"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j()V

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 12
    const-string v0, "mBluetoothGatt null"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c:I

    const/16 v3, 0x81

    const-wide/16 v4, 0x1388

    if-ne v0, v3, :cond_1

    .line 17
    const-string v0, "----129----"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reconnectFromDisconnect exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    goto :goto_1

    .line 27
    :cond_1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 28
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    :cond_2
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$f;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$f;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g:Ljava/lang/Runnable;

    .line 38
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    const-string v0, "delay 5000 ms for reconnectDevice "

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_1
    sput v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c:I

    return-void
.end method

.method private M()V
    .locals 6

    .line 2
    const-string/jumbo v0, "service releaseCharacteristic."

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;)Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 5
    invoke-direct {p0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 9
    const-string v0, "release charactistic error."

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic M(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0()V

    return-void
.end method

.method static synthetic N(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0()I

    move-result p0

    return p0
.end method

.method private N()V
    .locals 6

    .line 2
    const-string/jumbo v0, "service releaseCharacteristicRawData."

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;)Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 5
    invoke-direct {p0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 9
    const-string v0, "release charactistic raw data error."

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private O()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    return-void
.end method

.method static synthetic O(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0:Z

    return p0
.end method

.method static synthetic P(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    return-object p0
.end method

.method private P()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic Q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method private Q()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    .line 4
    const-string v1, "BluetoothLeService"

    const-string v2, "call resendBleCmd"

    invoke-direct {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Z)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->V:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    const-string v3, "bin_data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    iget-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b1:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    if-eqz v1, :cond_1

    .line 11
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "c6"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 14
    aget-object v2, v2, v0

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;

    invoke-direct {v2, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$m;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b1:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    return-void
.end method

.method static synthetic R(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method private R()V
    .locals 3

    .line 2
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    const-string v1, "BluetoothLeService"

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "reconnectDeviceRunnable removed 1"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 11
    :cond_1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 12
    const-string v0, "discoveryServicesDelayRunnable removed 1"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h:Landroid/os/Handler;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private S()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    const-string v0, "BluetoothLeService"

    const-string/jumbo v1, "resetReconnectDevice removeCallbacks connectGattTimeoutRunnable."

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0:Z

    .line 13
    invoke-virtual {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Z)V

    return-void
.end method

.method static synthetic S(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F()Z

    move-result p0

    return p0
.end method

.method private T()I
    .locals 4

    const/16 v0, 0x14

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    .line 7
    aput-byte v0, v1, v2

    .line 9
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 10
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic T(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private U()I
    .locals 3

    .line 2
    const-string/jumbo v0, "scanWifi0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 6
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x54

    .line 7
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 8
    aput-byte v2, v0, v1

    .line 10
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 11
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic U(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A0:Z

    return p0
.end method

.method private V()I
    .locals 9

    .line 2
    const-string/jumbo v0, "sendWeather2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;

    const/16 v3, 0x14

    .line 9
    new-array v3, v3, [B

    if-eqz v2, :cond_1

    const/16 v4, 0x22

    .line 13
    :try_start_0
    aput-byte v4, v3, v0

    int-to-byte v4, v1

    const/4 v5, 0x1

    .line 14
    aput-byte v4, v3, v5

    .line 15
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getTimestamp()I

    move-result v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v4

    .line 16
    aget-byte v6, v4, v0

    const/4 v7, 0x2

    aput-byte v6, v3, v7

    .line 17
    aget-byte v6, v4, v5

    const/4 v8, 0x3

    aput-byte v6, v3, v8

    .line 18
    aget-byte v6, v4, v7

    const/4 v7, 0x4

    aput-byte v6, v3, v7

    .line 19
    aget-byte v4, v4, v8

    const/4 v6, 0x5

    aput-byte v4, v3, v6

    .line 20
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getDaytimeWeather()I

    move-result v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v4

    .line 21
    aget-byte v6, v4, v0

    const/4 v7, 0x6

    aput-byte v6, v3, v7

    .line 22
    aget-byte v4, v4, v5

    const/4 v6, 0x7

    aput-byte v4, v3, v6

    .line 23
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getEveningweather()I

    move-result v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v4

    .line 24
    aget-byte v6, v4, v0

    const/16 v7, 0x8

    aput-byte v6, v3, v7

    .line 25
    aget-byte v4, v4, v5

    const/16 v6, 0x9

    aput-byte v4, v3, v6

    .line 26
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getLowestT()I

    move-result v4

    int-to-byte v4, v4

    const/16 v6, 0xa

    .line 27
    aput-byte v4, v3, v6

    .line 31
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getHightestT()I

    move-result v4

    int-to-byte v4, v4

    const/16 v6, 0xb

    .line 32
    aput-byte v4, v3, v6

    .line 36
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getAirQuality()I

    move-result v4

    int-to-byte v4, v4

    const/16 v6, 0xc

    aput-byte v4, v3, v6

    .line 37
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getPM25()I

    move-result v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v4

    .line 38
    aget-byte v6, v4, v0

    const/16 v7, 0xd

    aput-byte v6, v3, v7

    .line 39
    aget-byte v4, v4, v5

    const/16 v6, 0xe

    aput-byte v4, v3, v6

    .line 40
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getUV()I

    move-result v4

    int-to-byte v4, v4

    const/16 v6, 0xf

    aput-byte v4, v3, v6

    .line 41
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getAQI()I

    move-result v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v4

    .line 42
    aget-byte v6, v4, v0

    const/16 v7, 0x10

    aput-byte v6, v3, v7

    .line 43
    aget-byte v4, v4, v5

    const/16 v5, 0x11

    aput-byte v4, v3, v5

    .line 44
    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->getCurT()I

    move-result v2

    int-to-byte v2, v2

    const/16 v4, 0x12

    .line 45
    aput-byte v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BluetoothLeService"

    invoke-direct {p0, v4, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic V(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Q()V

    return-void
.end method

.method private W()I
    .locals 2

    .line 2
    const-string/jumbo v0, "setAlarms"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic W(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    return p0
.end method

.method private X()I
    .locals 8

    .line 2
    const-string/jumbo v0, "setDeviceInfo2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x1b

    .line 7
    aput-byte v3, v1, v2

    .line 8
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V:Z

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 9
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W:Z

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 10
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X:Z

    int-to-byte v2, v2

    const/4 v5, 0x5

    aput-byte v2, v1, v5

    .line 11
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y:I

    int-to-byte v2, v2

    const/4 v6, 0x6

    aput-byte v2, v1, v6

    .line 12
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0:I

    int-to-byte v2, v2

    const/4 v6, 0x7

    aput-byte v2, v1, v6

    .line 13
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z:I

    int-to-byte v2, v2

    const/16 v6, 0x8

    aput-byte v2, v1, v6

    .line 14
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b0:I

    int-to-byte v2, v2

    const/16 v6, 0x9

    aput-byte v2, v1, v6

    .line 15
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0:Z

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v6, 0xa

    aput-byte v2, v1, v6

    .line 16
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0:Z

    int-to-byte v2, v2

    const/16 v6, 0xb

    aput-byte v2, v1, v6

    .line 17
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0:I

    int-to-byte v2, v2

    const/16 v6, 0xc

    aput-byte v2, v1, v6

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "enableShortVideo:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "BluetoothLeService"

    invoke-direct {p0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wearMode:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "lightDegree:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0:I

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/4 v0, 0x4

    const/16 v3, 0x50

    if-eq v2, v0, :cond_2

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x50

    goto :goto_1

    :cond_3
    const/16 v0, 0x3c

    goto :goto_1

    :cond_4
    const/16 v0, 0x28

    :cond_5
    :goto_1
    int-to-byte v0, v0

    const/16 v2, 0xd

    .line 42
    aput-byte v0, v1, v2

    .line 44
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 45
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic X(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W()I

    move-result p0

    return p0
.end method

.method private Y()I
    .locals 7

    .line 2
    const-string/jumbo v0, "setDeviceTime"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x14

    .line 7
    new-array v2, v1, [B

    .line 10
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(J)I

    move-result v3

    iput v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setDeviceTime2 last: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothLeService"

    invoke-direct {p0, v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 14
    aput-byte v4, v2, v3

    .line 15
    aget-byte v5, v0, v3

    aput-byte v5, v2, v4

    .line 16
    aget-byte v4, v0, v4

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 17
    aget-byte v4, v0, v5

    const/4 v5, 0x3

    aput-byte v4, v2, v5

    .line 18
    aget-byte v0, v0, v5

    const/4 v4, 0x4

    aput-byte v0, v2, v4

    .line 21
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v4, 0x36ee80

    .line 22
    div-int/2addr v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x5

    .line 23
    aput-byte v0, v2, v4

    const/4 v0, 0x6

    :goto_0
    if-ge v0, v1, :cond_1

    .line 26
    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 31
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic Y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    return-object p0
.end method

.method private Z()I
    .locals 6

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string/jumbo v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\u4e2d\u56fd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    const-string v3, "CN"

    goto :goto_1

    .line 13
    :cond_1
    const-string v3, "TW"

    .line 16
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLanguage2 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothLeService"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string/jumbo v1, "setLanguage2"

    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_3
    const/16 v1, 0x14

    .line 21
    new-array v1, v1, [B

    .line 23
    :try_start_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v4, 0x21

    .line 25
    aput-byte v4, v1, v2

    .line 27
    array-length v4, v0

    const/16 v5, 0x13

    if-gt v4, v5, :cond_4

    .line 28
    array-length v4, v0

    goto :goto_2

    :cond_4
    const/16 v4, 0x12

    :goto_2
    const/4 v5, 0x1

    .line 30
    invoke-static {v0, v2, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_3
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 37
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic Z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s:J

    return-wide v0
.end method

.method private a(I)I
    .locals 3

    .line 1333
    const-string v0, "SetScreenLightTime0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 1336
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 1338
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    .line 1339
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 1340
    aput-byte p1, v0, v1

    .line 1342
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1343
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(II)I
    .locals 4

    .line 902
    const-string v0, "getDataByDay2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 905
    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/16 p1, 0x10

    .line 908
    aput-byte p1, v0, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/16 p1, 0x16

    .line 910
    aput-byte p1, v0, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0xc

    if-ne p1, v3, :cond_3

    const/16 p1, 0x39

    .line 912
    aput-byte p1, v0, v2

    goto :goto_0

    :cond_3
    const/16 v3, 0xd

    if-ne p1, v3, :cond_4

    const/16 p1, 0x40

    .line 914
    aput-byte p1, v0, v2

    :cond_4
    :goto_0
    int-to-byte p1, p2

    .line 921
    aput-byte p1, v0, v1

    .line 923
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 924
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(III)I
    .locals 3

    .line 97
    const-string/jumbo v0, "setDeviceCode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 101
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4b

    .line 102
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 104
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 105
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 106
    aput-byte p1, v0, p2

    .line 108
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 110
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(IIII)I
    .locals 3

    .line 1035
    const-string v0, "editDeviceDialCustom0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 1039
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    .line 1040
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 1042
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 1043
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 1044
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x4

    .line 1045
    aput-byte p1, v0, p2

    .line 1047
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1049
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(IIIII)I
    .locals 4

    .line 867
    const-string/jumbo v0, "setIdleTime"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 870
    new-array v0, v0, [B

    .line 872
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 873
    aput-byte v2, v0, v1

    .line 874
    aget-byte v1, p1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 875
    aget-byte v1, p1, v3

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 876
    aget-byte v1, p1, v3

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 877
    aget-byte p1, p1, v3

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x5

    .line 878
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x6

    .line 879
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x7

    .line 880
    aput-byte p1, v0, p2

    int-to-byte p1, p5

    .line 881
    aput-byte p1, v0, v2

    .line 883
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 884
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(IIIIIII)I
    .locals 3

    .line 987
    const-string/jumbo v0, "setReminder0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 991
    new-array v0, v0, [B

    .line 993
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    const/16 v1, 0x31

    const/4 v2, 0x0

    .line 994
    aput-byte v1, v0, v2

    .line 995
    aget-byte v1, p1, v2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 996
    aget-byte v1, p1, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 997
    aget-byte v1, p1, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 998
    aget-byte p1, p1, v2

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x5

    .line 999
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x6

    .line 1000
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x7

    .line 1001
    aput-byte p1, v0, p2

    int-to-byte p1, p5

    const/16 p2, 0x8

    .line 1002
    aput-byte p1, v0, p2

    int-to-byte p1, p6

    const/16 p2, 0x9

    .line 1003
    aput-byte p1, v0, p2

    int-to-byte p1, p7

    const/16 p2, 0xa

    .line 1004
    aput-byte p1, v0, p2

    .line 1006
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1008
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(IIIIIIII)I
    .locals 3

    .line 885
    const-string/jumbo v0, "setSleepTime"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 888
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 890
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 891
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 892
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 893
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x4

    .line 894
    aput-byte p1, v0, p2

    int-to-byte p1, p5

    const/4 p2, 0x5

    .line 895
    aput-byte p1, v0, p2

    int-to-byte p1, p6

    const/4 p2, 0x6

    .line 896
    aput-byte p1, v0, p2

    int-to-byte p1, p7

    const/4 p2, 0x7

    .line 897
    aput-byte p1, v0, p2

    int-to-byte p1, p8

    const/16 p2, 0x8

    .line 898
    aput-byte p1, v0, p2

    .line 900
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 901
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(IIIIIIIIIIIIIIIIII)I
    .locals 18

    move-object/from16 v0, p0

    .line 65
    const-string/jumbo v1, "setDeviceCode0"

    invoke-direct {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v1

    :cond_0
    move/from16 v1, p1

    int-to-byte v1, v1

    move/from16 v2, p2

    int-to-byte v2, v2

    move/from16 v3, p3

    int-to-byte v3, v3

    move/from16 v4, p4

    int-to-byte v4, v4

    move/from16 v5, p5

    int-to-byte v5, v5

    move/from16 v6, p6

    int-to-byte v6, v6

    move/from16 v7, p7

    int-to-byte v7, v7

    move/from16 v8, p8

    int-to-byte v8, v8

    move/from16 v9, p9

    int-to-byte v9, v9

    move/from16 v10, p10

    int-to-byte v10, v10

    move/from16 v11, p11

    int-to-byte v11, v11

    move/from16 v12, p12

    int-to-byte v12, v12

    move/from16 v13, p13

    int-to-byte v13, v13

    move/from16 v14, p14

    int-to-byte v14, v14

    move/from16 v15, p15

    int-to-byte v15, v15

    move/from16 p1, v1

    move/from16 v1, p16

    int-to-byte v1, v1

    move/from16 p2, v1

    move/from16 v1, p17

    int-to-byte v1, v1

    move/from16 p3, v1

    move/from16 v1, p18

    int-to-byte v1, v1

    move/from16 p4, v1

    const/16 v1, 0x14

    .line 92
    new-array v1, v1, [B

    const/16 v16, 0x53

    const/16 v17, 0x0

    aput-byte v16, v1, v17

    const/16 v16, 0x1

    aput-byte v17, v1, v16

    const/16 v16, 0x2

    aput-byte p1, v1, v16

    const/16 v16, 0x3

    aput-byte v2, v1, v16

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    aput-byte v5, v1, v2

    const/4 v2, 0x7

    aput-byte v6, v1, v2

    const/16 v2, 0x8

    aput-byte v7, v1, v2

    const/16 v2, 0x9

    aput-byte v8, v1, v2

    const/16 v2, 0xa

    aput-byte v9, v1, v2

    const/16 v2, 0xb

    aput-byte v10, v1, v2

    const/16 v2, 0xc

    aput-byte v11, v1, v2

    const/16 v2, 0xd

    aput-byte v12, v1, v2

    const/16 v2, 0xe

    aput-byte v13, v1, v2

    const/16 v2, 0xf

    aput-byte v14, v1, v2

    const/16 v2, 0x10

    aput-byte v15, v1, v2

    const/16 v2, 0x11

    aput-byte p2, v1, v2

    const/16 v2, 0x12

    aput-byte p3, v1, v2

    const/16 v2, 0x13

    aput-byte p4, v1, v2

    .line 94
    invoke-direct {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 96
    iget v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v1
.end method

.method private a(III[I)I
    .locals 3

    .line 43
    const-string/jumbo v0, "setEqInfo20"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 47
    new-array v0, v0, [B

    const/16 v1, 0x53

    const/4 v2, 0x0

    .line 48
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 50
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 52
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x3

    .line 53
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    .line 54
    aput-byte p1, v0, p2

    const/16 p1, 0xa

    if-lt p3, p1, :cond_1

    const/16 p1, 0xf

    if-gt p3, p1, :cond_1

    :goto_0
    if-ge v2, p3, :cond_1

    add-int/lit8 p1, v2, 0x5

    .line 58
    aget p2, p4, v2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 64
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(ILjava/lang/String;)I
    .locals 13

    .line 1263
    const-string/jumbo v0, "setChatgptContent"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    if-eqz p2, :cond_7

    .line 1266
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 v1, 0x640

    goto :goto_0

    :cond_2
    const/16 v1, 0x180

    .line 1277
    :goto_0
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 1278
    array-length v2, p2

    if-le v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    const/16 v2, 0x11

    .line 1281
    div-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    const/16 v5, 0x14

    .line 1283
    new-array v6, v5, [B

    const/16 v7, 0x4f

    .line 1285
    aput-byte v7, v6, v3

    int-to-byte v8, p1

    .line 1286
    aput-byte v8, v6, v0

    add-int/lit8 v9, v4, 0x1

    int-to-byte v10, v9

    const/4 v11, 0x2

    .line 1287
    aput-byte v10, v6, v11

    .line 1290
    array-length v10, p2

    mul-int/lit8 v4, v4, 0x11

    sub-int/2addr v10, v4

    if-gt v10, v2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v10, 0x11

    :goto_3
    const/4 v12, 0x3

    .line 1294
    invoke-static {p2, v4, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1295
    invoke-direct {p0, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    if-ne v9, v1, :cond_5

    .line 1298
    new-array p1, v5, [B

    .line 1300
    aput-byte v7, p1, v3

    .line 1301
    aput-byte v8, p1, v0

    const/4 p2, -0x1

    .line 1302
    aput-byte p2, p1, v11

    .line 1304
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    move v4, v9

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1310
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_6
    :goto_4
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1314
    :cond_7
    :goto_5
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(J)I
    .locals 2

    .line 864
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;)I
    .locals 18

    move-object/from16 v1, p0

    const-string/jumbo v0, "setNormalAlarm0 nPiece\uff1a "

    const-string/jumbo v2, "setNormalAlarm0 maxLength\uff1a "

    const-string/jumbo v3, "setNormalAlarm0 leftPiece\uff1a "

    .line 193
    const-string/jumbo v4, "setNormalAlarm0"

    invoke-direct {v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    iget v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    .line 196
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getAlarm_id()J

    const/16 v4, 0x14

    .line 198
    new-array v5, v4, [B

    const/16 v6, 0xd

    const/4 v7, 0x0

    .line 199
    aput-byte v6, v5, v7

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v8

    long-to-int v6, v8

    int-to-byte v6, v6

    const/4 v8, 0x1

    aput-byte v6, v5, v8

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableType()I

    move-result v6

    int-to-byte v6, v6

    const/4 v9, 0x2

    aput-byte v6, v5, v9

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getHour()I

    move-result v6

    int-to-byte v6, v6

    const/4 v10, 0x3

    aput-byte v6, v5, v10

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getMinute()I

    move-result v6

    int-to-byte v6, v6

    const/4 v10, 0x4

    aput-byte v6, v5, v10

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableSunday()I

    move-result v6

    int-to-byte v6, v6

    const/4 v10, 0x5

    aput-byte v6, v5, v10

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableMonday()I

    move-result v6

    int-to-byte v6, v6

    const/4 v10, 0x6

    aput-byte v6, v5, v10

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableTuesday()I

    move-result v6

    int-to-byte v6, v6

    const/4 v10, 0x7

    aput-byte v6, v5, v10

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableWednesday()I

    move-result v6

    int-to-byte v6, v6

    const/16 v10, 0x8

    aput-byte v6, v5, v10

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableThursday()I

    move-result v6

    int-to-byte v6, v6

    const/16 v10, 0x9

    aput-byte v6, v5, v10

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableFriday()I

    move-result v6

    int-to-byte v6, v6

    const/16 v10, 0xa

    aput-byte v6, v5, v10

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getEnableSaturday()I

    move-result v6

    int-to-byte v6, v6

    const/16 v10, 0xb

    aput-byte v6, v5, v10

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->isSingle()Z

    move-result v6

    const/16 v10, 0xc

    if-eqz v6, :cond_1

    .line 213
    aput-byte v8, v5, v10

    goto :goto_0

    .line 215
    :cond_1
    aput-byte v7, v5, v10

    .line 218
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNormalAlarm0\uff1a "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "BluetoothLeService"

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {v1, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 222
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getContent()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 226
    array-length v6, v5

    const/16 v12, 0x36

    if-gt v6, v12, :cond_2

    .line 227
    array-length v12, v5

    .line 229
    :cond_2
    rem-int/lit8 v6, v12, 0x12

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    .line 230
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    div-int/lit8 v3, v12, 0x12

    add-int/2addr v3, v6

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string/jumbo v2, "setNormalAlarm0 length\uff1a 18"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    add-int/lit8 v2, v3, -0x1

    if-lt v0, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 240
    :goto_3
    array-length v6, v5

    mul-int/lit8 v12, v0, 0x12

    sub-int/2addr v6, v12

    const/16 v13, 0x12

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 242
    new-array v13, v4, [B

    const/16 v14, 0x1c

    .line 243
    aput-byte v14, v13, v7

    shl-int/lit8 v14, v2, 0x7

    shl-int/lit8 v15, v0, 0x4

    or-int/2addr v14, v15

    int-to-long v14, v14

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v16

    or-long v14, v14, v16

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v13, v8

    .line 245
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setNormalAlarm0 content_end_flag\uff1a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setNormalAlarm0 content_id\uff1a "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setNormalAlarm0 alarm id\uff1a "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {v5, v12, v13, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {v1, v13}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_5
    iget v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I
    .locals 3

    .line 144
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    const/16 v1, 0xc8

    const-string v2, "BluetoothLeService"

    if-eq v0, v1, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "called setOption error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p1

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    .line 149
    const-string/jumbo p1, "setOption"

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    if-eqz p1, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->isEnableLight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V:Z

    .line 154
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->isEnableVibrate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W:Z

    .line 155
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->isEnableQuite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X:Z

    .line 156
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getQuiteStartHour()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y:I

    .line 157
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getQuiteEndHour()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z:I

    .line 158
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getQuiteStartMin()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a0:I

    .line 159
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getQuiteEndMin()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b0:I

    .line 160
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->isEnableCalling()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0:Z

    .line 161
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->isEnableShortVideo()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0:Z

    .line 162
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getWearMode()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0:I

    .line 163
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getDeviceProfile()Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->getLightDegree()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0:I

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.enableCalling:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.enableShortVideo:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.wearMode:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.lightDegree:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h0:I

    .line 172
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getWeight()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i0:I

    .line 173
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getStride()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j0:I

    .line 174
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getUnit()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k0:I

    .line 175
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getGender()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0:I

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.gender:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getUserProfile()Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/UserProfile;->getAge()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0:I

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "this.age:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getItemsTimer()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getItemsTimer()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 182
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getItemsTimer()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n0:Ljava/util/List;

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getWeather()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U:Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;->getWeather()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m0:Ljava/util/List;

    .line 189
    :cond_4
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    .locals 5

    .line 1073
    const-string/jumbo v0, "setContactInfo0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1076
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;->getItemsContact()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1078
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setContactItem index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothLeService"

    invoke-direct {p0, v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    :cond_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;Z)I
    .locals 16

    move-object/from16 v1, p0

    .line 1085
    const-string/jumbo v0, "setContactItem0"

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    .line 1088
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-virtual/range {p1 .. p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v3

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phoneNum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \uff0c contactName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothLeService"

    invoke-direct {v1, v5, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x14

    .line 1094
    new-array v6, v4, [B

    const/4 v7, 0x0

    const/16 v8, 0x47

    .line 1099
    aput-byte v8, v6, v7

    int-to-byte v0, v0

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v9, v0

    const/4 v10, 0x1

    .line 1100
    aput-byte v9, v6, v10

    .line 1102
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v9, 0x0

    .line 1103
    :goto_0
    array-length v11, v2

    const/16 v12, 0x12

    if-ge v9, v11, :cond_1

    if-ge v9, v12, :cond_1

    add-int/lit8 v11, v9, 0x2

    .line 1104
    aget-byte v12, v2, v9

    aput-byte v12, v6, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    invoke-direct {v1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1110
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1111
    array-length v3, v2

    div-int/2addr v3, v12

    add-int/lit8 v6, v3, 0x1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_6

    const/4 v11, 0x3

    if-ge v9, v11, :cond_6

    .line 1113
    new-array v11, v4, [B

    .line 1115
    aput-byte v8, v11, v7

    const/4 v13, 0x2

    if-eq v9, v3, :cond_3

    if-ne v9, v13, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v9, 0x1

    int-to-byte v14, v14

    or-int/2addr v14, v0

    int-to-byte v14, v14

    .line 1128
    aput-byte v14, v11, v10

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    add-int/lit8 v14, v9, 0x1

    int-to-byte v14, v14

    or-int/2addr v14, v0

    or-int/lit8 v14, v14, 0xc

    int-to-byte v14, v14

    .line 1129
    aput-byte v14, v11, v10

    goto :goto_3

    :cond_4
    add-int/lit8 v14, v9, 0x1

    int-to-byte v14, v14

    or-int/2addr v14, v0

    or-int/lit8 v14, v14, 0x4

    int-to-byte v14, v14

    .line 1133
    aput-byte v14, v11, v10

    .line 1141
    :goto_3
    array-length v14, v2

    mul-int/lit8 v15, v9, 0x12

    sub-int/2addr v14, v15

    if-gt v14, v12, :cond_5

    goto :goto_4

    :cond_5
    const/16 v14, 0x12

    .line 1145
    :goto_4
    invoke-static {v2, v15, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    invoke-direct {v1, v11}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_6
    iget v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 5

    .line 1153
    const-string/jumbo v0, "setECardInfoContent0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;->getItemsECard()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1159
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1160
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;Z)I

    .line 1161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1164
    :cond_3
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;Z)I
    .locals 10

    .line 1165
    const-string/jumbo p2, "setECardItemContent0"

    invoke-direct {p0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1166
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1168
    :cond_0
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    move-result p2

    rem-int/lit8 p2, p2, 0x10

    .line 1169
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1180
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1181
    array-length v0, p1

    const/16 v1, 0x14a

    if-le v0, v1, :cond_2

    const/16 v0, 0x14a

    :cond_2
    const/16 v1, 0xf

    .line 1184
    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    const/16 v5, 0x14

    .line 1186
    new-array v5, v5, [B

    const/16 v6, 0x4c

    .line 1188
    aput-byte v6, v5, v3

    const/4 v6, 0x5

    .line 1189
    aput-byte v6, v5, v2

    int-to-byte v7, p2

    const/4 v8, 0x2

    .line 1190
    aput-byte v7, v5, v8

    int-to-byte v7, v0

    const/4 v8, 0x3

    .line 1191
    aput-byte v7, v5, v8

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v7

    const/4 v9, 0x4

    .line 1192
    aput-byte v8, v5, v9

    .line 1195
    array-length v8, p1

    mul-int/lit8 v4, v4, 0xf

    sub-int/2addr v8, v4

    if-gt v8, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0xf

    .line 1199
    :goto_1
    invoke-static {p1, v4, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1200
    invoke-direct {p0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1203
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_4
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1207
    :cond_5
    :goto_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 5

    .line 1208
    const-string/jumbo v0, "setSmsRspInfoContent0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->getItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1214
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    :cond_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;Z)I
    .locals 9

    .line 1219
    const-string/jumbo p2, "setSmsRspItem0"

    invoke-direct {p0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1220
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1222
    :cond_0
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result p2

    rem-int/lit8 p2, p2, 0x10

    .line 1223
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1224
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1234
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1235
    array-length v0, p1

    const/16 v1, 0x78

    if-le v0, v1, :cond_2

    const/16 v0, 0x78

    :cond_2
    const/16 v1, 0xf

    .line 1238
    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    const/16 v5, 0x14

    .line 1240
    new-array v5, v5, [B

    const/16 v6, 0x4d

    .line 1242
    aput-byte v6, v5, v3

    const/4 v6, 0x4

    .line 1243
    aput-byte v6, v5, v2

    int-to-byte v7, p2

    const/4 v8, 0x2

    .line 1244
    aput-byte v7, v5, v8

    int-to-byte v7, v0

    const/4 v8, 0x3

    .line 1245
    aput-byte v7, v5, v8

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v7

    .line 1246
    aput-byte v8, v5, v6

    .line 1249
    array-length v6, p1

    mul-int/lit8 v4, v4, 0xf

    sub-int/2addr v6, v4

    if-gt v6, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0xf

    :goto_1
    const/4 v8, 0x5

    .line 1253
    invoke-static {p1, v4, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    invoke-direct {p0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1257
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_4
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1261
    :cond_5
    :goto_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q0:I

    return p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;III)I
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(III)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIII)I
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IIIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIIIII)I
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IIIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIIIIIII)I
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IIIIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;III[I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(III[I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/BleClientOption;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;[B)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;[B)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Z)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZI)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZII)I
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(ZII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZIIIII)I
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(ZIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZIIIIII)I
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(ZIIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private a(Z)I
    .locals 6

    .line 1315
    const-string v0, "connectAiServerNotification0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 1319
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1321
    aput-byte v2, v0, v1

    .line 1322
    aput-byte v1, v0, v2

    const/4 v3, 0x2

    .line 1323
    aput-byte v2, v0, v3

    const/4 v4, 0x3

    .line 1324
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 1325
    aput-byte v2, v0, v4

    const/4 v5, 0x5

    .line 1326
    aput-byte v1, v0, v5

    const/4 v5, 0x6

    .line 1327
    aput-byte v2, v0, v5

    const/4 v2, 0x7

    .line 1328
    aput-byte v1, v0, v2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    int-to-byte p1, v3

    const/16 v1, 0x8

    .line 1329
    aput-byte p1, v0, v1

    .line 1331
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 1332
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(ZI)I
    .locals 3

    .line 975
    const-string/jumbo v0, "setEcgMode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 978
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    .line 979
    aput-byte v2, v0, v1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 981
    aput-byte p1, v0, p1

    :cond_1
    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 982
    aput-byte p1, v0, p2

    .line 984
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 986
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(ZII)I
    .locals 3

    .line 952
    const-string/jumbo v0, "setHeartRateArea"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 955
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x26

    .line 956
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 957
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 958
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 959
    aput-byte p1, v0, p2

    .line 961
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 962
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(ZIIIII)I
    .locals 4

    .line 1050
    const-string/jumbo v0, "setFemaleReminder0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 1054
    new-array v0, v0, [B

    const/16 v1, 0x44

    const/4 v2, 0x0

    .line 1055
    aput-byte v1, v0, v2

    .line 1057
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p2

    .line 1058
    aget-byte v1, p2, v2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 1059
    aget-byte p2, p2, v3

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    int-to-byte p2, p3

    const/4 p3, 0x3

    .line 1060
    aput-byte p2, v0, p3

    int-to-byte p2, p4

    const/4 p3, 0x4

    .line 1061
    aput-byte p2, v0, p3

    int-to-byte p2, p5

    const/4 p3, 0x5

    .line 1062
    aput-byte p2, v0, p3

    int-to-byte p2, p6

    const/4 p3, 0x6

    .line 1063
    aput-byte p2, v0, p3

    const/4 p2, 0x7

    if-eqz p1, :cond_1

    .line 1066
    aput-byte v3, v0, p2

    goto :goto_0

    .line 1068
    :cond_1
    aput-byte v2, v0, p2

    .line 1070
    :goto_0
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1072
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a(ZIIIIII)I
    .locals 2

    .line 925
    const-string/jumbo p7, "setAutoHeartMode2"

    invoke-direct {p0, p7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_0

    .line 926
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 p7, 0x14

    .line 928
    new-array p7, p7, [B

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 929
    aput-byte v0, p7, v1

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 930
    aput-byte p2, p7, v0

    int-to-byte p2, p3

    const/4 p3, 0x2

    .line 931
    aput-byte p2, p7, p3

    int-to-byte p2, p4

    const/4 p3, 0x3

    .line 932
    aput-byte p2, p7, p3

    int-to-byte p2, p5

    const/4 p3, 0x4

    .line 933
    aput-byte p2, p7, p3

    const/4 p2, 0x5

    if-eqz p1, :cond_1

    .line 935
    aput-byte v0, p7, p2

    goto :goto_0

    .line 937
    :cond_1
    aput-byte v1, p7, p2

    .line 948
    :goto_0
    rem-int/lit16 p6, p6, 0xff

    int-to-byte p1, p6

    const/4 p2, 0x6

    aput-byte p1, p7, p2

    int-to-byte p1, v0

    const/4 p2, 0x7

    .line 949
    aput-byte p1, p7, p2

    .line 950
    invoke-direct {p0, p7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 951
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a([B)I
    .locals 3

    .line 963
    const-string/jumbo v0, "setDeviceCode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 967
    new-array v0, v0, [B

    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 968
    aput-byte v1, v0, v2

    .line 969
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    const/16 v1, 0x13

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 970
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    .line 972
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 974
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUuid0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    .line 491
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x0:[Ljava/lang/String;

    .line 492
    iput-boolean p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y0:Z

    .line 493
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x:J

    return-wide p1
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 10
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 11
    sput-object p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p16}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1262
    iget-object v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-virtual/range {v1 .. v17}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(IZ)V
    .locals 2

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onNotifyBleState: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothLeService"

    invoke-direct {p0, v0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sput p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    .line 267
    :try_start_0
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-nez p2, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onConnectStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "BluetoothLeService"

    const-string v3, "b133 reconnectDevice "

    const-string v4, "connect ota device "

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 815
    :try_start_0
    invoke-static {v0, v5, v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([BLjava/util/UUID;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 816
    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;[B)[B

    move-result-object v7

    if-eqz v5, :cond_0

    .line 822
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 823
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v9, v5

    .line 824
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget-byte v8, v7, v8

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v7, v6

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    aget-byte v8, v7, v8

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-byte v8, v7, v8

    invoke-static {v8}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x5

    aget-byte v10, v7, v8

    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    aget-byte v11, v7, v10

    invoke-static {v11}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v5, 0x8

    .line 829
    aget-byte v5, v7, v5

    invoke-static {v5}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v16

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v7, v0, v8

    invoke-static {v7}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v10

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 832
    iget-object v8, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    move/from16 v11, p2

    invoke-interface/range {v8 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onScanCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_2
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-boolean v0, v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 836
    :cond_3
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iget-boolean v0, v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    .line 837
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 838
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Z)V

    .line 841
    const-string v0, "PRODUCT_CODE"

    invoke-static {v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 843
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 845
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 847
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 848
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-object v4, v5

    .line 850
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->R:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    sget v5, Lcom/sxr/sdk/ble/keepfit/service/Ota;->u:I

    move-object/from16 v7, p1

    invoke-virtual {v4, v5, v0, v7}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_6
    move-object/from16 v7, p1

    .line 854
    :goto_1
    iget-boolean v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0:Z

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 855
    invoke-direct {v1, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Z)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLeScan "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 618
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 620
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0

    .line 626
    :cond_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 627
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 632
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 637
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 640
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 642
    const-string p1, "Failed to add network"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 646
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 650
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 652
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 653
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_6

    .line 662
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 663
    invoke-virtual {p1, v0, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 664
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    if-nez v0, :cond_5

    .line 667
    const-string p1, "Failed to enable network"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    return-void

    .line 670
    :cond_6
    const-string p1, "Network not found after adding"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v1, "BluetoothLeService"

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const-string p1, "FtpDownloadTask is already running!"

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    :goto_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    .line 129
    invoke-virtual {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G:Lcom/sxr/sdk/ble/keepfit/service/utils/f;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    filled-new-array/range {p1 .. p6}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    const-string p1, "FtpDownloadTask start executeOnExecutor."

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G0:I

    .line 135
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H:Landroid/os/Handler;

    .line 136
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I:Ljava/lang/Runnable;

    iget p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    int-to-long p3, p3

    const-wide/16 p5, 0x3e8

    mul-long p3, p3, p5

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "startFtpDownloadTask exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 8

    .line 569
    const-string v0, "BluetoothLeService"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    .line 580
    const-string p1, "Heart rate format UINT16."

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12

    goto :goto_0

    .line 583
    :cond_0
    const-string p1, "Heart rate format UINT8."

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 585
    :goto_0
    invoke-virtual {p2, p1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 586
    const-string p3, "Received heart rate: %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget-object p1, Lcom/sxr/sdk/ble/keepfit/service/b;->d0:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    .line 591
    array-length p1, p3

    if-lez p1, :cond_3

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    array-length p2, p3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_2

    aget-byte v5, p3, v4

    .line 594
    const-string v6, "%02X "

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    :cond_2
    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->d0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    :cond_3
    :goto_2
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 601
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "broadcastUpdate exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEVICE_AUTH_FLAG"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEVICE_AUTH_EXPIRE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " auth_flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", compare "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", expire time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothLeService"

    invoke-direct {p0, v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "authDevice exception: "

    if-nez v0, :cond_1

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-gez v0, :cond_1

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cancel auth device request while before expire time : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 678
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onAuthDeviceResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 688
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 690
    :try_start_1
    const-string v1, "action_cmd"

    const-string v2, "gear_auth"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string/jumbo v1, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string/jumbo v1, "version"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 695
    const-string/jumbo v2, "tid"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    const-string v2, "mac_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v2, "device_name"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string/jumbo p1, "vid"

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string p1, "phone_id"

    invoke-static {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string p1, "phone_name"

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string p1, "phone_os"

    invoke-static {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string p1, "body"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    const-string p1, "gear_auth url http://api.keeprapid.com:8081/ronaldo-gearcenter"

    invoke-direct {p0, v4, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "gear_auth req "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;

    invoke-direct {p1, p0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$e;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V

    const-string p2, "http://api.keeprapid.com:8081/ronaldo-gearcenter"

    invoke-static {p2, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftp connectToWifi : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L0:Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 606
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 608
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 611
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 9

    .line 111
    const-string/jumbo v0, "startFtpDownloadTask0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$$ExternalSyntheticLambda14;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v4, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$$ExternalSyntheticLambda14;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7

    const-string v0, "auth_flag"

    const-string v1, "exception: "

    const-string v2, "body"

    const-string v3, "BluetoothLeService"

    const-string v4, "DEVICE_AUTH_FLAG"

    .line 712
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "DEVICE_AUTH_EXPIRE"

    if-eqz v5, :cond_1

    .line 713
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E:I

    .line 714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth_flag : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E:I

    if-eqz p1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f()V

    return-void

    .line 720
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " set expire time : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 726
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " set expire time without auth_flag : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a([Ljava/lang/String;Z)V
    .locals 3

    .line 1009
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1012
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$t;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$t;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p1:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 1034
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 6

    const-string v0, "BLE"

    const-string v1, "refresh() \u8c03\u7528\u7ed3\u679c: "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "refresh"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 259
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 263
    const-string/jumbo v1, "\u5237\u65b0 GATT \u7f13\u5b58\u5931\u8d25"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 10

    const-string v0, "BluetoothLeService"

    const-string v1, "call onOpenRawDataNotificationState with state: "

    const-string v2, "descriptor "

    const-string v3, "descriptor result: "

    const/4 v4, 0x0

    .line 373
    :try_start_0
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 377
    :cond_0
    invoke-virtual {v5, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v5

    .line 378
    const-string/jumbo v6, "setCharacteristicNotification [%s] enable [%s] result [%s]"

    .line 379
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v4

    const/4 v7, 0x1

    aput-object v8, v9, v7

    const/4 v8, 0x2

    aput-object v5, v9, v8

    .line 380
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v5, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 387
    sget-object v6, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 388
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    .line 390
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1

    .line 393
    const-string p1, "disconnect while writeDescriptor return false after 100ms."

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    .line 396
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;

    invoke-direct {v1, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$y;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_1
    if-eqz p2, :cond_3

    .line 417
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 418
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_2

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {p1, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onOpenRawDataNotificationState(Z)V

    .line 426
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4
    return v4

    .line 427
    :cond_5
    :goto_0
    const-string p1, "BluetoothAdapter not initialized"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 488
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCharacteristicNotification exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/util/List;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    const-string v2, " , content :"

    const-string v4, ",title:"

    const-string v6, ",type:"

    const-string v8, " , nl_id \uff1a"

    const-string v9, "BluetoothLeService"

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P0:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 736
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "same nl_id , id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P0:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 739
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "not same nl_id , id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P0:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iput-object v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P0:Ljava/lang/String;

    .line 742
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v8, v1

    const/4 v11, 0x2

    .line 743
    iput v11, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    .line 745
    rem-int/lit8 v1, v8, 0x11

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-nez v1, :cond_3

    if-nez v8, :cond_1

    .line 747
    iput v13, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    goto :goto_0

    .line 748
    :cond_1
    div-int/lit8 v1, v8, 0x11

    if-gt v1, v12, :cond_2

    add-int/2addr v1, v11

    .line 749
    iput v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    goto :goto_0

    :cond_2
    add-int/2addr v1, v11

    .line 751
    iput v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    goto :goto_0

    .line 754
    :cond_3
    div-int/lit8 v1, v8, 0x11

    add-int/lit8 v2, v1, 0x1

    if-gt v2, v12, :cond_4

    add-int/2addr v1, v13

    .line 755
    iput v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    goto :goto_0

    :cond_4
    add-int/2addr v1, v13

    .line 757
    iput v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    .line 760
    :goto_0
    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h()Ljava/lang/String;

    move-result-object v2

    .line 761
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;

    const/4 v4, 0x0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v4, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 765
    :goto_1
    iget v6, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    if-gt v5, v6, :cond_9

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "i\uff1a "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x14

    .line 767
    new-array v6, v6, [B

    const/16 v7, 0x12

    .line 768
    aput-byte v7, v6, v10

    .line 769
    iget v7, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    int-to-byte v7, v5

    .line 770
    aput-byte v7, v6, v11

    if-ne v5, v4, :cond_5

    .line 773
    aput-byte v10, v6, v13

    int-to-byte v7, v3

    .line 774
    aput-byte v7, v6, v12

    .line 775
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 776
    array-length v14, v7

    const/4 v15, 0x5

    invoke-static {v7, v10, v6, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    const/16 v7, 0x11

    if-ne v5, v11, :cond_6

    .line 778
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 779
    array-length v15, v14

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v14, v10, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    if-lez v8, :cond_8

    add-int/lit8 v14, v5, -0x3

    mul-int/lit8 v14, v14, 0x11

    sub-int v15, v8, v14

    if-le v15, v7, :cond_7

    add-int/lit8 v7, v14, 0x11

    goto :goto_2

    :cond_7
    add-int v7, v14, v15

    :goto_2
    sub-int/2addr v7, v14

    .line 793
    invoke-static {v1, v14, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    :cond_8
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\u53d1\u9001\u5185\u5bb9\uff1a "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {v0, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return v4
.end method

.method private a(Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BluetoothLeService"

    const-string v0, "gattServices size: "

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    .line 272
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 284
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v5

    .line 285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gattCharacteristics "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 290
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    sget-object v8, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 298
    iget-object v8, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_2
    sget-object v8, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 300
    iget-object v8, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_3
    :goto_1
    iget-object v8, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x0:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 302
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 303
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hmBgs "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v2, v11}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 308
    :cond_5
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 318
    :cond_6
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_7
    const/4 v10, 0x1

    if-ge v5, v4, :cond_c

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    check-cast v11, Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_7

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 320
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    .line 322
    const-string v15, "find characteristic [%1$s]"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v16, 0x0

    :try_start_2
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v14, v3, v16

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    .line 331
    :cond_8
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v9, 0x1

    .line 334
    :cond_9
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v8, 0x1

    .line 337
    :cond_a
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v16, 0x0

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    .line 353
    const-string v0, "displayGattServices: find battery[%1$b], read[%2$b], write[%3$b], raw read[%2$b], raw write[%3$b]"

    .line 354
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v11, v8, v16

    aput-object v3, v8, v10

    const/4 v3, 0x2

    aput-object v4, v8, v3

    const/4 v3, 0x3

    aput-object v5, v8, v3

    const/4 v3, 0x4

    aput-object v7, v8, v3

    .line 355
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_d

    if-eqz v9, :cond_d

    .line 358
    invoke-direct {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    .line 359
    invoke-direct {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R()V

    .line 360
    const-string v0, "changed discovery connectState[%d] "

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v16

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 361
    iput-boolean v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter silence mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V0:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mUserDisconnected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 367
    :cond_d
    const-string v0, "can not found characteristic, will be reconnect 5 seconds later."

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 372
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v16, 0x0

    return v16
.end method

.method private a([BZ)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "BluetoothLeService"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 494
    const-string/jumbo v1, "writeBleCmd : cmd is null"

    invoke-direct {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 497
    :cond_0
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C()Z

    move-result v5

    if-nez v5, :cond_1

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writeBleCmd : connect state is false, drop cmd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-direct {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 507
    :cond_1
    iget-boolean v5, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V0:Z

    if-eqz v5, :cond_2

    .line 509
    const-string v5, "c6"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 510
    aget-object v5, v5, v3

    .line 511
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writeBleCmd : silence mode, not allow cmd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-direct {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 527
    :cond_2
    const-string v18, "fe"

    const-string v19, "ff"

    const-string v5, "a1"

    const-string v6, "f1"

    const-string v7, "f2"

    const-string v8, "f3"

    const-string v9, "f4"

    const-string v10, "f5"

    const-string v11, "f6"

    const-string v12, "f7"

    const-string v13, "f8"

    const-string v14, "f9"

    const-string v15, "fb"

    const-string v16, "fc"

    const-string v17, "fd"

    filled-new-array/range {v5 .. v19}, [Ljava/lang/String;

    move-result-object v5

    .line 529
    iget-boolean v6, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xf

    if-ge v6, v7, :cond_4

    .line 530
    aget-object v7, v5, v6

    .line 531
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writeBleCmd : sync history mode, not allow cmd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-direct {v0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 545
    :cond_4
    const-string v5, "49"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 546
    iget-object v4, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 547
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 548
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;

    .line 549
    invoke-virtual {v6}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->getCmd()[B

    move-result-object v6

    .line 550
    aget-byte v7, v6, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 552
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "writeBleCmd remove pre cmd : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writeBleCmd add "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 560
    iget-object v2, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;

    invoke-direct {v4, v3, v1}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;-><init>(I[B)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 563
    :cond_7
    iget-object v2, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;

    invoke-direct {v4, v3, v1}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;-><init>(I[B)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$z;

    invoke-direct {v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$z;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)[B
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    return-object p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[BI)[B
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 8

    const/16 p0, 0x9

    .line 798
    new-array v0, p0, [B

    .line 800
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 802
    aget-byte v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 805
    aget-byte v6, p1, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v3, 0x2

    .line 809
    aget-byte v1, p1, v1

    add-int/lit8 v4, v3, 0x3

    .line 810
    aget-byte v4, p1, v4

    const/16 v5, 0x4a

    if-ne v1, v5, :cond_2

    const/16 v1, 0x59

    if-ne v4, v1, :cond_2

    add-int/lit8 v3, v3, 0xa

    .line 814
    invoke-static {p1, v3, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    add-int/2addr v5, v4

    add-int/lit8 v3, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private a([BI)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_0

    .line 190
    aget-byte v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p2, v1

    .line 192
    aput-byte p2, p1, v2

    return-object p1
.end method

.method private a0()I
    .locals 7

    .line 2
    const-string/jumbo v0, "setUserInfo"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 5
    new-array v0, v0, [B

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gender:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "age:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 9
    aput-byte v3, v0, v1

    .line 11
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 12
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0:I

    or-int/lit16 v1, v1, 0x80

    .line 13
    const-string v5, "gender:male"

    invoke-direct {p0, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l0:I

    .line 16
    const-string v5, "gender:female"

    invoke-direct {p0, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AA:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    int-to-byte v1, v1

    .line 20
    aput-byte v1, v0, v4

    .line 21
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h0:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 22
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i0:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 23
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k0:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 25
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 26
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic a0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .line 6
    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 8
    sput p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c:I

    return p0
.end method

.method private b(II)I
    .locals 4

    .line 29
    const-string/jumbo v0, "setAppState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 33
    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 34
    aput-byte v1, v0, v2

    .line 36
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(I)[B

    move-result-object p1

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 37
    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->b(I)[B

    move-result-object p1

    const/4 p2, 0x5

    .line 40
    invoke-static {p1, v2, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 44
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(IIII)I
    .locals 3

    .line 285
    const-string/jumbo v0, "sendPhoneCallState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 289
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x43

    .line 290
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 292
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 293
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 294
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x4

    .line 295
    aput-byte p1, v0, p2

    .line 297
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 299
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(ILjava/lang/String;)I
    .locals 3

    .line 244
    const-string/jumbo v0, "setReminderText0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 248
    new-array v0, v0, [B

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 249
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 250
    aput-byte p1, v0, v1

    .line 252
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 253
    :goto_0
    array-length p2, p1

    if-ge v2, p2, :cond_1

    const/16 p2, 0x12

    if-ge v2, p2, :cond_1

    add-int/lit8 p2, v2, 0x2

    .line 254
    aget-byte v1, p1, v2

    aput-byte v1, v0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 258
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 4

    .line 300
    const-string/jumbo v0, "setECardInfoCrc0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 303
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;->getItemsECard()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v2

    .line 311
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {v3}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(II)V

    .line 315
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/util/List;)V

    .line 317
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;Z)I
    .locals 9

    .line 362
    const-string/jumbo p2, "setECardItemContent0"

    invoke-direct {p0, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 363
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    move-result p2

    rem-int/lit8 p2, p2, 0x10

    .line 366
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 377
    :cond_1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 378
    array-length v0, p1

    const/16 v1, 0xf

    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    const/16 v6, 0x14

    .line 380
    new-array v6, v6, [B

    const/16 v7, 0x4c

    .line 382
    aput-byte v7, v6, v3

    .line 383
    aput-byte v5, v6, v2

    int-to-byte v7, p2

    const/4 v8, 0x2

    .line 384
    aput-byte v7, v6, v8

    int-to-byte v7, v0

    const/4 v8, 0x3

    .line 385
    aput-byte v7, v6, v8

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v7

    .line 386
    aput-byte v8, v6, v5

    .line 389
    array-length v5, p1

    mul-int/lit8 v4, v4, 0xf

    sub-int/2addr v5, v4

    if-gt v5, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0xf

    :goto_1
    const/4 v8, 0x5

    .line 393
    invoke-static {p1, v4, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    invoke-direct {p0, v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_3
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 401
    :cond_4
    :goto_2
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 4

    .line 402
    const-string/jumbo v0, "setSmsRspInfoCrc0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 405
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->getItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-virtual {v2}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(II)V

    .line 415
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Ljava/util/List;)V

    .line 417
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q0:I

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Z)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ZII)I
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(ZII)I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 19
    const-string/jumbo v0, "setWifiHotSpotInfoEx0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0x3c

    .line 23
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    goto :goto_0

    .line 26
    :cond_1
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    .line 28
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;[B)I
    .locals 3

    const-string v0, "BluetoothLeService"

    const-string/jumbo v1, "writeCharacteristic0"

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 124
    const-string p1, "mBluetoothGatt null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    if-nez v2, :cond_1

    .line 130
    const-string p1, "gap_service null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_1
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_2

    .line 136
    const-string p1, "dev_name null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    .line 139
    :cond_2
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 140
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p1

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeCharacteristic0 exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method private b(Z)I
    .locals 1

    .line 234
    const-string v0, "getOtaInfo"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h1:Z

    .line 238
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    iput-boolean p1, v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    .line 241
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r()I

    .line 243
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private b(ZII)I
    .locals 4

    .line 215
    const-string/jumbo v0, "setHeartRateMode2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 218
    new-array v1, v0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 220
    aput-byte v0, v1, v3

    .line 221
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    .line 222
    aget-byte p2, p1, v3

    aput-byte p2, v1, v2

    .line 223
    aget-byte p2, p1, v2

    const/4 v0, 0x2

    aput-byte p2, v1, v0

    .line 224
    aget-byte p2, p1, v0

    const/4 v0, 0x3

    aput-byte p2, v1, v0

    .line 225
    aget-byte p1, p1, v0

    const/4 p2, 0x4

    aput-byte p1, v1, p2

    goto :goto_0

    :cond_1
    const/16 p1, 0x15

    .line 227
    aput-byte p1, v1, v3

    :goto_0
    int-to-byte p1, p3

    const/4 p2, 0x5

    .line 230
    aput-byte p1, v1, p2

    .line 232
    invoke-direct {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 233
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)J
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z0:J

    return-wide p1
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 55
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    iget-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;

    invoke-direct {v2, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$x;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;-><init>(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGatt;Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    return-void
.end method

.method private b(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftp connectWithNetworkSuggestion : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 154
    invoke-static {v0, p2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 155
    invoke-static {v0, p3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiNetworkSuggestion$Builder;)Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v0

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiManager;Ljava/util/List;)I

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/WifiManager;Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftp Failed to add network suggestion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 195
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p1

    .line 196
    invoke-static {p1, p2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p1

    .line 197
    invoke-static {p1, p3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/net/wifi/WifiNetworkSpecifier$Builder;Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p1

    .line 198
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/WifiNetworkSpecifier$Builder;)Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p1

    .line 200
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 202
    invoke-static {v0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/NetworkRequest$Builder;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 205
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 206
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$d;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Landroid/net/ConnectivityManager;Ljava/lang/String;I)V

    invoke-virtual {v4, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftp onConnectionFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->m0:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v1, "errMessage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo p1, "ssid"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string p1, "password"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo p1, "retryTimes"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setECardItemCrc size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 324
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/16 v4, 0xa

    if-ge v3, v4, :cond_5

    .line 326
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v4

    .line 327
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {v5}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v4

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " crc: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    rem-int/lit8 v5, v3, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-nez v5, :cond_1

    const/16 v0, 0x14

    .line 332
    new-array v10, v0, [B

    const/16 v11, 0x4c

    .line 333
    aput-byte v11, v10, v2

    const/4 v11, 0x2

    .line 334
    aput-byte v11, v10, v8

    add-int/lit8 v12, v3, 0x1

    int-to-byte v12, v12

    .line 335
    aput-byte v12, v10, v11

    .line 336
    aput-byte v2, v10, v7

    const/4 v11, 0x4

    :goto_1
    if-ge v11, v0, :cond_0

    .line 339
    aput-byte v2, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " init value"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 344
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->d(Ljava/lang/String;)[B

    move-result-object v4

    .line 345
    array-length v10, v4

    .line 346
    invoke-static {v4, v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a([BI)[B

    move-result-object v4

    const/4 v10, 0x0

    .line 349
    :goto_2
    array-length v11, v4

    if-ge v10, v11, :cond_2

    if-ge v10, v9, :cond_2

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v10

    add-int/2addr v11, v9

    .line 351
    aget-byte v12, v4, v10

    aput-byte v12, v0, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 354
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " hex: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, " send hex: "

    if-ne v5, v7, :cond_3

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    goto :goto_3

    .line 359
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_4

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private b([Ljava/lang/String;Z)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$s;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o1:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 284
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c([B)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_1
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 47
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v7, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable notification uuid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return v2
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "onConnectStateChanged + "

    const-string v1, "exception: "

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 57
    const-string p1, "BluetoothLeService"

    const-string p2, "connectAuto ignored when connecting state."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 60
    sget p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onConnectStateChanged(I)V

    .line 61
    const-string p1, "BluetoothLeService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v0, 0x1

    .line 68
    :try_start_3
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string/jumbo v2, "trying connect to auto [%1$s] "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 72
    :cond_2
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_3

    .line 77
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 79
    const-string p1, "BluetoothLeService"

    const-string p2, "BluetoothAdapter not initialized or unspecified address."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    .line 82
    :cond_3
    :try_start_5
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_4

    .line 84
    const-string p1, "BluetoothLeService"

    const-string p2, "Device not found.  Unable to connect."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    .line 104
    :cond_4
    :try_start_6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_5
    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_5

    .line 105
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_1

    .line 107
    :cond_6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 109
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_7

    .line 110
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, p2, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    .line 113
    :cond_7
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v0, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    .line 116
    :goto_2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string p1, "BluetoothLeService"

    const-string p2, "Trying to create a new connection auto"

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v0, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :catch_1
    move-exception p1

    .line 121
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectAuto exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v3

    :cond_8
    :goto_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method private b([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeBleCmd exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic b0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l()I

    move-result p0

    return p0
.end method

.method private b0()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Z)V

    return-void
.end method

.method private c(I)I
    .locals 3

    .line 300
    const-string v0, "getAdvSensorOfflineDataByDay"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 303
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x55

    .line 305
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 306
    aput-byte p1, v0, v1

    .line 308
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 309
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private c(II)I
    .locals 4

    .line 180
    const-string/jumbo v0, "setBPAdjust0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 184
    new-array v0, v0, [B

    const/16 v1, 0x33

    const/4 v2, 0x0

    .line 185
    aput-byte v1, v0, v2

    .line 186
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    .line 187
    aget-byte v1, p1, v2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 188
    aget-byte p1, p1, v3

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 190
    invoke-static {p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    .line 191
    aget-byte p2, p1, v2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    .line 192
    aget-byte p1, p1, v3

    const/4 p2, 0x4

    aput-byte p1, v0, p2

    .line 194
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 196
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private c(IIII)I
    .locals 3

    .line 225
    const-string/jumbo v0, "sendPhoneVolume0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 229
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x49

    .line 230
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 232
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    .line 233
    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x3

    .line 234
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x4

    .line 235
    aput-byte p1, v0, p2

    .line 237
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 239
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private c(ILjava/lang/String;)I
    .locals 2

    .line 296
    const-string v0, "BluetoothLeService"

    const-string/jumbo v1, "startFileOta0"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-direct {v1, p0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    .line 299
    invoke-virtual {v1, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R:I

    return p1
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(II)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;IIII)I
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;ILjava/lang/String;)I
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;J)I
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(J)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Z)I

    move-result p0

    return p0
.end method

.method private c(Z)I
    .locals 5

    .line 310
    const-string v0, "openAiAudioState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 313
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 315
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    .line 316
    aput-byte v1, v0, v3

    const/4 v4, 0x2

    .line 317
    aput-byte v3, v0, v4

    const/4 v4, 0x3

    .line 318
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 319
    aput-byte v3, v0, v4

    const/4 v4, 0x5

    .line 320
    aput-byte v1, v0, v4

    const/4 v4, 0x6

    .line 321
    aput-byte v3, v0, v4

    const/4 v3, 0x7

    .line 322
    aput-byte v1, v0, v3

    int-to-byte p1, p1

    .line 323
    aput-byte p1, v0, v2

    .line 325
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 326
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .line 5
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSmsRspItemCrc size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 246
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 248
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-virtual {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(ILjava/lang/String;)I

    move-result v4

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " crc: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    rem-int/lit8 v5, v3, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-nez v5, :cond_1

    const/16 v0, 0x14

    .line 253
    new-array v10, v0, [B

    const/16 v11, 0x4d

    .line 254
    aput-byte v11, v10, v2

    const/4 v11, 0x2

    .line 255
    aput-byte v11, v10, v8

    add-int/lit8 v12, v3, 0x1

    int-to-byte v12, v12

    .line 256
    aput-byte v12, v10, v11

    .line 257
    aput-byte v2, v10, v7

    const/4 v11, 0x4

    :goto_1
    if-ge v11, v0, :cond_0

    .line 260
    aput-byte v2, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " init value"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 265
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->d(Ljava/lang/String;)[B

    move-result-object v4

    .line 266
    array-length v10, v4

    .line 267
    invoke-static {v4, v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a([BI)[B

    move-result-object v4

    const/4 v10, 0x0

    .line 270
    :goto_2
    array-length v11, v4

    if-ge v10, v11, :cond_3

    if-ge v10, v9, :cond_3

    if-le v3, v7, :cond_2

    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    move v11, v3

    :goto_3
    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v10

    add-int/2addr v11, v9

    .line 274
    aget-byte v12, v4, v10

    aput-byte v12, v0, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const-string v4, " send hex: "

    if-ne v5, v7, :cond_4

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    goto :goto_4

    .line 293
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_5

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private c([Ljava/lang/String;Z)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$p;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$p;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l1:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 224
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d([B)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 9

    .line 12
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_1
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 14
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    invoke-direct {p0, v7, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disable notification uuid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return v2
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "onConnectStateChanged + "

    const-string v1, "exception: "

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 19
    const-string p1, "BluetoothLeService"

    const-string p2, "connectManual ignored when connecting state."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_0

    .line 22
    sget p2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-interface {p1, p2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onConnectStateChanged(I)V

    .line 23
    const-string p1, "BluetoothLeService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 30
    :cond_1
    :try_start_3
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    const-string p1, "BluetoothLeService"

    const-string/jumbo v0, "trying connect to manual [%1$s]."

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    goto :goto_3

    .line 41
    :cond_2
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_3

    .line 43
    const-string p1, "BluetoothLeService"

    const-string p2, "Device not found.  Unable to connect."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    .line 62
    :cond_3
    :try_start_5
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_4

    .line 63
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_1

    .line 65
    :cond_5
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 67
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_6

    .line 68
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v0, 0x2

    invoke-static {p1, p0, v3, p2, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    goto :goto_2

    .line 71
    :cond_6
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r0:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v3, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    .line 74
    :goto_2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v0:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string p1, "BluetoothLeService"

    const-string p2, "Trying to create a new connection."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    .line 77
    :cond_7
    :goto_3
    :try_start_6
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 79
    const-string p1, "BluetoothLeService"

    const-string p2, "BluetoothAdapter not initialized or unspecified address."

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v3

    :catch_1
    move-exception p1

    .line 120
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectManual exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothLeService"

    invoke-direct {p0, p2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, v3, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method private c([B)Z
    .locals 4

    const-string v0, "BluetoothLeService"

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Z)V

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 125
    const-string p1, "mBluetoothGatt null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    if-nez v2, :cond_1

    return v1

    .line 141
    :cond_1
    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    .line 142
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_2

    .line 144
    const-string p1, "dev_name null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 150
    :cond_2
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 151
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeCharacteristic exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private c0()V
    .locals 0

    return-void
.end method

.method static synthetic c0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)[Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    return-object p0
.end method

.method private d(I)I
    .locals 3

    .line 1318
    const-string v0, "getEcgData0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 1321
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    const/16 v0, 0x14

    .line 1323
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2c

    .line 1324
    aput-byte v2, v0, v1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 1325
    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 1326
    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 1327
    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 1328
    aput-byte p1, v0, v1

    .line 1330
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 1332
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(I)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;II)I
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(II)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Z)I

    move-result p0

    return p0
.end method

.method private d(Z)I
    .locals 5

    .line 1372
    const-string v0, "openAiState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 1375
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 1377
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    .line 1378
    aput-byte v1, v0, v3

    const/4 v4, 0x2

    .line 1379
    aput-byte v3, v0, v4

    const/4 v4, 0x3

    .line 1380
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 1381
    aput-byte v3, v0, v4

    .line 1382
    aput-byte v1, v0, v2

    const/4 v2, 0x6

    .line 1383
    aput-byte v3, v0, v2

    const/4 v2, 0x7

    .line 1384
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/16 v1, 0x8

    .line 1385
    aput-byte p1, v0, v1

    .line 1387
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 1388
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic d()Ljava/lang/Runnable;
    .locals 1

    .line 5
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    return-object p1
.end method

.method private d(II)V
    .locals 4

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setECardsTotalCrc start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 1355
    new-array v0, v0, [B

    const/16 v2, 0x4c

    const/4 v3, 0x0

    .line 1356
    aput-byte v2, v0, v3

    const/4 v2, 0x1

    .line 1357
    aput-byte v2, v0, v2

    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    const/16 p1, 0xa

    :cond_0
    int-to-byte p1, p1

    const/4 v2, 0x2

    .line 1360
    aput-byte p1, v0, v2

    .line 1362
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->d(Ljava/lang/String;)[B

    move-result-object p1

    .line 1363
    array-length p2, p1

    .line 1364
    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a([BI)[B

    move-result-object p1

    .line 1366
    :goto_0
    array-length p2, p1

    if-ge v3, p2, :cond_1

    const/4 p2, 0x4

    if-ge v3, p2, :cond_1

    add-int/lit8 p2, v3, 0x3

    .line 1367
    aget-byte v2, p1, v3

    aput-byte v2, v0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1370
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setECardsTotalCrc end: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    return-void
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 60

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v8, "BluetoothLeService"

    const-string v2, "connectToWifi ssid : "

    const-string v3, "deviceName : "

    const-string v4, "call onGetDeviceFileState fileCount : "

    const-string v5, "call onNotifyAiConnectionMethod : "

    const-string v6, "call onNotifyDeviceWifiApState device State : "

    const-string v7, "call onNotifyDeviceStateInfo device State : "

    const-string/jumbo v9, "unknown wifi cmd : "

    const-string v10, "call onGetWifiSsidCount ssidCount : "

    const-string v11, "recv eq type: "

    const-string v12, "onNotifySmsRspNeedUpdate: "

    const-string v13, "onNotifyECardNeedUpdate: "

    const-string/jumbo v14, "unknown bt cmd : "

    const-string v15, "fetch ota device : "

    move-object/from16 v16, v9

    const-string v9, "cal crc "

    move-object/from16 v17, v5

    const-string v5, "mac "

    move-object/from16 v18, v2

    const-string v2, "cmd length too short : "

    move-object/from16 v19, v3

    const-string v3, "get cmd : "

    if-eqz v0, :cond_bc

    move-object/from16 v20, v7

    const/16 v21, 0x0

    .line 33
    :try_start_0
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 34
    const-string v23, ""

    move-object/from16 v24, v6

    .line 35
    array-length v6, v7

    move-object/from16 v25, v10

    const/4 v10, 0x1

    if-le v6, v10, :cond_0

    .line 36
    aget-object v23, v7, v21

    :cond_0
    move-object/from16 v6, v23

    .line 38
    const-string v10, "0B"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 39
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    array-length v0, v7

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_2
    const-string v0, "01"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-direct {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z()I

    .line 49
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 50
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceTime(I)V

    :cond_3
    :goto_0
    move-object v11, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_27

    .line 51
    :cond_4
    const-string v0, "81"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceTime(I)V

    goto :goto_0

    .line 54
    :cond_5
    const-string v0, "02"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    const-string v0, "onSetUserInfo: success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 57
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetUserInfo(I)V

    goto :goto_0

    .line 58
    :cond_6
    const-string v0, "82"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    const-string v0, "onSetUserInfo: failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 63
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetUserInfo(I)V

    goto :goto_0

    .line 64
    :cond_7
    const-string v0, "03"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 p1, 0xd

    const/16 v23, 0xb

    const/16 v26, 0xa

    const/16 v27, 0xc

    const/16 v28, 0x9

    const/16 v10, 0xf

    const/16 v29, 0x13

    const/16 v30, 0x7

    const/16 v31, 0x8

    const/16 v32, 0x6

    const/16 v33, 0x5

    const/4 v2, 0x3

    const/16 v34, 0x12

    const/16 v35, 0x4

    const/16 v36, 0x2

    const/16 v3, 0x10

    if-eqz v0, :cond_8

    .line 65
    const-string v0, "ongetcursportdata: success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    int-to-long v13, v0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    .line 82
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    .line 83
    invoke-interface/range {v11 .. v20}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetCurSportData(IJIIIIII)V

    goto/16 :goto_0

    .line 84
    :cond_8
    const-string v0, "13"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    const-string v0, "ongetcursportdata: success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v31

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v32

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v33

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    aget-object v4, v7, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 99
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_3

    int-to-long v13, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    .line 100
    invoke-interface/range {v11 .. v20}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetCurSportData(IJIIIIII)V

    goto/16 :goto_0

    .line 101
    :cond_9
    const-string v0, "83"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    const-string v0, "ongetcursportdata: failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_a
    const-string v0, "04"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    const-string/jumbo v0, "sendVibrationSignal: success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 107
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSendVibrationSignal(I)V

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v0, "84"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 110
    const-string/jumbo v0, "sendVibrationSignal: failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 112
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSendVibrationSignal(I)V

    goto/16 :goto_0

    .line 113
    :cond_c
    const-string v0, "06"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    const-string v0, "onGetDeviceAction "

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1

    .line 115
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 117
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceAction(I)V

    goto/16 :goto_0

    .line 118
    :cond_d
    const-string v0, "07"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    const-string/jumbo v0, "setphotomode success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 121
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetPhontMode(I)V

    goto/16 :goto_0

    .line 123
    :cond_e
    const-string v0, "87"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    const-string/jumbo v0, "setphotomode failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 126
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetPhontMode(I)V

    goto/16 :goto_0

    .line 127
    :cond_f
    const-string v0, "08"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    const-string/jumbo v0, "setidletime success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 130
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetIdleTime(I)V

    goto/16 :goto_0

    .line 131
    :cond_10
    const-string v0, "88"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    const-string/jumbo v0, "setidletime failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 134
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetIdleTime(I)V

    goto/16 :goto_0

    .line 135
    :cond_11
    const-string v0, "09"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 136
    const-string/jumbo v0, "setsleeptime success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 138
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetSleepTime(I)V

    goto/16 :goto_0

    .line 139
    :cond_12
    const-string v0, "89"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    const-string/jumbo v0, "setsleeptime failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 142
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetSleepTime(I)V

    goto/16 :goto_0

    .line 143
    :cond_13
    const-string v0, "0B"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v22, 0x1

    .line 145
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 147
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v3, :cond_3

    .line 148
    invoke-interface {v3, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceBatery(II)V

    goto/16 :goto_0

    .line 150
    :cond_14
    const-string v0, "8B"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 151
    const-string v0, "read battery failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_15
    const-string v0, "0C"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 154
    const-string v0, "read deviceinfo success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v38

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v8, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v7, v26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v7, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v7, v29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v34

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x11

    aget-object v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x1

    .line 163
    aget-object v5, v7, v22

    invoke-static {v5, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    aget-object v11, v7, v36

    invoke-static {v11, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    aget-object v13, v7, v2

    invoke-static {v13, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    const/16 v37, 0x3

    aget-object v2, v7, v35

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    aget-object v2, v7, v33

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    aget-object v2, v7, v32

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    aget-object v2, v7, v30

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v42

    aget-object v2, v7, v31

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v44

    aget-object v2, v7, v28

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v46

    aget-object v2, v7, v26

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    aget-object v2, v7, v23

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v50

    aget-object v2, v7, v27

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v52

    aget-object v2, v7, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v54

    const/16 v2, 0xe

    aget-object v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v56

    aget-object v2, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v58

    new-array v2, v10, [J

    const/16 v21, 0x0

    aput-wide v5, v2, v21

    const/16 v22, 0x1

    aput-wide v11, v2, v22

    aput-wide v13, v2, v36

    aput-wide v16, v2, v37

    aput-wide v18, v2, v35

    aput-wide v24, v2, v33

    aput-wide v42, v2, v32

    aput-wide v44, v2, v30

    aput-wide v46, v2, v31

    aput-wide v48, v2, v28

    aput-wide v50, v2, v26

    aput-wide v52, v2, v23

    aput-wide v54, v2, v27

    aput-wide v56, v2, p1

    const/16 v5, 0xe

    aput-wide v58, v2, v5

    const-wide/32 v5, 0x4a59af55

    .line 166
    invoke-static {v5, v6, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/e;->a(J[J)J

    move-result-wide v5

    .line 171
    invoke-static {v4, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v5, v10

    if-nez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_1

    :cond_16
    const/4 v2, 0x0

    .line 172
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " return crc "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " result "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v3, :cond_3

    move-object/from16 v39, v0

    move/from16 v42, v2

    move-object/from16 v37, v3

    .line 174
    invoke-interface/range {v37 .. v42}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v0, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    .line 175
    iget-boolean v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h1:Z

    if-eqz v5, :cond_3

    .line 176
    const-string v5, "PRODUCT_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v8, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 180
    iget-object v6, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-virtual {v6, v5}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 181
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 182
    iput-boolean v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h1:Z

    .line 183
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i1:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    const/16 v3, 0x64

    if-ne v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_2

    :cond_17
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->g:Z

    goto/16 :goto_0

    :cond_18
    const/16 v37, 0x3

    .line 187
    const-string v0, "8C"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 188
    const-string v0, "read battery failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_19
    const-string v0, "0D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 191
    const-string/jumbo v0, "set alarm id success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 193
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetAlarm(I)V

    goto/16 :goto_0

    .line 195
    :cond_1a
    const-string v0, "8D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 196
    const-string/jumbo v0, "set alarm id failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 198
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetAlarm(I)V

    goto/16 :goto_0

    .line 200
    :cond_1b
    const-string v0, "1C"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 201
    const-string/jumbo v0, "set alarm name success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_1c
    const-string v0, "9C"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 206
    const-string/jumbo v0, "set alarm name failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_1d
    const-string v0, "0E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 211
    const-string/jumbo v0, "setdevicemode success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 213
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceMode(I)V

    goto/16 :goto_0

    .line 214
    :cond_1e
    const-string v0, "8E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 215
    const-string/jumbo v0, "setdevicemode failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 217
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceMode(I)V

    goto/16 :goto_0

    .line 218
    :cond_1f
    const-string v0, "10"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    const-wide/16 v38, 0x3e8

    if-eqz v0, :cond_22

    .line 221
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    int-to-long v4, v0

    .line 222
    new-instance v0, Ljava/util/Date;

    mul-long v11, v4, v38

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 223
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 224
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-wide v13, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_21

    .line 230
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_20

    add-int/lit8 v2, v0, 0x5

    .line 231
    aget-object v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v11 .. v16}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    :cond_20
    const-wide/16 v4, 0x3c

    add-long/2addr v13, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    const/4 v10, 0x1

    .line 239
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 241
    :cond_22
    const-string v0, "11"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    int-to-long v4, v0

    .line 245
    new-instance v0, Ljava/util/Date;

    mul-long v11, v4, v38

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 246
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-wide v13, v4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_24

    .line 252
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_23

    add-int/lit8 v2, v0, 0x5

    .line 253
    aget-object v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x0

    const/4 v12, 0x2

    invoke-interface/range {v11 .. v16}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    :cond_23
    const-wide/16 v4, 0x3c

    add-long/2addr v13, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    const/4 v10, 0x1

    .line 261
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 263
    :cond_25
    const-string v0, "90"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 264
    const-string v0, "getdayabyday failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    .line 266
    invoke-interface {v0, v10, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V

    goto/16 :goto_0

    .line 268
    :cond_26
    const-string v0, "14"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    int-to-long v11, v0

    .line 272
    aget-object v0, v7, v33

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 273
    aget-object v0, v7, v32

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 274
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    .line 275
    invoke-interface/range {v9 .. v14}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetSenserData(IJII)V

    goto/16 :goto_0

    .line 278
    :cond_27
    const-string v0, "94"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 279
    const-string v0, "open hearttest failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 281
    invoke-interface/range {v2 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetSenserData(IJII)V

    goto/16 :goto_0

    .line 282
    :cond_28
    const-string v0, "15"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 283
    const-string v0, "close hearttest success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 285
    invoke-interface/range {v2 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetSenserData(IJII)V

    goto/16 :goto_0

    .line 286
    :cond_29
    const-string v0, "95"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 287
    const-string v0, "close hearttest failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 289
    invoke-interface/range {v2 .. v7}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetSenserData(IJII)V

    goto/16 :goto_0

    .line 290
    :cond_2a
    const-string v0, "16"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v22, 0x1

    .line 293
    aget-object v0, v7, v22

    const-string v2, "FF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 294
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    .line 295
    invoke-interface {v0, v4, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V

    goto/16 :goto_0

    :cond_2b
    const/16 v22, 0x1

    .line 297
    aget-object v0, v7, v22

    const-string v2, "F0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c1:I

    goto/16 :goto_0

    :cond_2c
    const/16 v22, 0x1

    .line 300
    aget-object v0, v7, v22

    const-string v2, "AA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 301
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d1:I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e1:I

    goto/16 :goto_0

    :cond_2d
    const/16 v22, 0x1

    .line 303
    aget-object v0, v7, v22

    const-string v2, "A0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v2, v7, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    int-to-long v13, v0

    .line 306
    aget-object v0, v7, v31

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v2, v7, v28

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v26

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v23

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v27

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, p1

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    .line 309
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 312
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_2e

    const/4 v12, 0x3

    const/4 v15, 0x0

    .line 313
    invoke-interface/range {v11 .. v16}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    :cond_2e
    const-wide/16 v4, 0x3c

    add-long v17, v13, v4

    const/16 v0, 0xe

    .line 317
    aget-object v0, v7, v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v2, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v3

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x11

    aget-object v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v34

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    aget-object v2, v7, v29

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 323
    iget-object v15, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v15, :cond_2f

    const/16 v16, 0x3

    const/16 v19, 0x0

    .line 324
    invoke-interface/range {v15 .. v20}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    move-wide/from16 v13, v17

    goto :goto_5

    :cond_2f
    move-wide/from16 v13, v17

    .line 326
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 327
    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d1:I

    iget v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c1:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e1:I

    if-ne v2, v0, :cond_3

    .line 328
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v4, 0x3

    .line 329
    invoke-interface {v0, v4, v13, v14}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V

    goto/16 :goto_0

    .line 333
    :cond_30
    const-string v0, "96"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 334
    const-string v0, "getheartdata detail failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    .line 336
    invoke-interface {v0, v4, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V

    goto/16 :goto_0

    .line 338
    :cond_31
    const-string v0, "19"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 339
    const-string v0, "autohearttest success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 341
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->setAutoHeartMode(I)V

    goto/16 :goto_0

    .line 342
    :cond_32
    const-string v0, "99"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 343
    const-string v0, "autohearttest failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 345
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->setAutoHeartMode(I)V

    goto/16 :goto_0

    .line 346
    :cond_33
    const-string v0, "1B"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 347
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 348
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceInfo(I)V

    goto/16 :goto_0

    .line 349
    :cond_34
    const-string v0, "9B"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 350
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 351
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceInfo(I)V

    goto/16 :goto_0

    .line 352
    :cond_35
    const-string v0, "1D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 353
    const-string v0, "onSetHourFormat success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 355
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetHourFormat(I)V

    goto/16 :goto_0

    .line 358
    :cond_36
    const-string v0, "21"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 359
    const-string/jumbo v0, "setLanguage success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 361
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetLanguage(I)V

    goto/16 :goto_0

    .line 363
    :cond_37
    const-string v0, "A1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 364
    const-string/jumbo v0, "setLanguage failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 366
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetLanguage(I)V

    goto/16 :goto_0

    .line 367
    :cond_38
    const-string v0, "9D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 368
    const-string v0, "onSetHourFormat failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 370
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetHourFormat(I)V

    goto/16 :goto_0

    .line 371
    :cond_39
    const-string v0, "1F"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 372
    const-string v0, "onGetDeviceCode success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 374
    new-array v0, v0, [B

    const/4 v2, 0x1

    .line 375
    :goto_6
    array-length v4, v7

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3a

    const/16 v4, 0x13

    if-ge v2, v4, :cond_3a

    add-int/lit8 v4, v2, -0x1

    .line 376
    aget-object v5, v7, v2

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    const/16 v29, 0x13

    goto :goto_6

    .line 377
    :cond_3a
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceCode([B)V

    goto/16 :goto_0

    .line 379
    :cond_3b
    const-string v0, "9F"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 380
    const-string v0, "onGetDeviceCode failure"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v2, 0x12

    .line 382
    new-array v2, v2, [B

    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceCode([B)V

    goto/16 :goto_0

    .line 383
    :cond_3c
    const-string v0, "1E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 384
    const-string v0, "onSetDeviceCode success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 386
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceCode(I)V

    goto/16 :goto_0

    .line 387
    :cond_3d
    const-string v0, "9E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 388
    const-string v0, "onSetDeviceCode failure"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 390
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceCode(I)V

    goto/16 :goto_0

    .line 391
    :cond_3e
    const-string v0, "12"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 392
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 393
    iget v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O0:I

    if-ne v2, v0, :cond_3

    .line 394
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 395
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetNotify(I)V

    goto/16 :goto_0

    .line 397
    :cond_3f
    const-string v0, "92"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 398
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 399
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetNotify(I)V

    goto/16 :goto_0

    .line 405
    :cond_40
    const-string v0, "20"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v22, 0x1

    .line 406
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 407
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v37, 0x3

    .line 408
    aget-object v4, v7, v37

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 409
    aget-object v5, v7, v35

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 410
    aget-object v6, v7, v33

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 411
    aget-object v9, v7, v32

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 412
    aget-object v10, v7, v30

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 413
    aget-object v11, v7, v31

    invoke-static {v11, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 414
    aget-object v12, v7, v28

    invoke-static {v12, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 415
    aget-object v13, v7, v26

    invoke-static {v13, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 416
    aget-object v14, v7, v23

    invoke-static {v14, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 417
    aget-object v7, v7, v27

    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 419
    iget-object v7, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v7, :cond_3

    .line 420
    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v0

    .line 421
    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v2

    .line 422
    invoke-static {v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v4

    .line 423
    invoke-static {v5}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v5

    .line 424
    invoke-static {v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v6

    .line 425
    invoke-static {v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v7

    .line 426
    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v9

    .line 427
    invoke-static {v11}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v10

    .line 428
    invoke-static {v12}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v11

    .line 429
    invoke-static {v13}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v12

    .line 430
    invoke-static {v14}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v13

    .line 431
    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->b(I)[Z

    move-result-object v3

    const/16 v14, 0xc

    .line 432
    new-array v14, v14, [[Z

    const/16 v21, 0x0

    aput-object v0, v14, v21

    const/16 v22, 0x1

    aput-object v2, v14, v22

    aput-object v4, v14, v36

    const/16 v37, 0x3

    aput-object v5, v14, v37

    aput-object v6, v14, v35

    aput-object v7, v14, v33

    aput-object v9, v14, v32

    aput-object v10, v14, v30

    aput-object v11, v14, v31

    aput-object v12, v14, v28

    aput-object v13, v14, v26

    aput-object v3, v14, v23

    invoke-static {v14}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([[Z)[Z

    move-result-object v0

    .line 433
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/4 v10, 0x1

    invoke-interface {v2, v10, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetBandFunction(I[Z)V

    goto/16 :goto_0

    .line 435
    :cond_41
    const-string v0, "A0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 436
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 437
    new-array v3, v2, [Z

    invoke-interface {v0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetBandFunction(I[Z)V

    goto/16 :goto_0

    .line 439
    :cond_42
    const-string v0, "22"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 440
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    .line 441
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceAction(I)V

    goto/16 :goto_0

    .line 443
    :cond_43
    const-string v0, "05"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 444
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 445
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetAntiLost(I)V

    goto/16 :goto_0

    .line 447
    :cond_44
    const-string v0, "85"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 448
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 449
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetAntiLost(I)V

    goto/16 :goto_0

    .line 451
    :cond_45
    const-string v0, "23"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 452
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 453
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetBloodPressureMode(I)V

    goto/16 :goto_0

    .line 455
    :cond_46
    const-string v0, "A3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 456
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 457
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetBloodPressureMode(I)V

    goto/16 :goto_0

    .line 459
    :cond_47
    const-string v0, "24"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v22, 0x1

    .line 460
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 461
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v37, 0x3

    .line 462
    aget-object v0, v7, v37

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 463
    aget-object v0, v7, v35

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    const/16 v33, 0x5

    .line 464
    aget-object v0, v7, v33

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 465
    aget-object v0, v7, v32

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 466
    aget-object v0, v7, v30

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 467
    aget-object v0, v7, v31

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    .line 468
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v9, :cond_3

    .line 469
    invoke-interface/range {v9 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onReceiveSensorData(IIIIIIII)V

    goto/16 :goto_0

    .line 472
    :cond_48
    const-string v0, "3E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v22, 0x1

    .line 473
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 474
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 475
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetBloodOxygenMode(I)V

    goto/16 :goto_0

    .line 477
    :cond_49
    const-string v0, "3F"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 v22, 0x1

    .line 478
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 479
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 480
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onReceiveSensorOxygenData(I)V

    goto/16 :goto_0

    .line 483
    :cond_4a
    const-string v0, "25"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 484
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 485
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetBloodPressureMode(I)V

    const/16 v0, 0x11

    .line 488
    aget-object v0, v7, v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v34, 0x12

    .line 489
    aget-object v4, v7, v34

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v29, 0x13

    .line 490
    aget-object v5, v7, v29

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v35

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v9, v7, v37

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v36

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v9, v7, v22

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iget v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v9, v9, 0x3e8

    sub-int/2addr v6, v9

    int-to-long v9, v6

    .line 492
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v6, v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    :goto_7
    const/4 v11, 0x6

    if-ge v2, v11, :cond_52

    .line 494
    new-instance v11, Ljava/util/Date;

    mul-long v12, v9, v38

    const v14, 0xea60

    mul-int v14, v14, v2

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 495
    invoke-virtual {v6, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    mul-int/lit8 v12, v2, 0x2

    add-int/lit8 v13, v12, 0x5

    .line 497
    aget-object v13, v7, v13

    invoke-static {v13, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v12, v12, 0x6

    .line 498
    aget-object v12, v7, v12

    invoke-static {v12, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    and-int/lit8 v14, v13, 0xf

    if-eqz v2, :cond_50

    const/4 v15, 0x1

    if-eq v2, v15, :cond_4f

    const/4 v15, 0x2

    if-eq v2, v15, :cond_4e

    const/4 v15, 0x3

    if-eq v2, v15, :cond_4d

    const/4 v15, 0x4

    if-eq v2, v15, :cond_4c

    const/4 v15, 0x5

    const/16 v35, 0x4

    if-eq v2, v15, :cond_4b

    goto :goto_a

    :cond_4b
    and-int/lit8 v15, v5, 0xf

    goto :goto_8

    :cond_4c
    const/16 v35, 0x4

    and-int/lit16 v15, v5, 0xf0

    goto :goto_9

    :cond_4d
    and-int/lit8 v15, v4, 0xf

    goto :goto_8

    :cond_4e
    and-int/lit16 v15, v4, 0xf0

    goto :goto_9

    :cond_4f
    and-int/lit8 v15, v0, 0xf

    :goto_8
    shl-int/lit8 v15, v15, 0x4

    goto :goto_9

    :cond_50
    and-int/lit16 v15, v0, 0xf0

    :goto_9
    or-int/2addr v14, v15

    :goto_a
    shr-int/lit8 v13, v13, 0x4

    shl-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v13

    .line 529
    iget-object v13, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v13, :cond_51

    const/4 v15, 0x1

    .line 530
    invoke-interface {v13, v15, v11, v14, v12}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetMultipleSportData(ILjava/lang/String;II)V

    :cond_51
    add-int/lit8 v2, v2, 0x1

    const/16 v35, 0x4

    const/16 v36, 0x2

    goto :goto_7

    :cond_52
    const/4 v10, 0x1

    .line 534
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 537
    :cond_53
    const-string v0, "A5"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v22, 0x1

    .line 538
    aget-object v0, v7, v22

    const-string v2, "FF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 540
    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v3, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetMultipleSportData(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 543
    :cond_54
    const-string v0, "1A"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 544
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 545
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetGoalStep(I)V

    goto/16 :goto_0

    .line 547
    :cond_55
    const-string v0, "9A"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 548
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 549
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetGoalStep(I)V

    goto/16 :goto_0

    .line 551
    :cond_56
    const-string v0, "26"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 552
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 553
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceHeartRateArea(I)V

    goto/16 :goto_0

    .line 555
    :cond_57
    const-string v0, "A6"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 556
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 557
    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceHeartRateArea(I)V

    goto/16 :goto_0

    .line 559
    :cond_58
    const-string v0, "27"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 560
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 561
    invoke-interface {v0, v10, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSensorStateChange(II)V

    goto/16 :goto_0

    .line 563
    :cond_59
    const-string v0, "28"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 564
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v15, 0x2

    .line 565
    invoke-interface {v0, v15, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSensorStateChange(II)V

    goto/16 :goto_0

    .line 567
    :cond_5a
    const-string v0, "29"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 568
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 569
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v33, 0x5

    aget-object v5, v7, v33

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0x4

    aget-object v5, v7, v35

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v5, v7, v37

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v5, v7, v36

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v5, v5, 0x3e8

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 571
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 572
    new-instance v2, Ljava/util/Date;

    mul-long v4, v4, v38

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 573
    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v7, v28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v32, 0x6

    aget-object v5, v7, v32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v7, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v27, 0xc

    aget-object v6, v7, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v7, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v7, v26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 576
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v5, v0, v2, v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onReadCurrentSportData(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 579
    :cond_5b
    const-string v0, "2a"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 580
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 581
    aget-object v0, v7, v10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 582
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v10, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetEcgMode(II)V

    goto/16 :goto_0

    .line 584
    :cond_5c
    const-string v0, "9a"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 585
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 586
    invoke-interface {v0, v2, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetEcgMode(II)V

    goto/16 :goto_0

    .line 588
    :cond_5d
    const-string v0, "2b"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 589
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 590
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v14, 0xc

    .line 591
    new-array v2, v14, [I

    const/4 v4, 0x0

    :goto_b
    const/4 v11, 0x6

    if-ge v4, v11, :cond_5e

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v5, 0x2

    .line 593
    aget-object v6, v7, v6

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v9, v5, 0x3

    .line 594
    aget-object v9, v7, v9

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v5, v5, 0x4

    .line 595
    aget-object v5, v7, v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v10, v9, 0xf

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v6, v10

    and-int/lit16 v9, v9, 0xf0

    const/16 v35, 0x4

    shr-int/lit8 v9, v9, 0x4

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v9, v5

    mul-int/lit8 v5, v4, 0x2

    .line 598
    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 599
    aput v9, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 601
    :cond_5e
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v3, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetEcgValue(I[I)V

    goto/16 :goto_0

    .line 604
    :cond_5f
    const-string v0, "2c"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 605
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v2, v7, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v2, v7, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 607
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v9, v0

    sub-long/2addr v4, v9

    const/16 v33, 0x5

    .line 608
    aget-object v0, v7, v33

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 609
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v4, v5, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetEcgHistory(JI)V

    goto/16 :goto_0

    .line 612
    :cond_60
    const-string v0, "2d"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 613
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 614
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v36, 0x2

    .line 615
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x6

    aget-object v5, v7, v32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v33, 0x5

    aget-object v5, v7, v33

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0x4

    aget-object v5, v7, v35

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v5, v7, v37

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 617
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 618
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v5, v0, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetEcgStartEnd(IIJ)V

    goto/16 :goto_0

    .line 621
    :cond_61
    const-string v0, "2e"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 622
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 623
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v14, 0xc

    .line 624
    new-array v2, v14, [I

    const/4 v4, 0x0

    :goto_c
    const/4 v11, 0x6

    if-ge v4, v11, :cond_62

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v5, 0x2

    .line 626
    aget-object v6, v7, v6

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v9, v5, 0x3

    .line 627
    aget-object v9, v7, v9

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v5, v5, 0x4

    .line 628
    aget-object v5, v7, v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v10, v9, 0xf

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v6, v10

    and-int/lit16 v9, v9, 0xf0

    const/16 v35, 0x4

    shr-int/lit8 v9, v9, 0x4

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v9, v5

    mul-int/lit8 v5, v4, 0x2

    .line 631
    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 632
    aput v9, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 634
    :cond_62
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v3, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetEcgHistoryData(I[I)V

    goto/16 :goto_0

    .line 638
    :cond_63
    const-string v0, "30"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 639
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 640
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceName(I)V

    goto/16 :goto_0

    .line 643
    :cond_64
    const-string v0, "31"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 644
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 645
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetReminder(I)V

    goto/16 :goto_0

    .line 648
    :cond_65
    const-string v0, "32"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 649
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 650
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetReminderText(I)V

    goto/16 :goto_0

    .line 653
    :cond_66
    const-string v0, "33"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 654
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/4 v10, 0x1

    .line 655
    invoke-interface {v0, v10}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetBPAdjust(I)V

    goto/16 :goto_0

    .line 658
    :cond_67
    const-string v0, "3a"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 659
    invoke-direct {v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T()I

    .line 660
    const-string v0, "DEVICE_APP_ID"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 661
    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Ljava/lang/String;)I

    .line 662
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 663
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onDeviceTestCmd()V

    goto/16 :goto_0

    .line 665
    :cond_68
    const-string v0, "37"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/16 v22, 0x1

    .line 667
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 668
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 669
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetTemperatureMode(I)V

    goto/16 :goto_0

    .line 672
    :cond_69
    const-string v0, "38"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x2

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v4, v7, v35

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v4, v7, v37

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 676
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v3, :cond_3

    .line 677
    invoke-interface {v3, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetTemperatureData(II)V

    goto/16 :goto_0

    .line 680
    :cond_6a
    const-string v0, "39"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v4, v7, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    int-to-long v4, v0

    .line 684
    new-instance v0, Ljava/util/Date;

    mul-long v9, v4, v38

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 685
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 686
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-wide v11, v4

    const/4 v2, 0x0

    :goto_d
    const/4 v4, 0x3

    if-ge v2, v4, :cond_6c

    .line 692
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_6b

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v5, v4, 0x6

    aget-object v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x5

    aget-object v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v4, 0x8

    aget-object v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 695
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/16 v10, 0xc

    invoke-interface/range {v9 .. v14}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    :cond_6b
    const-wide/16 v4, 0x12c

    add-long/2addr v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_6c
    const/4 v10, 0x1

    .line 702
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 704
    :cond_6d
    const-string v0, "40"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v4, v7, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    int-to-long v4, v0

    .line 709
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-wide v13, v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v2, v10, :cond_71

    .line 713
    new-instance v9, Ljava/util/Date;

    mul-long v11, v13, v38

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 715
    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 716
    invoke-virtual {v9}, Ljava/util/Date;->getHours()I

    move-result v11

    const/16 v12, 0x17

    if-ne v11, v12, :cond_6e

    invoke-virtual {v9}, Ljava/util/Date;->getMinutes()I

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_6e

    invoke-virtual {v9}, Ljava/util/Date;->getSeconds()I

    move-result v9

    if-nez v9, :cond_6e

    const/4 v6, 0x1

    :cond_6e
    add-int/lit8 v9, v2, 0x5

    .line 719
    aget-object v11, v7, v9

    invoke-static {v11, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 720
    iget-object v12, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v12, :cond_6f

    .line 722
    invoke-interface {v12, v13, v14, v11}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOxygenOfflineData(JI)V

    .line 725
    :cond_6f
    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v11, :cond_70

    .line 726
    aget-object v9, v7, v9

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v12, 0xd

    invoke-interface/range {v11 .. v16}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    :cond_70
    const-wide/16 v11, 0x3c

    add-long/2addr v13, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_71
    if-eqz v6, :cond_72

    .line 735
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v2, :cond_72

    const-wide/16 v2, 0x348

    add-long/2addr v4, v2

    .line 738
    :try_start_2
    new-instance v2, Ljava/util/Date;

    mul-long v9, v4, v38

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 739
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOxygenOfflineDataEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOxygenOfflineDataEnd(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 743
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_f
    const/4 v10, 0x1

    .line 752
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 754
    :cond_73
    const-string v0, "55"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v4, v7, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v4, v7, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v4, v7, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v4, v7, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    int-to-long v4, v0

    .line 759
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-wide v10, v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_10
    const/4 v15, 0x3

    if-ge v2, v15, :cond_77

    .line 763
    new-instance v9, Ljava/util/Date;

    mul-long v12, v10, v38

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 765
    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 766
    invoke-virtual {v9}, Ljava/util/Date;->getHours()I

    move-result v12

    const/16 v13, 0x17

    if-ne v12, v13, :cond_74

    invoke-virtual {v9}, Ljava/util/Date;->getMinutes()I

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_74

    invoke-virtual {v9}, Ljava/util/Date;->getSeconds()I

    move-result v9

    if-nez v9, :cond_74

    const/4 v6, 0x1

    :cond_74
    mul-int/lit8 v9, v2, 0x5

    add-int/lit8 v12, v9, 0x5

    .line 769
    aget-object v12, v7, v12

    invoke-static {v12, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v13, v9, 0x6

    .line 770
    aget-object v13, v7, v13

    invoke-static {v13, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v14, v9, 0x7

    .line 771
    aget-object v14, v7, v14

    invoke-static {v14, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    add-int/lit8 v15, v9, 0x8

    .line 772
    aget-object v15, v7, v15

    invoke-static {v15, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    add-int/lit8 v9, v9, 0x9

    .line 773
    aget-object v9, v7, v9

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 774
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v9, :cond_75

    .line 776
    invoke-interface/range {v9 .. v16}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetAdvSensorOfflineData(JIIIII)V

    .line 779
    :cond_75
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v9, :cond_76

    add-int/lit8 v12, v2, 0x5

    .line 780
    aget-object v12, v7, v12

    invoke-static {v12, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x0

    move-wide v11, v10

    const/16 v10, 0xe

    invoke-interface/range {v9 .. v14}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDay(IJII)V

    move-wide v10, v11

    :cond_76
    const-wide/16 v12, 0x384

    add-long/2addr v10, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_77
    if-eqz v6, :cond_78

    .line 789
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v2, :cond_78

    const-wide/16 v2, 0xa50

    add-long/2addr v4, v2

    .line 792
    :try_start_4
    new-instance v2, Ljava/util/Date;

    mul-long v9, v4, v38

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 793
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 795
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetAdvSensorOfflineDataEnd(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    .line 797
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_11
    const/4 v10, 0x1

    .line 806
    invoke-direct {v1, v7, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 807
    :cond_79
    const-string v0, "b9"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 808
    const-string v0, "getdayabyday failed"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    const/16 v14, 0xc

    .line 810
    invoke-interface {v0, v14, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDataByDayEnd(IJ)V

    goto/16 :goto_0

    .line 812
    :cond_7a
    const-string v0, "3b"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/16 v22, 0x1

    .line 814
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 815
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 816
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onTemperatureModeChange(I)V

    goto/16 :goto_0

    .line 818
    :cond_7b
    const-string v0, "34"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x2

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v2, v7, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v2, v7, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x6

    aget-object v2, v7, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v33, 0x5

    aget-object v2, v7, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v42

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v43

    .line 824
    aget-object v0, v7, v23

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v44

    const/16 v27, 0xc

    .line 825
    aget-object v0, v7, v27

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v45

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v46

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v7, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v47

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v34, 0x12

    aget-object v2, v7, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v48

    const/16 v29, 0x13

    .line 829
    aget-object v0, v7, v29

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v49

    .line 830
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    move-object/from16 v38, v0

    .line 831
    invoke-interface/range {v38 .. v49}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceDial(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)V

    goto/16 :goto_0

    .line 833
    :cond_7c
    const-string v0, "35"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 834
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 835
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceDialState()V

    goto/16 :goto_0

    .line 837
    :cond_7d
    const-string v0, "36"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 838
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 839
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetDeviceWallpaperState()V

    goto/16 :goto_0

    .line 841
    :cond_7e
    const-string v0, "41"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 842
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 843
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onEditDeviceDialCustom()V

    goto/16 :goto_0

    .line 845
    :cond_7f
    const-string v0, "42"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v22, 0x1

    .line 846
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v36, 0x2

    .line 847
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v37, 0x3

    .line 848
    aget-object v4, v7, v37

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v35, 0x4

    .line 849
    aget-object v5, v7, v35

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 851
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v5, :cond_3

    .line 852
    invoke-interface {v5, v0, v2, v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceDialCustom(IIII)V

    goto/16 :goto_0

    .line 854
    :cond_80
    const-string v0, "44"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 855
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 856
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetFemaleReminder()V

    goto/16 :goto_0

    .line 858
    :cond_81
    const-string v0, "45"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 859
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 860
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_84

    const/16 v36, 0x2

    .line 862
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v37, 0x3

    .line 863
    aget-object v2, v7, v37

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    .line 866
    :goto_12
    array-length v5, v7

    const/16 v22, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_82

    const/16 v5, 0x9

    if-gt v4, v5, :cond_82

    .line 867
    aget-object v5, v7, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/16 v28, 0x9

    goto :goto_12

    .line 869
    :cond_82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    .line 870
    :goto_13
    array-length v6, v7

    const/16 v22, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_83

    if-gt v5, v10, :cond_83

    .line 871
    aget-object v6, v7, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 873
    :cond_83
    iget-object v5, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v0, v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyClassicBtInfo(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_84
    const/4 v10, 0x1

    if-ne v0, v10, :cond_86

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 877
    :goto_14
    array-length v4, v7

    sub-int/2addr v4, v10

    if-ge v2, v4, :cond_85

    const/16 v4, 0x13

    if-gt v2, v4, :cond_85

    .line 878
    aget-object v4, v7, v2

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    .line 879
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x1

    goto :goto_14

    .line 882
    :cond_85
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyClassicBtName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_86
    const/4 v15, 0x2

    if-ne v0, v15, :cond_88

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 886
    :goto_15
    array-length v4, v7

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_87

    const/16 v4, 0x13

    if-gt v2, v4, :cond_87

    .line 887
    aget-object v4, v7, v2

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    .line 888
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 891
    :cond_87
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyAppId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_89
    const-string v0, "46"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 898
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 900
    :goto_16
    array-length v4, v7

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_8a

    const/4 v15, 0x4

    if-gt v2, v15, :cond_8a

    .line 901
    aget-object v4, v7, v2

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    .line 902
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 905
    :cond_8a
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyContactCrc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 907
    :cond_8b
    const-string v0, "49"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 908
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    .line 909
    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetPhoneVolume()V

    goto/16 :goto_0

    .line 911
    :cond_8c
    const-string v0, "4B"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 912
    const-string v0, "onNotifyBindedInfo success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 914
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v36, 0x2

    .line 915
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 916
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v3, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyBindedInfo(II)V

    goto/16 :goto_0

    .line 918
    :cond_8d
    const-string v0, "3D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v10, 0x1

    .line 919
    aget-object v0, v7, v10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_8e

    const/4 v0, 0x1

    goto :goto_17

    :cond_8e
    const/4 v0, 0x0

    .line 920
    :goto_17
    aget-object v2, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v15, 0x2

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_8f

    const/4 v2, 0x1

    goto :goto_18

    :cond_8f
    const/4 v2, 0x0

    .line 921
    :goto_18
    aget-object v4, v7, v10

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v15, 0x4

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_90

    const/4 v3, 0x1

    goto :goto_19

    :cond_90
    const/4 v3, 0x0

    .line 922
    :goto_19
    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v4, :cond_3

    .line 923
    invoke-interface {v4, v0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceState(ZZZ)V

    goto/16 :goto_0

    .line 925
    :cond_91
    const-string v0, "4C"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 926
    const-string v0, "onNotifyECardNeedUpdate success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 928
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    const/16 v0, 0x12

    .line 931
    new-array v0, v0, [B

    const/4 v2, 0x2

    .line 933
    :goto_1a
    array-length v4, v7

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_92

    const/16 v4, 0x13

    if-ge v2, v4, :cond_92

    add-int/lit8 v4, v2, -0x2

    .line 934
    aget-object v5, v7, v2

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 935
    :cond_92
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyECardNeedUpdate([B)V

    goto/16 :goto_0

    .line 938
    :cond_93
    const-string v0, "4D"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 939
    const-string v0, "onNotifySmsRspNeedUpdate success"

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 941
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v0, v4, :cond_95

    const/16 v2, 0x12

    .line 944
    new-array v0, v2, [B

    const/4 v2, 0x2

    .line 946
    :goto_1b
    array-length v4, v7

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_94

    const/16 v4, 0x13

    if-ge v2, v4, :cond_94

    add-int/lit8 v4, v2, -0x2

    .line 947
    aget-object v5, v7, v2

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 948
    :cond_94
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifySmsRspNeedUpdate([B)V

    goto/16 :goto_0

    :cond_95
    const/4 v11, 0x6

    if-ne v0, v11, :cond_3

    const/16 v36, 0x2

    .line 951
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v37, 0x3

    .line 952
    aget-object v2, v7, v37

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    .line 954
    :goto_1c
    array-length v6, v7

    const/16 v22, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_96

    const/16 v35, 0x4

    add-int/lit8 v6, v2, 0x4

    if-gt v5, v6, :cond_96

    .line 955
    aget-object v6, v7, v5

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 956
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 958
    :cond_96
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifySmsRspSend(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 961
    :cond_97
    const-string v0, "4E"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 962
    const-string v0, "onGetChatgptAction "

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1

    .line 963
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 964
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetChatgptAction(I)V

    goto/16 :goto_0

    .line 965
    :cond_98
    const-string v0, "50"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 966
    const-string v0, "onGetFactoryTestData "

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 968
    new-array v2, v0, [B

    const/4 v4, 0x0

    .line 970
    :goto_1d
    array-length v5, v7

    const/16 v22, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_99

    if-ge v4, v0, :cond_99

    .line 971
    aget-object v5, v7, v4

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 972
    :cond_99
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetFactoryTestData([B)V

    goto/16 :goto_0

    .line 973
    :cond_9a
    const-string v0, "51"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x4

    aget-object v2, v7, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v2, v7, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v2, v7, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    aget-object v2, v7, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 975
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 976
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetSportSteps(I)V

    goto/16 :goto_0

    .line 977
    :cond_9b
    const-string v0, "53"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 978
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 979
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v36, 0x2

    .line 981
    aget-object v2, v7, v36

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v37, 0x3

    .line 982
    aget-object v4, v7, v37

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v35, 0x4

    .line 983
    aget-object v5, v7, v35

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 985
    new-array v6, v5, [I

    const/4 v9, 0x5

    .line 987
    :goto_1e
    array-length v10, v7

    const/16 v22, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_9c

    const/16 v10, 0x13

    if-ge v9, v10, :cond_9c

    const/16 v33, 0x5

    add-int v10, v33, v5

    if-ge v9, v10, :cond_9c

    add-int/lit8 v10, v9, -0x5

    .line 988
    aget-object v11, v7, v9

    invoke-static {v11, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    aput v11, v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_9c
    if-nez v0, :cond_9d

    .line 991
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v2, v4, v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onSetEqInfo2(III[I)I

    goto/16 :goto_0

    .line 994
    :cond_9d
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v0, v2, v4, v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetEqInfo2(III[I)I

    goto/16 :goto_0

    .line 997
    :cond_9e
    const-string v0, "54"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 998
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_3

    const/16 v22, 0x1

    .line 999
    aget-object v0, v7, v22

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v15, 0x4

    if-ne v0, v15, :cond_a5

    const/16 v36, 0x2

    .line 1001
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    .line 1003
    :goto_1f
    array-length v3, v7

    const/16 v22, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9f

    const/4 v11, 0x6

    if-gt v2, v11, :cond_9f

    .line 1004
    aget-object v3, v7, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1007
    :cond_9f
    const-string v3, "bk7258"

    .line 1008
    const-string v4, "123456"

    .line 1011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onGetWifiState connectState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , deviceIpAddr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v9, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    const/16 v5, 0x15

    move-object v12, v3

    move-object v13, v4

    const/16 v14, 0x15

    invoke-interface/range {v9 .. v14}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetWifiState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v5, 0x15

    const/4 v15, 0x2

    if-eq v10, v15, :cond_a0

    goto/16 :goto_0

    .line 1016
    :cond_a0
    const-string v0, "(.{2})"

    .line 1017
    const-string v2, "$1:"

    invoke-virtual {v11, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v22, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipaddr: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1021
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    array-length v7, v0

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v7, :cond_a1

    aget-object v10, v0, v9

    .line 1025
    invoke-static {v10}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1026
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 1030
    :cond_a1
    const-string v0, "."

    invoke-static {v0, v2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->U:Ljava/lang/String;

    if-nez v0, :cond_a2

    .line 1035
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_21

    .line 1037
    :cond_a2
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-object v0, v7

    :goto_21
    if-eqz v0, :cond_a4

    .line 1041
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    const-string v7, "AUTO_DOWNLOAD"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v7, :cond_a3

    const/4 v7, 0x3

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1045
    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v11, v1

    goto/16 :goto_27

    :catch_2
    move-exception v0

    move-object v11, v1

    goto/16 :goto_28

    :cond_a3
    move-object v6, v0

    move-object v11, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1047
    :try_start_7
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface/range {v1 .. v6}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onDeviceConnectedWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_27

    :cond_a4
    move-object v11, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1051
    const-string v0, "Ftp download task can not find media path"

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    const-string v1, "errMessage"

    const-string v2, "can not find media path"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string/jumbo v1, "retryTimes"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    invoke-virtual {v11, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_27

    :cond_a5
    move-object v11, v1

    const/4 v1, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v1, :cond_a6

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v33, 0x5

    aget-object v1, v7, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0x4

    aget-object v1, v7, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v1, v7, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v1, v7, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetDeviceFileState(I)V

    goto/16 :goto_27

    :cond_a6
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a7

    const/16 v36, 0x2

    .line 1071
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetWifiSsidCount(I)V

    goto/16 :goto_27

    :cond_a7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_ae

    const/16 v36, 0x2

    .line 1076
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0x80

    shr-int/lit8 v13, v1, 0x7

    and-int/lit8 v1, v0, 0x40

    const/16 v32, 0x6

    shr-int/lit8 v14, v1, 0x6

    and-int/lit8 v15, v0, 0x3f

    const/16 v37, 0x3

    .line 1080
    aget-object v0, v7, v37

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v1, v0

    .line 1083
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x4

    .line 1085
    :goto_22
    array-length v4, v7

    if-ge v2, v4, :cond_a8

    const/16 v4, 0x14

    if-ge v2, v4, :cond_a8

    add-int/lit8 v4, v2, -0x4

    .line 1086
    aget-object v5, v7, v2

    aput-object v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1088
    :cond_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    iget-object v4, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a9

    .line 1090
    iget-object v2, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M:Ljava/lang/StringBuilder;

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetWifiSsid old ssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v8, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    const/4 v7, 0x0

    :goto_23
    if-ge v7, v3, :cond_ac

    .line 1096
    aget-object v4, v0, v7

    if-nez v4, :cond_aa

    goto :goto_24

    .line 1099
    :cond_aa
    const-string v5, "00"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    goto :goto_24

    .line 1104
    :cond_ab
    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1107
    :cond_ac
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetWifiSsid new ssid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v13, v10, :cond_ad

    const/4 v0, 0x0

    .line 1110
    iput-object v0, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M:Ljava/lang/StringBuilder;

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetWifiSsid total ssid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v3, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1114
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_25

    :catch_3
    move-exception v0

    .line 1117
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1120
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onGetWifiSsid endFlag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , partId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , curId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , signal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , ssidContent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v12, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    move/from16 v16, v1

    move-object/from16 v17, v3

    invoke-interface/range {v12 .. v17}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetWifiSsid(IIIILjava/lang/String;)V

    goto/16 :goto_27

    .line 1124
    :cond_ad
    iput-object v2, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M:Ljava/lang/StringBuilder;

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetWifiSsid save ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_ae
    const/16 v2, 0x12

    if-ne v0, v2, :cond_af

    const/16 v36, 0x2

    .line 1129
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyDeviceSystemStateInfo(I)V

    goto/16 :goto_27

    :cond_af
    const/16 v4, 0x13

    if-ne v0, v4, :cond_b0

    const/16 v36, 0x2

    .line 1134
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyDeviceWifiApState(I)V

    if-ne v0, v10, :cond_ba

    .line 1139
    const-string v0, "DEVICE_NAME"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v35, 0x4

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v1, "12345678"

    .line 1145
    invoke-direct {v11, v0, v1, v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_27

    :cond_b0
    const/16 v1, 0x14

    if-ne v0, v1, :cond_b1

    const/16 v36, 0x2

    .line 1149
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v8, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyAiConnectionMethod(I)V

    goto/16 :goto_27

    .line 1154
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_b2
    move-object v11, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1158
    const-string v0, "78"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1160
    iget-object v0, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_ba

    .line 1161
    aget-object v0, v7, v10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b7

    const/16 v5, 0x9

    if-eq v0, v5, :cond_b6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_b5

    const/16 v14, 0xc

    if-eq v0, v14, :cond_b4

    .line 1197
    new-array v1, v5, [I

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v5, :cond_b3

    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v12, v6, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v7, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/g;->d(Ljava/lang/String;)S

    move-result v3

    aput v3, v1, v2

    move v2, v4

    goto :goto_26

    .line 1203
    :cond_b3
    iget-object v2, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetGSensorData(I[I)V

    goto/16 :goto_27

    :cond_b4
    const/16 v36, 0x2

    .line 1204
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1205
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOfflineSpeechRecognitionMode(I)V

    goto :goto_27

    :cond_b5
    const/16 v36, 0x2

    .line 1206
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1207
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetScreenLightTime(I)V

    goto :goto_27

    :cond_b6
    const/16 v36, 0x2

    .line 1208
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1209
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetTouchMode(I)V

    goto :goto_27

    .line 1210
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v33, 0x5

    aget-object v1, v7, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0x4

    aget-object v1, v7, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x3

    aget-object v1, v7, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v36, 0x2

    aget-object v1, v7, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1211
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetWorshipTimesData(I)V

    goto :goto_27

    :cond_b8
    const/16 v36, 0x2

    .line 1212
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v37, 0x3

    .line 1213
    aget-object v1, v7, v37

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1214
    iget-object v2, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v2, v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetWorshipInfo(II)V

    goto :goto_27

    :cond_b9
    const/16 v36, 0x2

    .line 1215
    aget-object v0, v7, v36

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1216
    iget-object v1, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {v1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOfflineSpeechRecognitionMode(I)V

    .line 1301
    :cond_ba
    :goto_27
    invoke-direct {v11, v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    goto :goto_29

    :catch_4
    move-exception v0

    goto :goto_28

    .line 1302
    :cond_bb
    const-string/jumbo v0, "unknown command"

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    return-void

    :catch_5
    move-exception v0

    move-object v11, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1308
    :goto_28
    invoke-direct {v11, v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    .line 1309
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1310
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1311
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "read exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1315
    iget-boolean v0, v11, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    if-eqz v0, :cond_bd

    .line 1316
    invoke-direct {v11, v9}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Z)V

    .line 1317
    invoke-direct {v11, v10}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Z)V

    goto :goto_29

    :cond_bc
    move-object v11, v1

    :cond_bd
    :goto_29
    return-void
.end method

.method private d([Ljava/lang/String;Z)V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1336
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$q;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$q;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m1:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 1352
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    move-result p0

    return p0
.end method

.method private d([B)Z
    .locals 5

    const-string/jumbo v0, "set raw cmd : "

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeCharacteristicRawData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_0

    .line 12
    const-string p1, "mBluetoothGatt null"

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 16
    :cond_0
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t0:Ljava/util/HashMap;

    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    if-nez v3, :cond_1

    .line 18
    const-string p1, "BluetoothGattService RAW_DATA_TX null"

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 21
    :cond_1
    sget-object v4, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    .line 22
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-nez v3, :cond_2

    .line 24
    const-string p1, "BluetoothGattCharacteristic RAW_DATA_TX null"

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 27
    :cond_2
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeCharacteristicRawData exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic d0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P:Ljava/lang/String;

    return-object p0
.end method

.method private d0()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f()V

    return-void
.end method

.method private e(I)I
    .locals 3

    .line 118
    const-string v0, "getMultipleSportDataByDay"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 121
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x25

    .line 123
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 124
    aput-byte p1, v0, v1

    .line 126
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 127
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(I)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[B)I
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([B)I

    move-result p0

    return p0
.end method

.method private e(Z)I
    .locals 3

    .line 107
    const-string v0, "openBloodOxygen"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 110
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3e

    .line 112
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 113
    aput-byte p1, v0, v1

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 117
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .line 3
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e(II)V
    .locals 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSmsRspTotalCrc start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 150
    new-array v0, v0, [B

    const/16 v2, 0x4d

    const/4 v3, 0x0

    .line 151
    aput-byte v2, v0, v3

    const/4 v2, 0x1

    .line 152
    aput-byte v2, v0, v2

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    const/4 p1, 0x5

    :cond_0
    int-to-byte p1, p1

    const/4 v2, 0x2

    .line 155
    aput-byte p1, v0, v2

    .line 157
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->d(Ljava/lang/String;)[B

    move-result-object p1

    .line 158
    array-length p2, p1

    .line 159
    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a([BI)[B

    move-result-object p1

    .line 161
    :goto_0
    array-length p2, p1

    if-ge v3, p2, :cond_1

    const/4 p2, 0x4

    if-ge v3, p2, :cond_1

    add-int/lit8 p2, v3, 0x3

    .line 162
    aget-byte v2, p1, v3

    aput-byte v2, v0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setSmsRspTotalCrc end: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    return-void
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "BluetoothLeService"

    const-string v3, "0x"

    const-string v4, "rawData -> "

    if-eqz v0, :cond_11

    .line 25
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v4, ""

    .line 29
    array-length v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 32
    :cond_0
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, " cmd is not enough length."

    const/16 v10, 0x8

    if-ge v5, v10, :cond_1

    .line 33
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_1
    const-string v3, "0001"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x9

    const/16 v11, 0x10

    if-eqz v3, :cond_3

    .line 38
    array-length v3, v0

    if-ge v3, v5, :cond_2

    .line 39
    const-string v0, "0x01 cmd is not enough length."

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_2
    aget-object v0, v0, v10

    invoke-static {v0, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 44
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_11

    .line 45
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetAiAction(I)V

    return-void

    .line 46
    :cond_3
    const-string v3, "0002"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v12, 0x6

    const/4 v13, 0x7

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/16 v16, 0x3

    if-eqz v3, :cond_7

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 52
    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 53
    :goto_1
    array-length v9, v0

    sub-int/2addr v9, v10

    if-ge v5, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    and-int/2addr v6, v9

    if-eqz v6, :cond_6

    add-int v6, v10, v5

    .line 54
    aget-object v6, v0, v6

    invoke-static {v6, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio rawData "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_11

    const/16 v17, 0x1

    move-object/from16 v16, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 58
    invoke-interface/range {v16 .. v21}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetRawData(IIII[B)V

    return-void

    .line 59
    :cond_7
    const-string v3, "0003"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 65
    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 66
    :goto_4
    array-length v9, v0

    sub-int/2addr v9, v10

    if-ge v5, v9, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    and-int/2addr v6, v9

    if-eqz v6, :cond_a

    add-int v6, v10, v5

    .line 67
    aget-object v6, v0, v6

    invoke-static {v6, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 69
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image rawData "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v0, :cond_11

    const/16 v17, 0x2

    move-object/from16 v16, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 71
    invoke-interface/range {v16 .. v21}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetRawData(IIII[B)V

    return-void

    .line 73
    :cond_b
    const-string v3, "0006"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 74
    array-length v3, v0

    const/16 v6, 0xa

    if-ge v3, v6, :cond_c

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_c
    aget-object v2, v0, v10

    invoke-static {v2, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 80
    aget-object v0, v0, v5

    invoke-static {v0, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v3, :cond_11

    .line 82
    invoke-interface {v3, v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetAiState(II)V

    return-void

    .line 84
    :cond_d
    const-string v3, "0009"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 85
    array-length v3, v0

    if-ge v3, v5, :cond_e

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_e
    aget-object v0, v0, v10

    invoke-static {v0, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_11

    .line 92
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onRecvDeviceVoiceCommandConfirm(I)V

    return-void

    .line 94
    :cond_f
    const-string v3, "000A"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 95
    array-length v3, v0

    if-ge v3, v5, :cond_10

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_10
    aget-object v0, v0, v10

    invoke-static {v0, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 101
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_11

    .line 102
    invoke-interface {v2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetAiCommandType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 106
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_11
    return-void
.end method

.method private e([Ljava/lang/String;Z)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$r;

    invoke-direct {v0, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$r;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n1:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 147
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k1:Landroid/os/Handler;

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j1:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E0:Z

    return p1
.end method

.method private e([B)Z
    .locals 4

    const-string v0, "BluetoothLeService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 8
    const-string/jumbo p1, "writeRawBleCmd : cmd is null"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeRawBleCmd : connect state is false, drop cmd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeRawBleCmd add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;-><init>(I[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a0;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$a0;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method static synthetic e0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m()I

    move-result p0

    return p0
.end method

.method private e0()V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startScan check build version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U0:I

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    const-string v2, "call mBluetoothAdapter getBluetoothLeScanner object method: startLeScan"

    invoke-direct {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R0:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v3, v0, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "mBluetoothAdapter getBluetoothLeScanner object is null"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T0:Z

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startScan "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(I)I
    .locals 3

    .line 81
    const-string v0, "getOxygenOfflineDataByDay"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 84
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 86
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 87
    aput-byte p1, v0, v1

    .line 89
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 90
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private f(II)I
    .locals 3

    .line 69
    const-string/jumbo v0, "setWorshipInfo0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 72
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 74
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 75
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 76
    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x3

    .line 77
    aput-byte p1, v0, p2

    .line 79
    invoke-direct {p0, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 80
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(I)I

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/String;)I
    .locals 8

    const-string v0, "getDialServerInfo0 use local content before "

    .line 6
    const-string v1, "getDialServerInfo0"

    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "DIALMARKET_EXPIRE_TIMESTAMP"

    invoke-static {v4, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 11
    const-string v5, "DIALMARKET_JSON"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "BluetoothLeService"

    cmp-long v7, v1, v3

    if-gtz v7, :cond_2

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_3

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    invoke-interface {p1, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onNotifyDialJsonContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDialServerInfo exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDialServerInfo0 request latest content after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;->a([Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b0;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    :cond_3
    :goto_1
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private f(Z)I
    .locals 3

    .line 59
    const-string v0, "openBloodPressure"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 62
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x23

    .line 64
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 65
    aput-byte p1, v0, v1

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 68
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Lcom/sxr/sdk/ble/keepfit/service/utils/j;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    return-object p0
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F0:Z

    return p1
.end method

.method static synthetic f0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r()I

    move-result p0

    return p0
.end method

.method private f0()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopScan check build version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "call mBluetoothAdapter getBluetoothLeScanner object method: stopScan"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R0:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "mBluetoothAdapter getBluetoothLeScanner object is null"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T0:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopScan "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g(I)I
    .locals 3

    .line 21
    const-string/jumbo v0, "sendVibrationSignal"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 24
    new-array v0, v0, [B

    const/16 v1, 0xa

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    const/16 p1, 0xa

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 28
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 29
    aput-byte p1, v0, v1

    .line 31
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 32
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(I)I

    move-result p0

    return p0
.end method

.method private g(Z)I
    .locals 3

    .line 33
    const-string v0, "openPressure"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 36
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 38
    aput-byte v1, v0, v2

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_1
    int-to-byte p1, v2

    const/4 v1, 0x1

    .line 39
    aput-byte p1, v0, v1

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 42
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 10
    const-string v0, "closeConnection"

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x:J

    .line 14
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w:Z

    .line 15
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F0:Z

    .line 17
    const-string v0, "close"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f()V

    .line 20
    sput v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c:I

    return-void
.end method

.method static synthetic g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z:Z

    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "called RemoteService "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "called "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic g0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Q:Ljava/lang/String;

    return-object p0
.end method

.method private g0()V
    .locals 2

    .line 2
    const-string v0, "BluetoothLeService"

    const-string v1, "call syncCurData function"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y()I

    return-void
.end method

.method private h(I)I
    .locals 4

    .line 47
    const-string/jumbo v0, "setAiCommandType0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 50
    new-array v0, v0, [B

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 52
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 53
    aput-byte v2, v0, v1

    const/4 v3, 0x2

    .line 54
    aput-byte v1, v0, v3

    const/4 v3, 0x3

    .line 55
    aput-byte v2, v0, v3

    const/4 v3, 0x4

    .line 56
    aput-byte v1, v0, v3

    const/4 v3, 0x5

    .line 57
    aput-byte v2, v0, v3

    const/4 v3, 0x6

    .line 58
    aput-byte v1, v0, v3

    const/4 v1, 0x7

    .line 59
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/16 v1, 0x8

    .line 60
    aput-byte p1, v0, v1

    .line 62
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 63
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Y0:I

    return p1
.end method

.method private h(Z)I
    .locals 1

    .line 37
    const-string v0, "openRawDataNotification0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N()V

    .line 46
    :goto_0
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x270f

    if-lt v0, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->getAncsUid()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "%1$04d"

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u(Z)V

    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 16
    const-string v42, "2E"

    const-string v43, "2F"

    const-string v2, "01"

    const-string v3, "02"

    const-string v4, "03"

    const-string v5, "04"

    const-string v6, "05"

    const-string v7, "06"

    const-string v8, "07"

    const-string v9, "08"

    const-string v10, "09"

    const-string v11, "0A"

    const-string v12, "0B"

    const-string v13, "0C"

    const-string v14, "0D"

    const-string v15, "0F"

    const-string v16, "11"

    const-string v17, "13"

    const-string v18, "14"

    const-string v19, "15"

    const-string v20, "16"

    const-string v21, "17"

    const-string v22, "18"

    const-string v23, "19"

    const-string v24, "1A"

    const-string v25, "1B"

    const-string v26, "1C"

    const-string v27, "1D"

    const-string v28, "1E"

    const-string v29, "1F"

    const-string v30, "21"

    const-string v31, "23"

    const-string v32, "24"

    const-string v33, "25"

    const-string v34, "26"

    const-string v35, "27"

    const-string v36, "28"

    const-string v37, "29"

    const-string v38, "2A"

    const-string v39, "2B"

    const-string v40, "2C"

    const-string v41, "2D"

    filled-new-array/range {v2 .. v43}, [Ljava/lang/String;

    move-result-object v2

    .line 19
    const-string v16, "fe"

    const-string v17, "ff"

    const-string v3, "c4"

    const-string v4, "f1"

    const-string v5, "f2"

    const-string v6, "f3"

    const-string v7, "f4"

    const-string v8, "f5"

    const-string v9, "f6"

    const-string v10, "f7"

    const-string v11, "f8"

    const-string v12, "f9"

    const-string v13, "fb"

    const-string v14, "fc"

    const-string v15, "fd"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v3

    .line 24
    sget v4, Lcom/sxr/sdk/ble/keepfit/service/b;->N:I

    const/4 v5, 0x2

    const-string v6, "BluetoothLeService"

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v2, v4, :cond_3

    .line 25
    aget-object v4, v3, v2

    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process_cmd_runnable running has response type require session response "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x2a

    if-ge v3, v4, :cond_3

    .line 34
    aget-object v4, v2, v3

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process_cmd_runnable running no response type require session response "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v7
.end method

.method static synthetic h0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z()I

    move-result p0

    return p0
.end method

.method private i(I)I
    .locals 4

    .line 65
    const-string/jumbo v0, "setAiConnectionMethod0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 68
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x54

    .line 70
    aput-byte v3, v1, v2

    const/4 v2, 0x1

    .line 71
    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 72
    aput-byte p1, v1, v0

    .line 74
    invoke-direct {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 75
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M0:I

    return p1
.end method

.method private i(Z)I
    .locals 3

    .line 55
    const-string v0, "openSpo"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 58
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 60
    aput-byte v1, v0, v2

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    :cond_1
    int-to-byte p1, v2

    const/4 v1, 0x1

    .line 61
    aput-byte p1, v0, v1

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 64
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private i()V
    .locals 46

    .line 6
    const-string v44, "01 4F 58 A4 68 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v45, "22 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v1, "11 80 BE A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v2, "11 04 C2 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v3, "11 88 C5 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v4, "11 0C C9 A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v5, "11 90 CC A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v6, "11 14 D0 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v7, "11 98 D3 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v8, "21 7A 68 2D 43 4E 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v9, "11 1C D7 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v10, "11 A0 DA A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v11, "11 24 DE A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v12, "11 A8 E1 A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v13, "11 2C E5 A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v14, "11 B0 E8 A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v15, "11 34 EC A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v16, "11 B8 EF A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v17, "11 3C F3 A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v18, "11 C0 F6 A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v19, "11 44 FA A3 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v20, "11 C8 FD A3 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v21, "11 4C 01 A4 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v22, "11 D0 04 A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v23, "11 54 08 A4 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v24, "11 D8 0B A4 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v25, "11 5C 0F A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v26, "11 E0 12 A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v27, "11 64 16 A4 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v28, "11 E8 19 A4 68 28 28 28 28 28 28 28 28 28 28 28 28 28 28 28"

    const-string v29, "11 6C 1D A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v30, "11 F0 20 A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v31, "11 74 24 A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v32, "11 F8 27 A4 68 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63"

    const-string v33, "10 00 2F A4 68 00 00 00 00 00 1A 00 00 00 00 00 00 00 00 15"

    const-string v34, "10 84 32 A4 68 00 4A 20 00 00 00 40 77 50 3C 07 00 00 00 00"

    const-string v35, "10 10 3D A4 68 00 00 00 00 00 00 00 00 00 00 4B 00 00 00 00"

    const-string v36, "10 94 40 A4 68 00 33 74 5F 48 10 1F 27 41 56 20 42 5E 00 31"

    const-string v37, "10 20 4B A4 68 00 00 00 00 00 00 00 00 00 00 00 21 17 00 00"

    const-string v38, "10 7C 0C A5 68 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v39, "03 2D 58 A4 68 92 05 00 00 51 04 00 00 2E 00 00 00 FC 6C 00"

    const-string v40, "13 2D 58 A4 68 03 00 00 00 48 03 00 00 DC 05 00 00 00 00 00"

    const-string v41, "16 FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v42, "25 C8 57 A4 68 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    const-string v43, "25 98 0E A5 68 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"

    filled-new-array/range {v1 .. v45}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2d

    if-ge v1, v2, :cond_0

    .line 53
    aget-object v2, v0, v1

    move-object/from16 v3, p0

    .line 54
    invoke-direct {v3, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    return-void
.end method

.method static synthetic i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Z)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftp onWifiConnected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothLeService"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic i(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->E0:Z

    return p0
.end method

.method static synthetic i0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V()I

    move-result p0

    return p0
.end method

.method private j(I)I
    .locals 5

    .line 33
    const-string/jumbo v0, "setAiExtraAction0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 36
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 38
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    .line 39
    aput-byte v1, v0, v3

    const/4 v4, 0x2

    .line 40
    aput-byte v3, v0, v4

    const/4 v4, 0x3

    .line 41
    aput-byte v1, v0, v4

    .line 42
    aput-byte v3, v0, v2

    const/4 v2, 0x5

    .line 43
    aput-byte v1, v0, v2

    const/4 v2, 0x6

    .line 44
    aput-byte v3, v0, v2

    const/4 v2, 0x7

    .line 45
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/16 v1, 0x8

    .line 46
    aput-byte p1, v0, v1

    .line 48
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e([B)Z

    .line 49
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I0:I

    return p1
.end method

.method private j(Ljava/lang/String;)I
    .locals 4

    .line 50
    const-string/jumbo v0, "saveFileToSystemAlbum0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 53
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->c(Ljava/lang/String;)I

    move-result v1

    .line 58
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/b;->k0:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v3, "fileType"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "localFileName"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "newUri"

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, ""

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 69
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private j(Z)I
    .locals 3

    .line 23
    const-string v0, "openSugar"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 26
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 28
    aput-byte v1, v0, v2

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    :cond_1
    int-to-byte p1, v2

    const/4 v1, 0x1

    .line 29
    aput-byte p1, v0, v1

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 32
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->O()V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w:Z

    return p1
.end method

.method static synthetic j0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u()I

    move-result p0

    return p0
.end method

.method private k()I
    .locals 3

    .line 25
    const-string v0, "getBandFunction20"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 28
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 29
    aput-byte v2, v0, v1

    .line 31
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 32
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G0:I

    return p1
.end method

.method private k(Ljava/lang/String;)I
    .locals 5

    .line 5
    const-string/jumbo v0, "setAILang"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 9
    new-array v1, v0, [B

    const/16 v2, 0x54

    const/4 v3, 0x0

    .line 10
    aput-byte v2, v1, v3

    const/16 v2, 0x10

    const/4 v4, 0x1

    .line 11
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 18
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_2

    const/16 v0, 0x12

    if-ge v3, v0, :cond_2

    add-int/lit8 v0, v3, 0x2

    .line 19
    aget-byte v2, p1, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 24
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private k(Z)I
    .locals 2

    .line 47
    const-string v0, "openWifiApMode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 50
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "AUTO_DOWNLOAD"

    invoke-static {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x14

    .line 53
    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x54

    .line 55
    aput-byte v1, p1, v0

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 56
    aput-byte v0, p1, v1

    const/4 v0, 0x2

    .line 57
    aput-byte v1, p1, v0

    .line 59
    invoke-direct {p0, p1, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 60
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g()V

    return-void
.end method

.method static synthetic k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    return-void
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic k(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic k0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x()I

    move-result p0

    return p0
.end method

.method private l()I
    .locals 3

    .line 41
    const-string v0, "getCurSportData"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 44
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 46
    aput-byte v2, v0, v1

    .line 48
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 49
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private l(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f1:I

    return p1
.end method

.method private l(Ljava/lang/String;)I
    .locals 3

    .line 50
    const-string/jumbo v0, "setAppId0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 54
    new-array v0, v0, [B

    const/16 v1, 0x48

    const/4 v2, 0x0

    .line 55
    aput-byte v1, v0, v2

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    const/16 v1, 0x12

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 59
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 64
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 6
    const-string/jumbo v0, "setWifiHotSpotInfo0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x3c

    .line 9
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F:I

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->P:Ljava/lang/String;

    return-object p1
.end method

.method private l(Z)V
    .locals 3

    const-string v0, "onConnectStateChanged + "

    .line 11
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D()Z

    move-result v1

    const-string v2, "BluetoothLeService"

    if-eqz v1, :cond_0

    .line 12
    const-string p1, "reconnectDevice ignored when connecting state."

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz p1, :cond_3

    .line 15
    sget v1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-interface {p1, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onConnectStateChanged(I)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j:Landroid/bluetooth/BluetoothManager;

    .line 24
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B()Z

    .line 27
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    .line 28
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R()V

    .line 30
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->u:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    .line 40
    :cond_4
    :goto_0
    const-string p1, "bluetooth state is not ready."

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z:Z

    return p0
.end method

.method static synthetic l(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o0:Z

    return p1
.end method

.method static synthetic l0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U()I

    move-result p0

    return p0
.end method

.method private m()I
    .locals 3

    .line 58
    const-string v0, "getDeviceBatery"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 61
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 63
    aput-byte v2, v0, v1

    .line 65
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 66
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(I)I

    move-result p0

    return p0
.end method

.method private m(Ljava/lang/String;)I
    .locals 3

    .line 112
    const-string/jumbo v0, "setContactCrc0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 116
    new-array v0, v0, [B

    const/16 v1, 0x46

    const/4 v2, 0x0

    .line 117
    aput-byte v1, v0, v2

    .line 119
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->d(Ljava/lang/String;)[B

    move-result-object p1

    .line 120
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    const/4 v1, 0x4

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 121
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 126
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 5
    const-string/jumbo v0, "setWifiHotSpotInfoCore"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 12
    array-length v0, p1

    const/16 v1, 0x11

    div-int/2addr v0, v1

    array-length v2, p1

    rem-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "bytes.length: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BluetoothLeService"

    invoke-direct {p0, v5, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "totalSsidPiece: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x54

    const/4 v7, 0x2

    const/16 v8, 0x14

    if-ge v2, v0, :cond_5

    .line 16
    new-array v8, v8, [B

    .line 17
    aput-byte v6, v8, v3

    .line 18
    aput-byte v4, v8, v4

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 21
    aput-byte v9, v8, v7

    if-ne v2, v6, :cond_3

    .line 23
    array-length v6, p1

    rem-int/2addr v6, v1

    goto :goto_3

    :cond_3
    const/16 v6, 0x11

    .line 24
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "curMaxCount: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    add-int/lit8 v9, v7, 0x3

    mul-int/lit8 v10, v2, 0x11

    add-int/2addr v10, v7

    .line 26
    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 29
    :cond_4
    invoke-direct {p0, v8}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 33
    array-length p2, p1

    div-int/2addr p2, v1

    array-length v0, p1

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    :goto_5
    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_a

    .line 35
    new-array v2, v8, [B

    .line 36
    aput-byte v6, v2, v3

    .line 37
    aput-byte v7, v2, v4

    add-int/lit8 v5, p2, -0x1

    if-ne v0, v5, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v9, v0

    int-to-byte v9, v9

    .line 40
    aput-byte v9, v2, v7

    if-ne v0, v5, :cond_8

    .line 42
    array-length v5, p1

    rem-int/2addr v5, v1

    goto :goto_8

    :cond_8
    const/16 v5, 0x11

    :goto_8
    const/4 v9, 0x0

    :goto_9
    if-ge v9, v5, :cond_9

    add-int/lit8 v10, v9, 0x3

    mul-int/lit8 v11, v0, 0x11

    add-int/2addr v11, v9

    .line 44
    aget-byte v11, p1, v11

    aput-byte v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 47
    :cond_9
    invoke-direct {p0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 50
    :cond_a
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private m(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A0:Z

    if-eqz p1, :cond_0

    .line 55
    const-string p1, "BluetoothLeService"

    const-string v0, "clear cmd list"

    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->W0:[B

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->F0:Z

    return p0
.end method

.method static synthetic m(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A0:Z

    return p1
.end method

.method static synthetic m0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q()I

    move-result p0

    return p0
.end method

.method private n()I
    .locals 3

    .line 67
    const-string v0, "getDeviceCode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 70
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x1f

    .line 71
    aput-byte v2, v0, v1

    .line 73
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 75
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private n(I)I
    .locals 3

    .line 89
    const-string/jumbo v0, "setDeviceWallpaperState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 93
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x36

    .line 94
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 96
    aput-byte p1, v0, v1

    .line 98
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 100
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(I)I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private n(Ljava/lang/String;)I
    .locals 3

    .line 76
    const-string/jumbo v0, "setDeviceName0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 80
    new-array v0, v0, [B

    const/16 v1, 0x30

    const/4 v2, 0x0

    .line 81
    aput-byte v1, v0, v2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    const/16 v1, 0xb

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 84
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 88
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w(Z)V

    return-void
.end method

.method static synthetic n(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y0:Z

    return p0
.end method

.method static synthetic n0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K()I

    move-result p0

    return p0
.end method

.method private o()I
    .locals 3

    .line 19
    const-string v0, "getDeviceDial0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 23
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x34

    .line 24
    aput-byte v2, v0, v1

    .line 26
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 28
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private o(I)I
    .locals 3

    .line 5
    const-string/jumbo v0, "setGoal"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    const/16 v1, 0x1a

    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 11
    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/c;->a(I)[B

    move-result-object p1

    .line 12
    aget-byte v1, p1, v2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 13
    aget-byte v1, p1, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 14
    aget-byte v1, p1, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 15
    aget-byte p1, p1, v2

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    .line 17
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 18
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(I)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s(Z)I

    move-result p0

    return p0
.end method

.method private o(Ljava/lang/String;)I
    .locals 3

    .line 29
    const-string/jumbo v0, "setPhoneMac0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 33
    new-array v0, v0, [B

    const/16 v1, 0x49

    const/4 v2, 0x0

    .line 34
    aput-byte v1, v0, v2

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 37
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    const/16 v1, 0x12

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 38
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 43
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method private o(Z)I
    .locals 3

    .line 44
    const-string/jumbo v0, "setAiChatState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 47
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x54

    .line 49
    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    .line 50
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 51
    aput-byte p1, v0, v1

    .line 53
    invoke-direct {p0, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 54
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic o(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g0()V

    return-void
.end method

.method static synthetic o0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v()I

    move-result p0

    return p0
.end method

.method private p()I
    .locals 3

    .line 15
    const-string v0, "getDeviceDialCustom0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 19
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x42

    .line 20
    aput-byte v2, v0, v1

    .line 22
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 24
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private p(I)I
    .locals 3

    .line 6
    const-string/jumbo v0, "setHourFormat2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 9
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x1d

    .line 10
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 11
    aput-byte p1, v0, v1

    .line 13
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 14
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(I)I

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(Z)I

    move-result p0

    return p0
.end method

.method private p(Z)I
    .locals 3

    .line 25
    const-string/jumbo v0, "setGSensorIndState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 28
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 30
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 31
    aput-byte p1, v0, v1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 34
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic p(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->c0()V

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic p0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->I()I

    move-result p0

    return p0
.end method

.method private q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private q(I)I
    .locals 4

    const/16 v0, 0x14

    .line 17
    new-array v0, v0, [B

    const/16 v1, 0x4d

    const/4 v2, 0x0

    .line 18
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x7

    .line 19
    aput-byte v3, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 20
    aput-byte p1, v0, v1

    .line 22
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    return v2
.end method

.method static synthetic q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->U0:I

    return p1
.end method

.method static synthetic q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Z)I

    move-result p0

    return p0
.end method

.method private q(Z)I
    .locals 3

    .line 6
    const-string/jumbo v0, "setLost"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 9
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 11
    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 12
    aput-byte p1, v0, v1

    .line 15
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 16
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic q(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b0()V

    return-void
.end method

.method static synthetic q0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t()I

    move-result p0

    return p0
.end method

.method private r()I
    .locals 3

    .line 5
    const-string v0, "getDeviceInfo2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 10
    aput-byte v2, v0, v1

    .line 12
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 13
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method private r(I)I
    .locals 3

    .line 25
    const-string/jumbo v0, "setTouchMode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 28
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 30
    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    .line 31
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 32
    aput-byte p1, v0, v1

    .line 34
    invoke-direct {p0, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 35
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r(I)I

    move-result p0

    return p0
.end method

.method static synthetic r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Z)I

    move-result p0

    return p0
.end method

.method private r(Z)I
    .locals 3

    .line 14
    const-string/jumbo v0, "setOfflineSpeechRecognition0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 17
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x78

    .line 19
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 20
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 21
    aput-byte p1, v0, v1

    .line 23
    invoke-direct {p0, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a([BZ)Z

    .line 24
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic r(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic r0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k()I

    move-result p0

    return p0
.end method

.method private s()I
    .locals 1

    .line 19
    const-string v0, "getDeviceRssi0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 23
    :cond_1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(I)I

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Z)I

    move-result p0

    return p0
.end method

.method private s(Z)I
    .locals 3

    .line 5
    const-string/jumbo v0, "setPhontMode"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 12
    aput-byte v1, v0, v1

    goto :goto_0

    .line 14
    :cond_1
    aput-byte v2, v0, v1

    .line 17
    :goto_0
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 18
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic s(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w:Z

    return p0
.end method

.method static synthetic s0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n()I

    move-result p0

    return p0
.end method

.method private t()I
    .locals 5

    .line 4
    const-string v0, "getDeviceSystemStateInfo0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v1, v0, [B

    const/16 v2, 0x54

    const/4 v3, 0x0

    .line 9
    aput-byte v2, v1, v3

    const/16 v2, 0x11

    const/4 v4, 0x1

    .line 10
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 18
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(I)I

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Z)I

    move-result p0

    return p0
.end method

.method private t(Z)I
    .locals 4

    .line 19
    const-string/jumbo v0, "setTemperatureMode2"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 22
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 24
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x37

    .line 26
    aput-byte v0, v1, v2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 28
    aput-byte v0, v1, v0

    goto :goto_1

    .line 30
    :cond_2
    aput-byte v2, v1, v0

    .line 33
    :goto_1
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 34
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic t(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->x:J

    return-wide v0
.end method

.method static synthetic t0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    return p0
.end method

.method private u()I
    .locals 3

    .line 4
    const-string v0, "getEqInfo0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x53

    .line 9
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 10
    aput-byte v1, v0, v1

    .line 12
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 14
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    return p1
.end method

.method static synthetic u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e(Z)I

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    return-void
.end method

.method private u(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o:Z

    return-void
.end method

.method static synthetic u0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S0:I

    return v0
.end method

.method private v()I
    .locals 3

    .line 4
    const-string v0, "getMediaFileState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x54

    .line 9
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 10
    aput-byte v2, v0, v1

    .line 12
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 13
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v0
.end method

.method static synthetic v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->d(I)I

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o(Z)I

    move-result p0

    return p0
.end method

.method private v(Z)I
    .locals 3

    .line 14
    const-string/jumbo v0, "startFactoryTestMode0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/16 v0, 0x14

    .line 18
    new-array v0, v0, [B

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 19
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 22
    aput-byte v1, v0, v1

    goto :goto_0

    .line 24
    :cond_1
    aput-byte v2, v0, v1

    .line 26
    :goto_0
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 28
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method static synthetic v(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L()V

    return-void
.end method

.method static synthetic v0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->s()I

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n(I)I

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p(Z)I

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->Z0:J

    return-wide v0
.end method

.method private w()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeService"

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private w(Z)V
    .locals 2

    .line 10
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    .line 13
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g1:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r:Ljava/lang/Thread;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syncHistoryDataNow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothLeService"

    invoke-direct {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method static synthetic w0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->o()I

    move-result p0

    return p0
.end method

.method private x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;I)I
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q(I)I

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->r(Z)I

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C()Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X()I

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Z)I

    move-result p0

    return p0
.end method

.method private y()Z
    .locals 6

    .line 3
    const-string/jumbo v0, "service initCharacteristic."

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;)Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->w0:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 6
    invoke-direct {p0, v5}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 10
    const-string v2, "connect charactistic error."

    invoke-direct {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method static synthetic y0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p()I

    move-result p0

    return p0
.end method

.method private z()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestMtu 247, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;

    invoke-direct {v2, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$o;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    const-string v0, "delay 2000ms for open raw data notification."

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y()Z

    move-result p0

    return p0
.end method

.method static synthetic z(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    return p1
.end method

.method static synthetic z0(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 862
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 863
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1389
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    if-eqz v0, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[debug]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[error]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 4

    const-string v0, "BluetoothLeService"

    const/4 v1, -0x1

    .line 39
    :try_start_0
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->q0:I

    .line 40
    const-string v1, "bluetooth gatt close"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    .line 42
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R()V

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v1, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 45
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    .line 46
    const-string v1, " mBluetoothGatt is null"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[info]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->n:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[warn]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 4

    const-string v0, "BluetoothLeService"

    .line 5
    :try_start_0
    const-string v1, "bluetooth gatt disconnect"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    .line 7
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R()V

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 10
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    .line 11
    const-string v1, "mBluetoothGatt is null"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c()V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 19
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->M()V

    .line 20
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(I)I
    .locals 4

    .line 33
    const-string/jumbo v0, "setDeviceDialState0"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->m(Z)V

    const/16 v1, 0x14

    .line 39
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x35

    .line 40
    aput-byte v3, v1, v2

    int-to-byte p1, p1

    .line 42
    aput-byte p1, v1, v0

    .line 44
    invoke-direct {p0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 46
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return p1
.end method

.method protected m(I)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 67
    const-string/jumbo v2, "setDeviceMode2"

    invoke-direct {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v1

    :cond_0
    const/16 v2, 0x14

    .line 70
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0xe

    .line 71
    aput-byte v4, v2, v3

    const/16 v4, -0x46

    const/16 v5, -0x24

    const/4 v6, -0x2

    const/16 v7, 0x78

    const/16 v8, 0x56

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x68

    const/4 v3, 0x1

    const/16 v17, 0x34

    const/16 v18, 0x12

    if-ne v1, v3, :cond_1

    .line 73
    aput-byte v18, v2, v3

    .line 74
    aput-byte v17, v2, v15

    .line 75
    aput-byte v8, v2, v14

    .line 76
    aput-byte v7, v2, v13

    .line 77
    aput-byte v6, v2, v12

    .line 78
    aput-byte v5, v2, v11

    .line 79
    aput-byte v4, v2, v10

    .line 80
    aput-byte v16, v2, v9

    goto :goto_0

    :cond_1
    if-ne v1, v15, :cond_2

    .line 82
    aput-byte v6, v2, v3

    .line 83
    aput-byte v5, v2, v15

    .line 84
    aput-byte v4, v2, v14

    .line 85
    aput-byte v16, v2, v13

    const/16 v1, 0x76

    .line 86
    aput-byte v1, v2, v12

    const/16 v1, 0x54

    .line 87
    aput-byte v1, v2, v11

    const/16 v1, 0x32

    .line 88
    aput-byte v1, v2, v10

    const/16 v1, 0x10

    .line 89
    aput-byte v1, v2, v9

    goto :goto_0

    :cond_2
    if-ne v1, v14, :cond_3

    .line 91
    aput-byte v18, v2, v3

    .line 92
    aput-byte v17, v2, v15

    .line 93
    aput-byte v8, v2, v14

    .line 94
    aput-byte v7, v2, v13

    const/16 v1, -0x66

    .line 95
    aput-byte v1, v2, v12

    const/16 v1, -0x44

    .line 96
    aput-byte v1, v2, v11

    const/16 v1, -0x22

    .line 97
    aput-byte v1, v2, v10

    const/16 v1, -0x10

    .line 98
    aput-byte v1, v2, v9

    goto :goto_0

    :cond_3
    if-ne v1, v13, :cond_4

    .line 100
    aput-byte v18, v2, v3

    .line 101
    aput-byte v17, v2, v15

    .line 102
    aput-byte v18, v2, v14

    .line 103
    aput-byte v17, v2, v13

    .line 104
    aput-byte v18, v2, v12

    .line 105
    aput-byte v17, v2, v11

    .line 106
    aput-byte v18, v2, v10

    .line 107
    aput-byte v17, v2, v9

    .line 110
    :cond_4
    :goto_0
    invoke-direct {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->b([B)Z

    .line 111
    iget v1, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T:I

    return v1
.end method

.method protected n(Z)V
    .locals 5

    const-string/jumbo v0, "scanLeDevice ignored current state: "

    .line 5
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "BluetoothLeService"

    if-nez v1, :cond_0

    .line 6
    const-string p1, "mBluetoothAdapter is null"

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scanLeDevice "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v:Z

    if-ne v1, p1, :cond_1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->v:Z

    .line 17
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->T0:Z

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 19
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    const-string v0, "removeCallbacks pre scan scanLeDeviceRunnable"

    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    const-string v0, "removeCallbacks pre scan stopLeDeviceRunnable"

    invoke-direct {p0, v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f0()V

    :cond_3
    if-eqz p1, :cond_4

    .line 28
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$h;

    invoke-direct {p1, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$h;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D:Ljava/lang/Runnable;

    .line 49
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;

    invoke-direct {p1, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$i;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C:Ljava/lang/Runnable;

    .line 62
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->e0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scanLeDevice exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p1, "BluetoothLeService"

    const-string v0, "onBind"

    invoke-direct {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->L:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    const-string v0, "BluetoothLeService"

    const-string v1, "onCreate 3.0.0"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/b;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(IZ)V

    .line 18
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->A()V

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J0:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G()Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Service;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J0:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->G()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    :goto_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K0:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->H()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    .line 30
    const-string v0, "DEVICE_ADDRESS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->t:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->l(Z)V

    .line 34
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$v;

    invoke-direct {v0, p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$v;-><init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R0:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    const-string v0, "onDestroy"

    const-string v1, "BluetoothLeService"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->z0:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V0:Z

    .line 5
    const-string/jumbo v3, "user disconnect device."

    invoke-direct {p0, v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->f()V

    .line 7
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enter silence mode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->V0:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mUserDisconnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->y:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 11
    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->B:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->D:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->S()V

    .line 16
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->R()V

    .line 18
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->X0:Z

    .line 19
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->p:Ljava/lang/Thread;

    .line 23
    :cond_1
    const-string v0, "Ble Service-onDestroy"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->J0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 34
    const-string v0, "killProcess"

    invoke-direct {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const-string p1, "BluetoothLeService"

    const-string p2, "onStartCommand"

    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "BluetoothLeService"

    const-string v1, "onUnbind"

    invoke-direct {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
