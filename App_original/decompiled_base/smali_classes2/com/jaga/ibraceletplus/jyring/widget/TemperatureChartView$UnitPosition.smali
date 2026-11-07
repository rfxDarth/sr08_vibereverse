.class public final enum Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;
.super Ljava/lang/Enum;
.source "TemperatureChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

.field public static final enum PREFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

.field public static final enum SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;


# direct methods
.method private static synthetic $values()[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;
    .locals 3

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->PREFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    const-string v1, "PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->PREFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    const-string v1, "SUFFIX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->SUFFIX:Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->$values()[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->$VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    return-object p0
.end method

.method public static values()[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;
    .locals 1

    .line 30
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->$VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    invoke-virtual {v0}, [Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$UnitPosition;

    return-object v0
.end method
