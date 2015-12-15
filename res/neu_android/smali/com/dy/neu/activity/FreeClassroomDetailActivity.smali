.class public Lcom/dy/neu/activity/FreeClassroomDetailActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "FreeClassroomDetailActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "/freeTimes/"

    sput-object v0, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 30
    .local v2, "data":Landroid/content/Intent;
    const-string v4, "classroomsName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "classroomsName":Ljava/lang/String;
    const/high16 v4, 0x7f080000

    invoke-virtual {p0, v4}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/view/TitleView;

    .line 32
    .local v3, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v3, v1}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/dy/neu/activity/FreeClassroomDetailActivity$1;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/FreeClassroomDetailActivity$1;-><init>(Lcom/dy/neu/activity/FreeClassroomDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const-string v4, "classroomsId"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "classroomsId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->MODULE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 46
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 47
    .local v4, "messageListView":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 50
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine2;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine2;-><init>()V

    .line 51
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6559\u5ba4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "classroomsId"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "classroomsName"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine1(Ljava/lang/String;)V

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8282\u6b21\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "freeTimes"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  \u72b6\u6001\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "status"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine2;->setLine2(Ljava/lang/String;)V

    .line 53
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine2;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 56
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine2Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/dy/neu/activity/FreeClassroomDetailActivity;->init()V

    .line 27
    return-void
.end method
