.class public Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;
    }
.end annotation


# instance fields
.field public alDate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private alphaSelect:F

.field private alphaUnselect:F

.field private countDisable:I

.field public dateEnd:Ljava/util/Date;

.field public dateStart:Ljava/util/Date;

.field protected first:I

.field public indexRange:I

.field private middles:[I

.field private onDateChangedListener:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;

.field private rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

.field public tvDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->first:I

    const/4 v1, 0x3

    .line 162
    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    .line 163
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    .line 164
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    const v1, 0x3f19999a    # 0.6f

    .line 165
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaUnselect:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaSelect:F

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    .line 200
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateEnd:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)[I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaUnselect:F

    return p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaSelect:F

    return p0
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->addLeft(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->switchRange()V

    return-void
.end method

.method private addLeft(II)V
    .locals 6

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_4

    .line 174
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    sub-int/2addr v5, v1

    invoke-static {v2, v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 177
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->week:[I

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v4

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    .line 179
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v4, 0x7f13051f

    invoke-virtual {p0, v4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-ne v2, v3, :cond_2

    .line 183
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->month:[I

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 182
    :cond_2
    const-string v2, ""

    .line 188
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 189
    const-string v5, "alpha"

    if-gt v1, v3, :cond_3

    const v3, 0x3e4ccccd    # 0.2f

    .line 190
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 192
    :cond_3
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaUnselect:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_2
    const-string/jumbo v3, "tvDate"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private initData()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->addLeft(II)V

    .line 47
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaSelect:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initView()V
    .locals 7

    const v0, 0x7f0a0489

    .line 54
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0a0379

    .line 55
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 61
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->setData(Ljava/util/ArrayList;)V

    .line 64
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)V

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->setOnItemClickListener(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->size:I

    .line 83
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)V

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f0a019f

    .line 110
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/gridlayout/widget/GridLayout;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 113
    invoke-virtual {v0, v2}, Landroidx/gridlayout/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 114
    invoke-virtual {v3, v1}, Landroidx/cardview/widget/CardView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v1

    .line 117
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v5, v6}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    const/4 v5, 0x0

    .line 120
    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private switchRange()V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->switchDate()V

    .line 234
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->addLeft(II)V

    .line 236
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alDate:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->alphaSelect:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->rvDate:Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$4;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getLabel(ILjava/util/ArrayList;II)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    new-instance v0, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 250
    const-string v1, "-"

    const/4 v2, 0x1

    const-string v3, ""

    if-nez p1, :cond_2

    .line 251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "%02d:00 "

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 252
    rem-int/lit8 v4, p3, 0x6

    if-eqz v4, :cond_1

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 253
    :cond_1
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    :goto_1
    move-object v3, p1

    goto :goto_3

    .line 256
    :cond_2
    const-string v4, " "

    if-ne p1, v2, :cond_3

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->week:[I

    aget p4, p4, p3

    invoke-virtual {p0, p4}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    rem-int/lit8 v4, p3, 0x6

    if-eqz v4, :cond_5

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_4

    goto :goto_2

    .line 264
    :cond_4
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 262
    :cond_5
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 266
    :cond_6
    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public getLabel2(Ljava/util/ArrayList;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 274
    new-instance v0, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v1, p2

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 275
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    const-string v2, "-"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v1, :cond_3

    mul-int/lit8 v1, p2, 0x5

    .line 276
    div-int/lit8 v6, v1, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    aput-object v1, v3, v4

    const-string v1, "%02d:%02d "

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    rem-int/lit8 v3, p2, 0x30

    if-eqz v3, :cond_2

    sub-int/2addr p3, v4

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    rem-int/lit8 p2, p2, 0x18

    if-nez p2, :cond_1

    .line 280
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 278
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    :goto_1
    move-object v5, v1

    goto :goto_3

    .line 283
    :cond_3
    const-string v6, " "

    if-ne v1, v4, :cond_4

    .line 284
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->week:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_3

    :cond_4
    if-ne v1, v3, :cond_7

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    rem-int/lit8 v6, p2, 0x6

    if-eqz v6, :cond_6

    sub-int/2addr p3, v4

    if-ne p2, p3, :cond_5

    goto :goto_2

    .line 291
    :cond_5
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 289
    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    goto :goto_1

    .line 293
    :cond_7
    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->initData()V

    .line 42
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->initView()V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onDateChangedListener:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;

    return-void
.end method

.method public setRange(I)V
    .locals 7

    const v0, 0x7f0a026c

    .line 126
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const v0, 0x7f0a026d

    .line 127
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 129
    :goto_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 130
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public switchDate()V
    .locals 7

    .line 205
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    .line 207
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v2, v2, v3

    sub-int/2addr v0, v2

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 212
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getWeekOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    const/4 v4, 0x6

    .line 213
    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateEnd:Ljava/util/Date;

    .line 214
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->tvDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateEnd:Ljava/util/Date;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    aput-object v5, v2, v1

    const-string v1, "%s ~ %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 219
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->countDisable:I

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->middles:[I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    .line 220
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getMonthOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateEnd:Ljava/util/Date;

    .line 224
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateEnd:Ljava/util/Date;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->dateStart:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getOffset(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->onDateChangedListener:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;

    invoke-interface {v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;->onDateChanged(II)V

    return-void
.end method
