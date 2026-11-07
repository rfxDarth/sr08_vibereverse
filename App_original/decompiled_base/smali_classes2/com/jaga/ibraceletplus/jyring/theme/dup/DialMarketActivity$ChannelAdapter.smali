.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->dialList:Ljava/util/ArrayList;

    .line 114
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->dialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->dialList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 137
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00a7

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 139
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;)V

    const v0, 0x7f0a0136

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->imgDial:Landroid/widget/ImageView;

    const v0, 0x7f0a0135

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->decDial:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->dialList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getName()Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getMd5String()Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->decDial:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DialInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "/JRing/firmware"

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "/JRing/dailimgs"

    invoke-static {v0, v4}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->createSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".pmg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    iget-object p1, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->imgDial:Landroid/widget/ImageView;

    const v3, 0x7f10002a

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownLoadImageTask;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->imgDial:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, p3, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownLoadImageTask;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownLoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p2

    .line 188
    :cond_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$ChannelAdapter$ViewHolder;->imgDial:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object p2
.end method
