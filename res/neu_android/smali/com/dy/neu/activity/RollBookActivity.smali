.class public Lcom/dy/neu/activity/RollBookActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "RollBookActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/rollBookTask/"

    sput-object v0, Lcom/dy/neu/activity/RollBookActivity;->MODULE_URL:Ljava/lang/String;

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
    .locals 5

    .prologue
    .line 33
    const/high16 v3, 0x7f080000

    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/RollBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dy/neu/view/TitleView;

    .line 34
    .local v2, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v2}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/dy/neu/activity/RollBookActivity$1;

    invoke-direct {v4, p0}, Lcom/dy/neu/activity/RollBookActivity$1;-><init>(Lcom/dy/neu/activity/RollBookActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/dy/neu/activity/RollBookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "taskId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "taskId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dy/neu/activity/RollBookActivity;->MODULE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/dy/neu/activity/RollBookActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
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
    .line 45
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/RollBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 50
    .local v4, "lvRollBook":Landroid/widget/ListView;
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

    .line 55
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u73ed\u7ea7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "className"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  \u5b66\u53f7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "studentId"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine1(Ljava/lang/String;)V

    .line 56
    const-string v6, "studentName"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine2(Ljava/lang/String;)V

    .line 57
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine2;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 60
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine2Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/RollBookActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/dy/neu/activity/RollBookActivity;->init()V

    .line 31
    return-void
.end method
