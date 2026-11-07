.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "SmsRspSimpleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alSmsRsp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentDlg:Landroid/app/AlertDialog;

.field ivAddSmsRsp:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d1
    .end annotation
.end field

.field private lastRecordCrc:J

.field lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0294
    .end annotation
.end field

.field private mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnConnect:Landroid/widget/Button;

.field private maxSmsRspCnt:I

.field private onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;

.field private onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->alSmsRsp:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lastRecordCrc:J

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->maxSmsRspCnt:I

    .line 126
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    .line 145
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->updateAddContact()V

    return-void
.end method

.method private addSmsRsp()V
    .locals 3

    .line 163
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d008f

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a009f

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mBtnCancel:Landroid/widget/Button;

    .line 167
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00a1

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mBtnConnect:Landroid/widget/Button;

    .line 169
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->alSmsRsp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->alSmsRsp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySmsRspInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 105
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->alSmsRsp:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    .line 106
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 109
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearChoices()V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->setDeleteItemListener(Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;)V

    return-void
.end method

.method private updateAddContact()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->maxSmsRspCnt:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->ivAddSmsRsp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->ivAddSmsRsp:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAddSmsRsp()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d1
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->addSmsRsp()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a009f

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a00a1

    if-eq p1, v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->querySmsRspInfos()Ljava/util/ArrayList;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 189
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->maxSmsRspCnt:I

    if-ge p1, v1, :cond_1

    .line 190
    new-instance v1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-direct {v1, p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;-><init>(ILjava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSmsRspInfo(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;)J

    .line 192
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->alSmsRsp:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    .line 194
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->updateAddContact()V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 197
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 198
    const-string v0, "lastCrc"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_SMSRSP_CRC"

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 202
    :cond_1
    const-string p1, "Exceed max sms rsp unit."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 204
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0059

    .line 39
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->setContentView(I)V

    .line 41
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_SMSRSP_CRC"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lastRecordCrc:J

    const/4 p1, 0x5

    .line 43
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->maxSmsRspCnt:I

    .line 45
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->initData()V

    .line 46
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->initView()V

    const p1, 0x7f130379

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.SEND_SMS"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_SMSRSP_CRC"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lastRecordCrc:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 56
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteSmsRspInfoData()J

    .line 57
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 59
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    invoke-virtual {v4, v3}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    add-int/lit8 v3, v3, 0x1

    .line 61
    invoke-virtual {v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->setSmsRspId(I)V

    .line 62
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v5, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSmsRspInfo(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;)J

    goto :goto_0

    .line 64
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "jringACTION_NOTIFY_SMSRSP_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 66
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lastRecordCrc:J

    .line 68
    :cond_1
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->initData()V

    .line 75
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->mAdapterSmsRsp:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    .line 76
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->updateAddContact()V

    return-void
.end method
