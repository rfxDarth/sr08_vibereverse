.class public final Lcom/sxr/sdk/ble/keepfit/aidl/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/aidl/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EcgGrid:[I

.field public static final EcgGrid_grid_color_large:I = 0x0

.field public static final EcgGrid_grid_color_middle:I = 0x1

.field public static final EcgGrid_grid_color_small:I = 0x2

.field public static final EcgView:[I

.field public static final EcgView_line_color:I = 0x0

.field public static final EcgView_line_color_scan:I = 0x1

.field public static final EcgView_line_width:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f04027d

    const v1, 0x7f04027e

    const v2, 0x7f04027c

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/R$styleable;->EcgGrid:[I

    const v0, 0x7f040343

    const v1, 0x7f040344

    const v2, 0x7f040342

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/R$styleable;->EcgView:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
