.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->initSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

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

    .line 2201
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {p2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;-><init>()V

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$902(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    const/4 p1, 0x0

    .line 2202
    :goto_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 2203
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const p4, 0x7f100199

    .line 2204
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "ivConnect"

    invoke-virtual {p2, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p3, :cond_0

    .line 2207
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string/jumbo p5, "tvName"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceName(Ljava/lang/String;)V

    .line 2208
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string/jumbo p5, "tvMac"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceAddress(Ljava/lang/String;)V

    .line 2209
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string/jumbo p5, "ver"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setVer(Ljava/lang/String;)V

    .line 2210
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string p5, "cid"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setCid(Ljava/lang/String;)V

    .line 2211
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string p5, "did"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setDid(Ljava/lang/String;)V

    .line 2212
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string p5, "bindFlag"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindFlag(Ljava/lang/String;)V

    .line 2213
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    move-result-object p4

    const-string p5, "bindState"

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindState(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 2216
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2218
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickivConnect()V

    return-void
.end method
