.class public Lcom/dy/neu/activity/ExamScheduleActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "ExamScheduleActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "/examSchedule"

    sput-object v0, Lcom/dy/neu/activity/ExamScheduleActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 30
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/ExamScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 31
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/ExamScheduleActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/ExamScheduleActivity$1;-><init>(Lcom/dy/neu/activity/ExamScheduleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget-object v1, Lcom/dy/neu/activity/ExamScheduleActivity;->MODULE_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/activity/ExamScheduleActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
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
    .line 40
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v6, 0x7f080004

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/ExamScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 48
    .local v4, "lvExamSchedule":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine3;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 51
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine3;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine3;-><init>()V

    .line 52
    .local v2, "item":Lcom/dy/neu/common/ListItemLine3;
    const-string v6, "courseName"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 53
    const-string v6, "time"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine3;->setLine2(Ljava/lang/String;)V

    .line 54
    const-string v6, "classroom"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/dy/neu/common/ListItemLine3;->setLine3(Ljava/lang/String;)V

    .line 55
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine3;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine3Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 58
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine3Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/ExamScheduleActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/dy/neu/activity/ExamScheduleActivity;->init()V

    .line 28
    return-void
.end method
