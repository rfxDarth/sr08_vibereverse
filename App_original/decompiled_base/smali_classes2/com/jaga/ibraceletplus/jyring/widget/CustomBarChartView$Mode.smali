.class public final enum Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;
.super Ljava/lang/Enum;
.source "CustomBarChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

.field public static final enum DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

.field public static final enum MONTH:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

.field public static final enum WEEK:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;


# direct methods
.method private static synthetic $values()[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;
    .locals 3

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 28
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const-string v1, "WEEK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->WEEK:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 29
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const-string v1, "MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 26
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->$values()[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->$VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;
    .locals 1

    .line 26
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->$VALUES:[Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v0}, [Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    return-object v0
.end method
