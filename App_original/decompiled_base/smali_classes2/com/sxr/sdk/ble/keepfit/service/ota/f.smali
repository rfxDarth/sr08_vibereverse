.class public Lcom/sxr/sdk/ble/keepfit/service/ota/f;
.super Ljava/lang/Object;
.source "Statics.java"


# static fields
.field public static final A:Ljava/util/UUID;

.field public static final B:Ljava/util/UUID;

.field public static final C:Ljava/util/UUID;

.field public static final D:Ljava/util/UUID;

.field public static final E:Ljava/util/UUID;

.field public static final F:Ljava/util/UUID;

.field public static final G:Ljava/util/UUID;

.field public static final H:Ljava/util/UUID;

.field public static final I:I = 0x3

.field public static final J:I = 0x5

.field public static final K:I = 0x6

.field public static final L:I = 0x3

.field public static final M:I = 0x0

.field public static final N:Ljava/lang/String; = "240"

.field public static final O:I = 0x0

.field public static final P:Ljava/lang/String; = "0x50"

.field public static final Q:I = 0x2

.field public static final R:I = 0x3

.field public static final S:I = 0x64

.field public static final T:I = 0x65

.field public static final U:I = 0xffff

.field public static final V:I = 0xfffe

.field private static W:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X:Ljava/util/regex/Pattern;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static final g:I = 0x17

.field public static final h:I = 0x14

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:Ljava/util/UUID;

.field public static final n:Ljava/util/UUID;

.field public static final o:Ljava/util/UUID;

.field public static final p:Ljava/util/UUID;

.field public static final q:Ljava/util/UUID;

.field public static final r:Ljava/util/UUID;

.field public static final s:Ljava/util/UUID;

.field public static final t:Ljava/util/UUID;

.field public static final u:Ljava/util/UUID;

.field public static final v:Ljava/util/UUID;

.field public static final w:Ljava/util/UUID;

.field public static final x:Ljava/util/UUID;

.field public static final y:Ljava/util/UUID;

.field public static final z:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BluetoothGattUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ProgressUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ConnectionState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->c:Ljava/lang/String;

    const/16 v0, 0xb

    .line 5
    sput v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->d:I

    const/16 v0, 0xc

    .line 6
    sput v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->e:I

    const/16 v0, 0xd

    .line 7
    sput v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->f:I

    .line 17
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->m:Ljava/util/UUID;

    .line 18
    const-string v0, "8082caa8-41a6-4021-91c6-56f9b954cc34"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->n:Ljava/util/UUID;

    .line 19
    const-string v0, "724249f0-5eC3-4b5f-8804-42345af08651"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->o:Ljava/util/UUID;

    .line 20
    const-string v0, "6c53db25-47a1-45fe-a022-7c92fb334fd4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->p:Ljava/util/UUID;

    .line 21
    const-string v0, "9d84b9a3-000c-49d8-9183-855b673fda31"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->q:Ljava/util/UUID;

    .line 22
    const-string v0, "457871e8-d516-4ca1-9116-57d0b17b9cb2"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->r:Ljava/util/UUID;

    .line 23
    const-string v0, "5f78df94-798c-46f5-990a-b3eb6a065c88"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->s:Ljava/util/UUID;

    .line 25
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->t:Ljava/util/UUID;

    .line 27
    const-string v0, "64B4E8B5-0DE5-401B-A21D-ACC8DB3B913A"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->u:Ljava/util/UUID;

    .line 28
    const-string v0, "42C3DFDD-77BE-4D9C-8454-8F875267FB3B"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->v:Ljava/util/UUID;

    .line 29
    const-string v0, "B7DE1EEA-823D-43BB-A3AF-C4903DFCE23C"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->w:Ljava/util/UUID;

    .line 30
    const-string v0, "61C8849C-F639-4765-946E-5C3419BEBB2A"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->x:Ljava/util/UUID;

    .line 32
    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->y:Ljava/util/UUID;

    .line 33
    const-string v0, "00002A29-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->z:Ljava/util/UUID;

    .line 34
    const-string v0, "00002A24-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->A:Ljava/util/UUID;

    .line 35
    const-string v0, "00002A25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->B:Ljava/util/UUID;

    .line 36
    const-string v0, "00002A27-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->C:Ljava/util/UUID;

    .line 37
    const-string v0, "00002A26-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->D:Ljava/util/UUID;

    .line 38
    const-string v0, "00002A28-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->E:Ljava/util/UUID;

    .line 39
    const-string v0, "00002A23-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->F:Ljava/util/UUID;

    .line 40
    const-string v0, "00002A2A-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->G:Ljava/util/UUID;

    .line 41
    const-string v0, "00002A50-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->H:Ljava/util/UUID;

    .line 66
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f$a;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/f$a;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->W:Landroid/util/SparseArray;

    .line 82
    const-string v0, "P(\\d+)_(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->X:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->X:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid GPIO string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 6
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->W:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->W:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 10
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fileDirectoriesCreated"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fileDirectoriesCreated"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
