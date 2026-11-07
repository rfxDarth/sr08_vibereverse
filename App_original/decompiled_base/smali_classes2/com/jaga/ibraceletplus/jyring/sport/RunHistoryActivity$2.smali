.class Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;
.super Ljava/lang/Object;
.source "RunHistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 219
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string/jumbo p2, "runid"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-virtual {p3}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f130443

    .line 221
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;

    invoke-direct {p3, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;Ljava/lang/String;)V

    const p1, 0x7f13016b

    .line 222
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f13015a

    const/4 p3, 0x0

    .line 231
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
