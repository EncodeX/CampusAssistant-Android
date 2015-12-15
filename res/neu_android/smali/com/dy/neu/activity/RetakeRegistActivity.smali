.class public Lcom/dy/neu/activity/RetakeRegistActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "RetakeRegistActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "/retakeRegist"

    sput-object v0, Lcom/dy/neu/activity/RetakeRegistActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/RetakeRegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 33
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    const-string v1, "\u91cd\u8003\u62a5\u540d"

    invoke-virtual {v0, v1}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/RetakeRegistActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/RetakeRegistActivity$1;-><init>(Lcom/dy/neu/activity/RetakeRegistActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget-object v1, Lcom/dy/neu/activity/RetakeRegistActivity;->MODULE_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/activity/RetakeRegistActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
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
    .line 43
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/RetakeRegistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 50
    .local v4, "lvRetakeRegist":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 53
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine2;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine2;-><init>()V

    .line 54
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6279\u6b21\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "batchId"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "courseName"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine1(Ljava/lang/String;)V

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "courseId"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  \u6559\u5e08\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "teacherName"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  \u4e0a\u8bfe\u5bf9\u8c61\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "targer"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine2(Ljava/lang/String;)V

    .line 56
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 58
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine2;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 59
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine2Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/RetakeRegistActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/dy/neu/activity/RetakeRegistActivity;->init()V

    .line 30
    return-void
.end method
