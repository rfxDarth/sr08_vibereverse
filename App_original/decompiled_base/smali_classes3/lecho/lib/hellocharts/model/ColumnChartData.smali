.class public Llecho/lib/hellocharts/model/ColumnChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "ColumnChartData.java"


# static fields
.field public static final DEFAULT_BASE_VALUE:F = 0.0f

.field public static final DEFAULT_FILL_RATIO:F = 0.75f


# instance fields
.field private baseValue:F

.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field private fillRatio:F

.field private isStacked:Z

.field private subSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->subSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->subSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 34
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->subSpace:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 42
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    .line 43
    iget v0, p1, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    iput v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    .line 45
    iget-object p1, p1, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 46
    iget-object v1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/Column;-><init>(Llecho/lib/hellocharts/model/Column;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 7

    .line 52
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_0

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    int-to-float v6, v3

    invoke-direct {v5, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(F)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v5, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v5, v4}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 60
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 77
    iget-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Column;

    .line 78
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Column;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBaseValue()F
    .locals 1

    .line 136
    iget v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    return v0
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    return-object v0
.end method

.method public getFillRatio()F
    .locals 1

    .line 111
    iget v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    return v0
.end method

.method public getSubSpace()I
    .locals 1

    .line 20
    iget v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->subSpace:I

    return v0
.end method

.method public isStacked()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    return v0
.end method

.method public setBaseValue(F)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 143
    iput p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->baseValue:F

    return-object p0
.end method

.method public setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;)",
            "Llecho/lib/hellocharts/model/ColumnChartData;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    return-object p0

    .line 90
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    return-object p0
.end method

.method public setFillRatio(F)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 128
    :cond_0
    iput p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->fillRatio:F

    return-object p0
.end method

.method public setStacked(Z)Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 0

    .line 106
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked:Z

    return-object p0
.end method

.method public setSubSpace(I)V
    .locals 0

    .line 24
    iput p1, p0, Llecho/lib/hellocharts/model/ColumnChartData;->subSpace:I

    return-void
.end method

.method public update(F)V
    .locals 2

    .line 69
    iget-object v0, p0, Llecho/lib/hellocharts/model/ColumnChartData;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Column;

    .line 70
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/Column;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
