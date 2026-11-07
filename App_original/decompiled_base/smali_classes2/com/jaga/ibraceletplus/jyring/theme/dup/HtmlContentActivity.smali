.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;
.super Lcom/jaga/ibraceletplus/jyring/BaseActivity;
.source "HtmlContentActivity.java"


# instance fields
.field ivBefore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d7
    .end annotation
.end field

.field private title_name:Ljava/lang/String;

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a053c
    .end annotation
.end field

.field wbHelp:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->backAction()V

    return-void
.end method

.method private backAction()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->finish()V

    return-void
.end method

.method private init()V
    .locals 7

    const v0, 0x7f0a01d5

    .line 53
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity$2;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v0, 0x1

    .line 72
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string/jumbo v3, "user_manual"

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->title_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->tvTitle:Landroid/widget/TextView;

    const v4, 0x7f130575

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 84
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v3, "ring"

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v1, v4, v0

    const-string v0, "http://download.keeprapid.com:8181/docs/jring/an_%s_%s1"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 87
    :cond_2
    const-string/jumbo v3, "user_privacy"

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->title_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "en"

    const-string/jumbo v5, "zh"

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->tvTitle:Landroid/widget/TextView;

    const v6, 0x7f130576

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v4

    .line 92
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "file:///android_asset/web/%s/privacy.html"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_4
    const-string/jumbo v3, "user_agreement"

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->title_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 95
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->tvTitle:Landroid/widget/TextView;

    const v6, 0x7f13056d

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v4

    .line 99
    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "file:///android_asset/web/%s/agreement.html"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_6
    const-string/jumbo v3, "user_privacy_children"

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->title_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 102
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->tvTitle:Landroid/widget/TextView;

    const v6, 0x7f130577

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v1, v4

    .line 106
    :cond_7
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "file:///android_asset/web/%s/privacy_children.html"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_8
    const-string v0, ""

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->backAction()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 39
    const-string/jumbo v0, "title_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->title_name:Ljava/lang/String;

    const p1, 0x7f0d0046

    .line 41
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->init()V

    return-void
.end method

.method public onIvBeforeClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01d7
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HtmlContentActivity;->wbHelp:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method
