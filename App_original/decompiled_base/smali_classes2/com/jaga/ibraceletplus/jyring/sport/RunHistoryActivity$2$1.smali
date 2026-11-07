.class Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;
.super Ljava/lang/Object;
.source "RunHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

.field final synthetic val$runid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;Ljava/lang/String;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->val$runid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->val$runid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteRunRecord(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->val$runid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteRunHistory(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V

    .line 228
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method
