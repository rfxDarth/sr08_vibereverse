.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage;
.super Lnet/grandcentrix/tray/core/TrayStorage;
.source "ContentProviderStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

.field mObserverThread:Landroid/os/HandlerThread;

.field private final mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

.field private volatile mRegisteredContentObserver:Z

.field private final mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 0

    .line 144
    invoke-direct {p0, p2, p3}, Lnet/grandcentrix/tray/core/TrayStorage;-><init>(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    .line 119
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    .line 146
    new-instance p2, Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/TrayUri;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    .line 147
    new-instance p2, Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-direct {p2, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    return-void
.end method

.method static synthetic access$000(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayUri;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    return-object p0
.end method

.method static synthetic access$100(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/TrayProviderHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    return p1
.end method


# virtual methods
.method public annex(Lnet/grandcentrix/tray/core/TrayStorage;)V
    .locals 2

    .line 152
    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayStorage;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/grandcentrix/tray/core/TrayItem;

    .line 153
    invoke-virtual {p0, v1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Lnet/grandcentrix/tray/core/TrayItem;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayStorage;->wipe()Z

    return-void
.end method

.method public clear()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->remove(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->get(Ljava/lang/String;)Lnet/grandcentrix/tray/core/TrayItem;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lnet/grandcentrix/tray/core/TrayItem;
    .locals 6

    .line 171
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "found more than one item for key \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in module "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". This can be caused by using the same name for a device and user specific preference."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 182
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 183
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/grandcentrix/tray/core/TrayItem;

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "item #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/grandcentrix/tray/core/TrayLog;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/grandcentrix/tray/core/TrayItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAll()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProviderSafe(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 205
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/grandcentrix/tray/core/TrayException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 211
    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 214
    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->queryProvider(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 221
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/core/TrayItem;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/core/TrayItem;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Lnet/grandcentrix/tray/core/TrayItem;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Lnet/grandcentrix/tray/core/TrayItem;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, v0, p2}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 248
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v0, v1, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 255
    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0, p1, p3, p2}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 249
    :cond_1
    new-instance p1, Lnet/grandcentrix/tray/core/TrayRuntimeException;

    const-string/jumbo p2, "writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed."

    invoke-direct {p1, p2}, Lnet/grandcentrix/tray/core/TrayRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Lnet/grandcentrix/tray/core/TrayItem;)Z
    .locals 2

    .line 226
    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->migratedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/core/TrayItem;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 276
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 287
    :goto_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 294
    new-instance p1, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;

    const-string v0, "observer"

    invoke-direct {p1, p0, v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$1;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    .line 310
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 315
    :cond_2
    iget-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mRegisteredContentObserver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 330
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->removeAndCount(Landroid/net/Uri;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 327
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null is not valid. use clear or wipe to delete all preferences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVersion(I)Z
    .locals 2

    .line 340
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 345
    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 348
    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->persist(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 341
    :cond_0
    new-instance p1, Lnet/grandcentrix/tray/core/TrayRuntimeException;

    const-string/jumbo v0, "writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed."

    invoke-direct {p1, v0}, Lnet/grandcentrix/tray/core/TrayRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 362
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserver:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    .line 365
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 366
    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mObserverThread:Landroid/os/HandlerThread;

    :cond_1
    :goto_0
    return-void
.end method

.method public wipe()Z
    .locals 2

    .line 378
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->clear()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mTrayUri:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->builder()Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v1, v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->remove(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
