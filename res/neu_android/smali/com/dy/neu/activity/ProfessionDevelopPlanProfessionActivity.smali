.class public Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "ProfessionDevelopPlanProfessionActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "/professionDevelopPlan/"

    sput-object v0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->MODULE_URL:Ljava/lang/String;

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
    .locals 8

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "data":Landroid/content/Intent;
    const-string v6, "batchId"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "batchId":Ljava/lang/String;
    const-string v6, "professionId"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "professionId":Ljava/lang/String;
    const-string v6, "professionName"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "professionName":Ljava/lang/String;
    const-string v6, "professionIntroduce"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "professionIntroduce":Ljava/lang/String;
    const/high16 v6, 0x7f080000

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/view/TitleView;

    .line 40
    .local v5, "titleView":Lcom/dy/neu/view/TitleView;
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v5, v6}, Lcom/dy/neu/view/TitleView;->setTitleTextSize(F)V

    .line 41
    invoke-virtual {v5, v4}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$1;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$1;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v5}, Lcom/dy/neu/view/TitleView;->getRightTextButton()Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;

    invoke-direct {v7, p0, v3, v4}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->MODULE_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
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
    .line 60
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 62
    .local v4, "messageListView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 67
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine3;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 70
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine3;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine3;-><init>()V

    .line 71
    .local v2, "item":Lcom/dy/neu/common/ListItemLine3;
    const-string v7, "courseId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setListItemId(Ljava/lang/String;)V

    .line 72
    const-string v7, "courseName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setListItemName(Ljava/lang/String;)V

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b66\u5e74\u5b66\u671f\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "termName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8bfe\u7a0b\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "courseId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "courseProperty"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setLine2(Ljava/lang/String;)V

    .line 75
    const-string v7, "courseName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setLine3(Ljava/lang/String;)V

    .line 76
    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 77
    const-string v7, "courseIntroduce"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine3;->setRemark1(Ljava/lang/String;)V

    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 80
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine3;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine3Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 81
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine3Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v7, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$3;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->init()V

    .line 32
    return-void
.end method
