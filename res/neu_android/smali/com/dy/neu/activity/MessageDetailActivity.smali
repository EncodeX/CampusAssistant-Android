.class public Lcom/dy/neu/activity/MessageDetailActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "MessageDetailActivity.java"


# static fields
.field private static MODULE_URL_MESSAGE:Ljava/lang/String;

.field private static MODULE_URL_MESSAGE_CONFIRM:Ljava/lang/String;

.field private static MODULE_URL_NOTICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "/notice/"

    sput-object v0, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    .line 31
    const-string v0, "/message/"

    sput-object v0, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_MESSAGE:Ljava/lang/String;

    .line 32
    const-string v0, "/confirmMessage/"

    sput-object v0, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_MESSAGE_CONFIRM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_MESSAGE_CONFIRM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/MessageDetailActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/MessageDetailActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 40
    const/high16 v4, 0x7f080000

    invoke-virtual {p0, v4}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/view/TitleView;

    .line 41
    .local v3, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/dy/neu/activity/MessageDetailActivity$1;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/MessageDetailActivity$1;-><init>(Lcom/dy/neu/activity/MessageDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "messageId"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "messageId":Ljava/lang/String;
    const-string v4, "msgFlag"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "msgFlag":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getRightTextButton()Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/dy/neu/activity/MessageDetailActivity$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/dy/neu/activity/MessageDetailActivity$2;-><init>(Lcom/dy/neu/activity/MessageDetailActivity;Ljava/lang/String;Lcom/dy/neu/view/TitleView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const-string v4, "\u7cfb\u7edf\u516c\u544a"

    invoke-virtual {v3, v4}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getRightImgButton()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getRightTextButton()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/dy/neu/activity/MessageDetailActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dy/neu/activity/MessageDetailActivity;->MODULE_URL_MESSAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/dy/neu/activity/MessageDetailActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 82
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 83
    .local v4, "title":Landroid/widget/TextView;
    const-string v6, "title"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v6, 0x7f08002a

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, "message_publisher":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publisher1"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "publisher2"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v6, 0x7f08002b

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    .local v2, "message_publish_date":Landroid/widget/TextView;
    const-string v6, "date"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v6, 0x7f08002c

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "message_detail":Landroid/widget/TextView;
    const-string v6, "content"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v6, "1"

    const-string v7, "readFlag"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const/high16 v6, 0x7f080000

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/MessageDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/view/TitleView;

    .line 92
    .local v5, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v5}, Lcom/dy/neu/view/TitleView;->getRightTextButton()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    .end local v5    # "titleView":Lcom/dy/neu/view/TitleView;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/MessageDetailActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/dy/neu/activity/MessageDetailActivity;->init()V

    .line 38
    return-void
.end method
