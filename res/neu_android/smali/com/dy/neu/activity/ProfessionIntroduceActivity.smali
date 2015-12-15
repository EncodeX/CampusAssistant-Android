.class public Lcom/dy/neu/activity/ProfessionIntroduceActivity;
.super Landroid/app/Activity;
.source "ProfessionIntroduceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, "data":Landroid/content/Intent;
    const-string v5, "professionIntroduce"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "professionIntroduce":Ljava/lang/String;
    const-string v5, "professionName"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "professionName":Ljava/lang/String;
    const/high16 v5, 0x7f080000

    invoke-virtual {p0, v5}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/view/TitleView;

    .line 36
    .local v3, "titleView":Lcom/dy/neu/view/TitleView;
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v3, v5}, Lcom/dy/neu/view/TitleView;->setTitleTextSize(F)V

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4ecb\u7ecd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v5

    new-instance v6, Lcom/dy/neu/activity/ProfessionIntroduceActivity$1;

    invoke-direct {v6, p0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity$1;-><init>(Lcom/dy/neu/activity/ProfessionIntroduceActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 46
    .local v4, "webView":Landroid/webkit/WebView;
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    new-instance v5, Lcom/dy/neu/activity/ProfessionIntroduceActivity$2;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity$2;-><init>(Lcom/dy/neu/activity/ProfessionIntroduceActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->init()V

    .line 30
    return-void
.end method
