.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;
.super Ljava/lang/Object;
.source "DetailSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->initWalk(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

.field final synthetic val$iaaSport:[[I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;[[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    .line 305
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->val$iaaSport:[[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 310
    :goto_0
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->val$iaaSport:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 313
    :goto_1
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->val$iaaSport:[[I

    aget-object v6, v6, v3

    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 314
    aget v6, v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 315
    new-instance v7, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)[I

    move-result-object v9

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v6, v8}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 317
    :cond_0
    new-instance v5, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v5, v4}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 318
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 322
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 323
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 325
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 326
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 327
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method
