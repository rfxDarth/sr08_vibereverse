.class public Lcom/jaga/ibraceletplus/jyring/adapter/SimpleExpandableListAdapterEcg;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "SimpleExpandableListAdapterEcg.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private childData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
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
            "[I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 20
    invoke-direct/range {p0 .. p9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    move-object p2, p1

    move-object p1, p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleExpandableListAdapterEcg;->TAG:Ljava/lang/String;

    .line 22
    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleExpandableListAdapterEcg;->context:Landroid/content/Context;

    .line 23
    iput-object p6, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleExpandableListAdapterEcg;->childData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    move p4, p2

    move p2, p1

    move-object p1, p0

    .line 29
    iget-object p5, p1, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleExpandableListAdapterEcg;->childData:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    return-object p3
.end method
