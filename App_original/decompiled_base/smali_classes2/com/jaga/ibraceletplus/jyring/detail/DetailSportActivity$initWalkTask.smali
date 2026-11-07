.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;
.super Landroid/os/AsyncTask;
.source "DetailSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initWalkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected alSport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field protected calorie:F

.field protected distance:F

.field protected stepAll:I

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 166
    array-length v2, v1

    const/4 v3, 0x4

    .line 167
    const-string v4, ""

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    const/4 v2, 0x0

    .line 170
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    .line 171
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    .line 172
    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    .line 173
    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v9, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v17, v9, v11

    .line 177
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    add-int/2addr v3, v6

    invoke-static {v9, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    div-long/2addr v9, v11

    const-wide/16 v13, 0x1

    sub-long v19, v9, v13

    .line 179
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v3, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/util/Date;

    mul-long v9, v17, v11

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    mul-long v11, v11, v19

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v2

    aput-object v9, v10, v5

    const-string v6, "%s %s"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v13, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v14, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->macid:Ljava/lang/String;

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v15, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->mid:Ljava/lang/String;

    const/16 v16, 0x64

    invoke-virtual/range {v13 .. v20}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    .line 182
    new-array v3, v7, [I

    const/16 v6, 0x8b

    aput v6, v3, v5

    aput v8, v3, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 183
    new-array v7, v7, [I

    aput v6, v7, v5

    aput v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 184
    new-array v8, v6, [I

    .line 185
    new-array v9, v6, [I

    .line 186
    new-array v6, v6, [I

    const/4 v10, 0x0

    .line 187
    :goto_0
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 188
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    return-object v4

    .line 191
    :cond_1
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v11

    .line 192
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v13}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v13

    add-int/lit8 v13, v13, -0x65

    sub-long v11, v11, v17

    long-to-int v12, v11

    .line 193
    div-int/2addr v12, v1

    .line 194
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v11

    .line 195
    aget-object v14, v7, v12

    aput v11, v14, v13

    .line 197
    aget-object v12, v3, v12

    aget v14, v12, v13

    add-int/2addr v14, v11

    aput v14, v12, v13

    .line 199
    aget v12, v6, v13

    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v14

    add-int/2addr v12, v14

    aput v12, v6, v13

    .line 200
    aget v12, v8, v13

    iget-object v14, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v14}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v14

    add-int/2addr v12, v14

    aput v12, v8, v13

    if-lez v11, :cond_2

    .line 202
    aget v11, v9, v13

    add-int/2addr v11, v5

    aput v11, v9, v13

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v1, v9, v6, v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;[I[I[I)V

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 208
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_6

    .line 209
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v4

    .line 213
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 214
    :goto_2
    aget-object v9, v3, v6

    array-length v10, v9

    if-ge v8, v10, :cond_5

    .line 215
    aget v9, v9, v8

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    .line 216
    new-instance v10, Llecho/lib/hellocharts/model/SubcolumnValue;

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-virtual {v11}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {v12}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)[I

    move-result-object v12

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v9, v11}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 218
    :cond_5
    new-instance v8, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v8, v7}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 219
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 221
    :cond_6
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/ColumnChartView;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    .line 222
    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setColumns(Ljava/util/List;)Llecho/lib/hellocharts/model/ColumnChartData;

    .line 223
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    .line 224
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 231
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarSport;->notifyDataSetChanged()V

    .line 235
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1}, Llecho/lib/hellocharts/view/ColumnChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 236
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iput v0, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 237
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 239
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvWalk:Llecho/lib/hellocharts/view/ColumnChartView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->alSport:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->ccvSport:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {p1, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;->access$202(Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity;Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;)Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSportActivity$initWalkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
