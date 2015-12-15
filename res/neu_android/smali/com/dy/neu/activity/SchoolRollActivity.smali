.class public Lcom/dy/neu/activity/SchoolRollActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "SchoolRollActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "/schoolRoll"

    sput-object v0, Lcom/dy/neu/activity/SchoolRollActivity;->MODULE_URL:Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/SchoolRollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 31
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/SchoolRollActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/SchoolRollActivity$1;-><init>(Lcom/dy/neu/activity/SchoolRollActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget-object v1, Lcom/dy/neu/activity/SchoolRollActivity;->MODULE_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/dy/neu/activity/SchoolRollActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

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
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 40
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 41
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/SchoolRollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "tvSchoolRoll":Landroid/widget/TextView;
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/SchoolRollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "examId"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "StudentId"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "StudentName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "englishName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "sex"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "birth"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "idCard"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "political"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "nation"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "professionId"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "professionName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "collegeName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "professionType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "className"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "level"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "StudyForm"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "standard"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "startDate"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "endDate"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "courseIntroduceString":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/SchoolRollActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/dy/neu/activity/SchoolRollActivity;->init()V

    .line 28
    return-void
.end method
