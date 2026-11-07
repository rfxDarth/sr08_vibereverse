.class public Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DateRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;,
        Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;
    }
.end annotation


# instance fields
.field private alDate:Ljava/util/ArrayList;
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

.field private context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mItemClickListener:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->context:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->mItemClickListener:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 57
    check-cast p1, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;

    .line 58
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;->access$200(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "tvDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 41
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f0a0489

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;-><init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance p2, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;-><init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;Landroid/view/View;Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->alDate:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnItemClickListener(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;->mItemClickListener:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$OnItemClickListener;

    return-void
.end method
