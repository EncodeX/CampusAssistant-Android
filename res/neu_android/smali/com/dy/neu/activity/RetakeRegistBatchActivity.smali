.class public Lcom/dy/neu/activity/RetakeRegistBatchActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "RetakeRegistBatchActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/retakeRegistBatch"

    sput-object v0, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 33
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 34
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/RetakeRegistBatchActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity$1;-><init>(Lcom/dy/neu/activity/RetakeRegistBatchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget-object v1, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->MODULE_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
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
    const v7, 0x7f080034

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 45
    .local v4, "lvRetakeRegistBatch":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 47
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine1;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 50
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine1;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine1;-><init>()V

    .line 51
    .local v2, "item":Lcom/dy/neu/common/ListItemLine1;
    const-string v7, "batchId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setListItemId(Ljava/lang/String;)V

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6279\u6b21\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "batchId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setLine1(Ljava/lang/String;)V

    .line 53
    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine1;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine1Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 57
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine1Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v7, Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity$2;-><init>(Lcom/dy/neu/activity/RetakeRegistBatchActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->init()V

    .line 31
    return-void
.end method
