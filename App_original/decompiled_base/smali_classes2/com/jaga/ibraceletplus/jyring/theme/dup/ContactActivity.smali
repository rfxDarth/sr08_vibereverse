.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "ContactActivity.java"


# instance fields
.field private alContact:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field ivAddContact:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d2
    .end annotation
.end field

.field private lastRecordCrc:J

.field lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a028f
    .end annotation
.end field

.field private mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

.field private maxContactCnt:I

.field private onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;

.field private onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->alContact:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lastRecordCrc:J

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->maxContactCnt:I

    .line 115
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    .line 136
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->syncAllContact()V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->updateAddContact()V

    return-void
.end method

.method private addContact()V
    .locals 3

    .line 154
    const-string v0, "call addContact function."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3e8

    .line 156
    invoke-virtual {p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 282
    const-string v0, "(\\+86)|[^0-9]"

    .line 283
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 285
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPhoneContacts(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    .line 225
    new-array v0, v0, [Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 228
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 232
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneContacts contacts: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 234
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneContacts contactsUsername: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 236
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 238
    :cond_0
    const-string p1, "getPhoneContacts can not find uri."

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->alContact:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->alContact:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryContactInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initView()V
    .locals 2

    .line 93
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->alContact:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    .line 94
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->onDrop:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDropListener(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;)V

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->clearChoices()V

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->onDeleteItem:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->setDeleteItemListener(Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;)V

    return-void
.end method

.method private readContacts()V
    .locals 8

    const/4 v1, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 256
    :try_start_1
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readContacts displayName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , number: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catch_0
    :try_start_2
    const-string v0, "readContacts exception occurred."

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 267
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 270
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_2
    throw v0
.end method

.method private syncAllContact()V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "P_LATEST_CONTACT_CRC"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addContact onResult newCrc "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastRecordCrc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lastRecordCrc:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 205
    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lastRecordCrc:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 206
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteContactInfoData()J

    .line 207
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 209
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-virtual {v4, v3}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setContactId(I)V

    .line 212
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;)J

    move v3, v6

    goto :goto_0

    .line 214
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "jringACTION_NOTIFY_CONTACT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 216
    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lastRecordCrc:J

    :cond_1
    return-void
.end method

.method private updateAddContact()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->maxContactCnt:I

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->ivAddContact:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->ivAddContact:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call onActivityResult function requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 167
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "call onActivityResult function uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->getPhoneContacts(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->queryContactInfos()Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    .line 172
    aget-object v0, p1, p3

    const/4 v1, 0x1

    .line 173
    aget-object p1, p1, v1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 179
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->maxContactCnt:I

    if-ge p2, v1, :cond_0

    .line 180
    new-instance p3, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    invoke-direct {p3, p2, p1, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {p1, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;)J

    .line 182
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->alContact:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->notifyDataSetChanged()V

    .line 184
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->updateAddContact()V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 187
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "lastCrc: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string p3, "P_LATEST_CONTACT_CRC"

    invoke-virtual {p2, p3, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->syncAllContact()V

    return-void

    .line 194
    :cond_0
    const-string p1, "Exceed max contactor unit."

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onAddContact()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d2
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->addContact()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0025

    .line 40
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->setContentView(I)V

    .line 42
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_CONTACT_CRC"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lastRecordCrc:J

    .line 44
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "FUNCTION_MORE_CONTACT"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->maxContactCnt:I

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    .line 48
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->maxContactCnt:I

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->initData()V

    .line 51
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->initView()V

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
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->initData()V

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->mAdapterContact:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->notifyDataSetChanged()V

    .line 64
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->updateAddContact()V

    return-void
.end method
