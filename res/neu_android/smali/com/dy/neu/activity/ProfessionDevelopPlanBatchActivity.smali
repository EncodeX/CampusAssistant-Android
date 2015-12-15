.class public Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "ProfessionDevelopPlanBatchActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "/professionDevelopPlan/"

    sput-object v0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "data":Landroid/content/Intent;
    const-string v3, "batchId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "batchId":Ljava/lang/String;
    const/high16 v3, 0x7f080000

    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/view/TitleView;

    .line 37
    .local v2, "titleView":Lcom/dy/neu/view/TitleView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u57f9\u517b\u8ba1\u5212"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$1;

    invoke-direct {v4, p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$1;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->MODULE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
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
    .line 50
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 52
    .local v4, "messageListView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 55
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine1;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 58
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine1;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine1;-><init>()V

    .line 59
    .local v2, "item":Lcom/dy/neu/common/ListItemLine1;
    const-string v7, "professionId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setListItemId(Ljava/lang/String;)V

    .line 60
    const-string v7, "professionName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setListItemName(Ljava/lang/String;)V

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "professionId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "professionName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setLine1(Ljava/lang/String;)V

    .line 62
    const-string v7, "professionIntroduce"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setRemark1(Ljava/lang/String;)V

    .line 63
    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine1;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine1;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine1Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 67
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine1Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance v7, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity$2;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchActivity;->init()V

    .line 32
    return-void
.end method
