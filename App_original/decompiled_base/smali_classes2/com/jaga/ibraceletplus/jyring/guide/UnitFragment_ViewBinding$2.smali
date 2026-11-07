.class Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UnitFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;)V
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

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/guide/UnitFragment;->onTvUsClicked()V

    return-void
.end method
