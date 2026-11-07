.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "NotifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;
    }
.end annotation


# instance fields
.field private alhmNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field lvNotify:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0292
    .end annotation
.end field

.field private saNotify:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->alhmNotify:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->alhmNotify:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/view/View;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->setSwitch(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->isSysNotifyEnabled()Z

    move-result p0

    return p0
.end method

.method private initData()V
    .locals 23

    move-object/from16 v0, p0

    .line 47
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->isAppNotifyEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->isSysNotifyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->resetNotificationSetting()V

    :cond_0
    const/16 v1, 0x12

    .line 51
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "P_ENABLE_NEW_WECHAT"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "P_ENABLE_NEW_MOBILEQQ"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "P_ENABLE_NEW_FACEBOOK"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "P_ENABLE_NEW_SKYPE"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "P_ENABLE_NEW_TWITTER"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "P_ENABLE_NEW_WHATSAPP"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "P_ENABLE_NEW_LINE"

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v3, "P_ENABLE_NEW_KAKAOTALK"

    const/4 v11, 0x7

    aput-object v3, v2, v11

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_DINGDING:Ljava/lang/String;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WANGWANG:Ljava/lang/String;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_INSTAGRAM:Ljava/lang/String;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINKEDIN:Ljava/lang/String;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SNAPCHAT:Ljava/lang/String;

    const/16 v16, 0xc

    aput-object v3, v2, v16

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WEIBO:Ljava/lang/String;

    const/16 v17, 0xd

    aput-object v3, v2, v17

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TUMBLR:Ljava/lang/String;

    const/16 v18, 0xe

    aput-object v3, v2, v18

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VKONTAKTE:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_PINTEREST:Ljava/lang/String;

    const/16 v20, 0x10

    aput-object v3, v2, v20

    sget-object v3, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_GMAIL:Ljava/lang/String;

    const/16 v21, 0x11

    aput-object v3, v2, v21

    .line 74
    new-array v3, v1, [Ljava/lang/String;

    const/16 v22, 0x1

    const v5, 0x7f130362

    .line 76
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v19

    const v5, 0x7f130359

    .line 77
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v22

    const v5, 0x7f130350

    .line 78
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const v5, 0x7f13035a

    .line 79
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f13035e

    .line 80
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f130364

    .line 81
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const v5, 0x7f130354

    .line 82
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x7f130353

    .line 83
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    const v5, 0x7f13034f

    .line 85
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v12

    const v5, 0x7f130361

    .line 86
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v13

    const v5, 0x7f130352

    .line 87
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v14

    const v5, 0x7f130355

    .line 88
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v15

    const v5, 0x7f13035b

    .line 89
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v16

    const v5, 0x7f130363

    .line 90
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v17

    const v5, 0x7f13035d

    .line 91
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v18

    const v5, 0x7f130360

    .line 93
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v5, 0x7f130358

    .line 94
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v20

    const v5, 0x7f130351

    .line 95
    invoke-virtual {v0, v5}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v21

    .line 98
    new-array v1, v1, [Ljava/lang/Integer;

    const v5, 0x7f100099

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v19

    const v5, 0x7f100076

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v22

    const v5, 0x7f100056

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    const v5, 0x7f100086

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    const v5, 0x7f100092

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    const v5, 0x7f10009b

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    const v5, 0x7f100064

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v10

    const v5, 0x7f100062

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v11

    const v5, 0x7f10004f

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v12

    const v5, 0x7f100097

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v13

    const v5, 0x7f100061

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v14

    const v5, 0x7f100065

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v15

    const v5, 0x7f10008a

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v16

    const v5, 0x7f10009a

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v17

    const v5, 0x7f100091

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v18

    const v5, 0x7f100095

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const v5, 0x7f100074

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v20

    const v5, 0x7f10005c

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v21

    .line 122
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "FUNCTION_REMINDER_NATEON"

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_NATEON:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 129
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v3, 0x7f130357

    .line 132
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 134
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v1, 0x7f10006d

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 139
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 142
    :cond_1
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "FUNCTION_REMINDER_VIBER_TELEGRAM"

    invoke-virtual {v5, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VIBER:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TELEGRAM:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 150
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v3, 0x7f13035f

    .line 153
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f13035c

    .line 154
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 156
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v1, 0x7f100094

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f10008d

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 162
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    :cond_2
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v6, "FUNCTION_NOTIFY"

    invoke-virtual {v5, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 166
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v8, "FUNCTION_NEW_NOTIFY"

    invoke-virtual {v6, v8, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x0

    .line 167
    :goto_0
    array-length v9, v3

    if-ge v8, v9, :cond_5

    .line 168
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 169
    const-string v10, "ivIcon"

    aget-object v11, v1, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v10, "tvName"

    aget-object v11, v3, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v10, "tvTag"

    aget-object v11, v2, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v10, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    aget-object v11, v2, v8

    invoke-virtual {v10, v11, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 173
    const-string/jumbo v11, "sbEnable"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v8, v12, :cond_3

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-lt v8, v4, :cond_4

    if-nez v6, :cond_4

    goto :goto_1

    .line 181
    :cond_4
    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->alhmNotify:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v9, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "get "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, v2, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private initView()V
    .locals 7

    .line 192
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->alhmNotify:Ljava/util/ArrayList;

    const-string/jumbo v1, "tvTag"

    const-string/jumbo v2, "sbEnable"

    const-string v4, "ivIcon"

    const-string/jumbo v5, "tvName"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0a0527

    const v2, 0x7f0a038a

    const v4, 0x7f0a01f4

    const v6, 0x7f0a04da

    filled-new-array {v4, v6, v1, v2}, [I

    move-result-object v6

    const v4, 0x7f0d00ad

    move-object v2, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$SimpleAdapterNotify;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->saNotify:Landroid/widget/SimpleAdapter;

    .line 195
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->lvNotify:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->lvNotify:Landroid/widget/ListView;

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setSwitch(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0a038a

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const v1, 0x7f0a0527

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method OnClickivSetting(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a020d
        }
    .end annotation

    .line 294
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->isAppNotifyEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->isSysNotifyEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->resetNotificationSetting()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004b

    .line 38
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->initData()V

    .line 41
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->initView()V

    return-void
.end method
