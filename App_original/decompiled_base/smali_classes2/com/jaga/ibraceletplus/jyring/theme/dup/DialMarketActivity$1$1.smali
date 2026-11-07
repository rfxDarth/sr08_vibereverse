.class Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;
.super Ljava/lang/Object;
.source "DialMarketActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 380
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p2, "jring.SYNC_PROCESSING"

    const-string p4, "0"

    invoke-virtual {p1, p2, p4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 382
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    const p3, 0x7f130011

    invoke-virtual {p2, p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 386
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p4, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getFilename()Ljava/lang/String;

    move-result-object p2

    .line 388
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p4, p4, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    invoke-virtual {p4}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getImage()Ljava/lang/String;

    move-result-object p4

    .line 389
    iget-object p5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p5, p5, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {p5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    invoke-virtual {p5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getName()Ljava/lang/String;

    move-result-object p5

    .line 390
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getMd5String()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    invoke-virtual {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getDomain()Ljava/lang/String;

    move-result-object p3

    .line 393
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filename: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "md5String: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imagefilename: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v1, "filename"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string p2, "md5String"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string p2, "imagefilename"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string p2, "dialname"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string p2, "domain"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1$1;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
