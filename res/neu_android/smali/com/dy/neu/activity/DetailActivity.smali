.class public Lcom/dy/neu/activity/DetailActivity;
.super Landroid/app/Activity;
.source "DetailActivity.java"


# static fields
.field public static final DETAIL_DATA:Ljava/lang/String; = "detailData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/dy/neu/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "detailData"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "detailData":Ljava/lang/String;
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lcom/dy/neu/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 26
    .local v4, "tvDetail":Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/high16 v5, 0x7f080000

    invoke-virtual {p0, v5}, Lcom/dy/neu/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/view/TitleView;

    .line 29
    .local v3, "titleView":Lcom/dy/neu/view/TitleView;
    const-string v5, "titleName"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "titleName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v5

    new-instance v6, Lcom/dy/neu/activity/DetailActivity$1;

    invoke-direct {v6, p0}, Lcom/dy/neu/activity/DetailActivity$1;-><init>(Lcom/dy/neu/activity/DetailActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/DetailActivity;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcom/dy/neu/activity/DetailActivity;->init()V

    .line 21
    return-void
.end method
