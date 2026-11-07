.class Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;
.super Ljava/lang/Object;
.source "EditlistActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 94
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
