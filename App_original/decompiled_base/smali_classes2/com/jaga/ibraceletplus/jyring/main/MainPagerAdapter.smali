.class public Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MainPagerAdapter.java"


# instance fields
.field private fragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->fragmentMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 37
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;-><init>()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;-><init>()V

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;-><init>()V

    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;-><init>()V

    goto :goto_0

    .line 25
    :cond_3
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;-><init>()V

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->fragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->fragmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getFragmentMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->fragmentMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
