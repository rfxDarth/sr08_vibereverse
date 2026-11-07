.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->requestBlePermission()V
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

    .line 2066
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2134
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const v0, 0x7f13036d

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    .line 2136
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 2138
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const p2, 0x7f13036c

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2071
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const p2, 0x7f130375

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->toast(Ljava/lang/String;)V

    return-void

    .line 2076
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2502(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Z)Z

    .line 2077
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2078
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$1500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/widget/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2079
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$902(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    .line 2082
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 2085
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    .line 2086
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 2088
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSearch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2091
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 2094
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "P_SCAN_DEVICE_CHECK_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 2104
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "jringSCANDEVICEDATA_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    const-string v2, "device_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2106
    const-string v2, "device_mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    const-string p2, "device_rssi"

    const/16 v2, 0x32

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    const-string p2, "device_ver"

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const-string p2, "device_cid"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const-string p2, "device_did"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    const-string p2, "device_bindflag"

    const-string v3, "0"

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2112
    const-string p2, "device_bindstate"

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2114
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-virtual {p2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2117
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2500(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Z

    move-result p1

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->callRemoteScanDevice(Z)V

    .line 2118
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2600(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2120
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llHint:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2122
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15$1;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
