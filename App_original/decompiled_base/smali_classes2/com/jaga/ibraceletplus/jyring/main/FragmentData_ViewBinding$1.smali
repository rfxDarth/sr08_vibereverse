.class Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FragmentData_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)V
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

    .line 42
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData_ViewBinding$1;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->OnClickivShare()V

    return-void
.end method
