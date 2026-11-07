.class final enum Lcom/google/zxing/decode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/decode/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/decode/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/decode/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/google/zxing/decode/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/google/zxing/decode/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/google/zxing/decode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 74
    new-instance v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 78
    new-instance v1, Lcom/google/zxing/decode/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    .line 82
    new-instance v3, Lcom/google/zxing/decode/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/decode/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/decode/CaptureActivityHandler$State;

    const/4 v5, 0x3

    .line 70
    new-array v5, v5, [Lcom/google/zxing/decode/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/zxing/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/google/zxing/decode/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/decode/CaptureActivityHandler$State;
    .locals 1

    .line 70
    const-class v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/decode/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/decode/CaptureActivityHandler$State;
    .locals 1

    .line 70
    sget-object v0, Lcom/google/zxing/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/google/zxing/decode/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/google/zxing/decode/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/decode/CaptureActivityHandler$State;

    return-object v0
.end method
