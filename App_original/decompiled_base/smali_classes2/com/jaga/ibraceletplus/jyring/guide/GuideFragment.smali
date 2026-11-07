.class public Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;
.super Landroidx/fragment/app/Fragment;
.source "GuideFragment.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->TAG:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GuideFragment;->iBraceletplusSQLiteHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-void
.end method
