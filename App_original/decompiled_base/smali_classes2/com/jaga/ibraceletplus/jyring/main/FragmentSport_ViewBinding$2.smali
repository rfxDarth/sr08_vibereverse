.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FragmentSport_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
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

    .line 43
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport_ViewBinding$2;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->OnClickivHistory()V

    return-void
.end method
