.class Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditlistActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V
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

    .line 67
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;->val$target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->ensureDelete()V

    return-void
.end method
