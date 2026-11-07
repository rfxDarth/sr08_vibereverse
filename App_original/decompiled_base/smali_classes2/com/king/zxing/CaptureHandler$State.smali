.class final enum Lcom/king/zxing/CaptureHandler$State;
.super Ljava/lang/Enum;
.source "CaptureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/CaptureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/CaptureHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/CaptureHandler$State;

.field public static final enum DONE:Lcom/king/zxing/CaptureHandler$State;

.field public static final enum PREVIEW:Lcom/king/zxing/CaptureHandler$State;

.field public static final enum SUCCESS:Lcom/king/zxing/CaptureHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lcom/king/zxing/CaptureHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/king/zxing/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/king/zxing/CaptureHandler$State;->PREVIEW:Lcom/king/zxing/CaptureHandler$State;

    .line 59
    new-instance v1, Lcom/king/zxing/CaptureHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/king/zxing/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/king/zxing/CaptureHandler$State;->SUCCESS:Lcom/king/zxing/CaptureHandler$State;

    .line 60
    new-instance v3, Lcom/king/zxing/CaptureHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/king/zxing/CaptureHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/king/zxing/CaptureHandler$State;->DONE:Lcom/king/zxing/CaptureHandler$State;

    const/4 v5, 0x3

    .line 57
    new-array v5, v5, [Lcom/king/zxing/CaptureHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/king/zxing/CaptureHandler$State;->$VALUES:[Lcom/king/zxing/CaptureHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/CaptureHandler$State;
    .locals 1

    .line 57
    const-class v0, Lcom/king/zxing/CaptureHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/king/zxing/CaptureHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/king/zxing/CaptureHandler$State;
    .locals 1

    .line 57
    sget-object v0, Lcom/king/zxing/CaptureHandler$State;->$VALUES:[Lcom/king/zxing/CaptureHandler$State;

    invoke-virtual {v0}, [Lcom/king/zxing/CaptureHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/CaptureHandler$State;

    return-object v0
.end method
