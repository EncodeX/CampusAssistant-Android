.class public Lcom/dy/neu/activity/RegPhoneNumberActivity;
.super Landroid/app/Activity;
.source "RegPhoneNumberActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 26
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/dy/neu/activity/RegPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dy/neu/view/TitleView;

    .line 27
    .local v1, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v1}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/dy/neu/activity/RegPhoneNumberActivity$1;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/RegPhoneNumberActivity$1;-><init>(Lcom/dy/neu/activity/RegPhoneNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v2, 0x7f080032

    invoke-virtual {p0, v2}, Lcom/dy/neu/activity/RegPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, "btnReg":Landroid/widget/Button;
    new-instance v2, Lcom/dy/neu/activity/RegPhoneNumberActivity$2;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/RegPhoneNumberActivity$2;-><init>(Lcom/dy/neu/activity/RegPhoneNumberActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/RegPhoneNumberActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/dy/neu/activity/RegPhoneNumberActivity;->init()V

    .line 24
    return-void
.end method
