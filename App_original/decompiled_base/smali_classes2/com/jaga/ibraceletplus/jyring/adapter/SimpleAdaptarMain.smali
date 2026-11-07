.class public Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;
.super Landroid/widget/SimpleAdapter;
.source "SimpleAdaptarMain.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 24
    iput-object p3, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->data:Ljava/util/List;

    .line 25
    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 32
    const-string p3, "bSelect"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const p3, 0x7f0a04da

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 37
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f100005

    invoke-static {p1, p3, v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->setDrawable(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-object p2

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 41
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdaptarMain;->context:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p1, v0, p3, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->setDrawable(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-object p2
.end method
