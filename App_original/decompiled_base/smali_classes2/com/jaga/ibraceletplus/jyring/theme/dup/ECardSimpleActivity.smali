.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "ECardSimpleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private REQUEST_CODE_SELETE_PICTURE:I

.field private alItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentDlg:Landroid/app/AlertDialog;

.field private ecardItem:Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

.field private etContent:Landroid/widget/EditText;

.field ivAdd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d1
    .end annotation
.end field

.field private lastRecordCrc:J

.field lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0291
    .end annotation
.end field

.field private mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnConnect:Landroid/widget/Button;

.field private maxItemCnt:I

.field private onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$DeleteItemListener;

.field private onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lastRecordCrc:J

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->maxItemCnt:I

    .line 117
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    .line 138
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$DeleteItemListener;

    const/16 v0, 0x400

    .line 173
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->REQUEST_CODE_SELETE_PICTURE:I

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->updateECard(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->syncECard()V

    return-void
.end method

.method static synthetic access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->updateAdd()V

    return-void
.end method

.method private addECard()V
    .locals 3

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->REQUEST_CODE_SELETE_PICTURE:I

    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryECardInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 93
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    .line 94
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearChoices()V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$DeleteItemListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->setDeleteItemListener(Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$DeleteItemListener;)V

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private syncECard()V
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_ECARD_CRC"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lastRecordCrc:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 159
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteECardInfoData()J

    .line 160
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 162
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {v4, v3}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    add-int/lit8 v3, v3, 0x1

    .line 164
    invoke-virtual {v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->setEcardId(I)V

    .line 165
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v5, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertECardInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)J

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "jringACTION_NOTIFY_ECARD_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 169
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lastRecordCrc:J

    :cond_1
    return-void
.end method

.method private updateAdd()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->maxItemCnt:I

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->ivAdd:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->ivAdd:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateECard(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)V
    .locals 3

    .line 280
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->ecardItem:Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    .line 281
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d008d

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a016f

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->etContent:Landroid/widget/EditText;

    .line 285
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a009f

    .line 287
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mBtnCancel:Landroid/widget/Button;

    .line 288
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00a1

    .line 289
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mBtnConnect:Landroid/widget/Button;

    .line 290
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    .line 295
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "on add ecard result lastCrc"

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->REQUEST_CODE_SELETE_PICTURE:I

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Result:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    const p1, 0x7f13001d

    const/4 p2, 0x0

    .line 191
    :try_start_0
    const-string p3, "_data"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    aget-object v1, v3, p2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 200
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 202
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 204
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryECardInfos()Ljava/util/ArrayList;

    move-result-object p3

    .line 241
    invoke-static {v1}, Lcom/king/zxing/util/CodeUtils;->parseQRCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    .line 245
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    return-void

    .line 249
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 250
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->maxItemCnt:I

    if-ge p3, v3, :cond_1

    .line 251
    new-instance v3, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-direct {v3, p3, v2, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p3, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertECardInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)J

    .line 253
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->alItem:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {p3}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->notifyDataSetChanged()V

    .line 255
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->updateAdd()V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 258
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->saveLog(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_ECARD_CRC"

    invoke-virtual {v0, v1, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->syncECard()V

    return-void

    :cond_1
    const p3, 0x7f13001b

    .line 264
    invoke-static {p0, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 267
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public onAdd()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d1
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->addECard()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a009f

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00a1

    if-eq p1, v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryECardInfos()Ljava/util/ArrayList;

    .line 306
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    const v0, 0x7f0a016f

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->ecardItem:Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->setName(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->ecardItem:Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->updateECardInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)I

    .line 311
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->notifyDataSetChanged()V

    .line 312
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->updateAdd()V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 315
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on update item lastCrc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->saveLog(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_ECARD_CRC"

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->syncECard()V

    .line 321
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->contentDlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0033

    .line 44
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->setContentView(I)V

    .line 46
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_ECARD_CRC"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lastRecordCrc:J

    const/16 p1, 0xa

    .line 48
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->maxItemCnt:I

    .line 50
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->initData()V

    .line 51
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->initData()V

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->mAdapter:Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->notifyDataSetChanged()V

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->updateAdd()V

    return-void
.end method
