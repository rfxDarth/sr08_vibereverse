.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;
.super Ljava/lang/Object;
.source "ECardSimpleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

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

    .line 106
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    .line 107
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {p2}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    .line 109
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)V

    return-void
.end method
