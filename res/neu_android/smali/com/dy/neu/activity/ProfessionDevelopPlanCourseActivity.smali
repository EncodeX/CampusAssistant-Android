.class public Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "ProfessionDevelopPlanCourseActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "/professionDevelopPlan/"

    sput-object v0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->MODULE_URL:Ljava/lang/String;

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
    .locals 9

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 30
    .local v4, "data":Landroid/content/Intent;
    const-string v7, "batchId"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "batchId":Ljava/lang/String;
    const-string v7, "professionId"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "professionId":Ljava/lang/String;
    const-string v7, "courseId"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "courseId":Ljava/lang/String;
    const-string v7, "courseName"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "courseName":Ljava/lang/String;
    const/high16 v7, 0x7f080000

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/view/TitleView;

    .line 35
    .local v6, "titleView":Lcom/dy/neu/view/TitleView;
    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Lcom/dy/neu/view/TitleView;->setTitleTextSize(F)V

    .line 36
    invoke-virtual {v6, v3}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v6}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v7

    new-instance v8, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$1;

    invoke-direct {v8, p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$1;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v7, 0x7f08002e

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 44
    .local v1, "btnIntroduce":Landroid/widget/Button;
    new-instance v7, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;

    invoke-direct {v7, p0, v4}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;-><init>(Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->MODULE_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
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

    .line 56
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 58
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, "tvCourseIntroduce":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "courseId"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "courseName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "grade"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "term"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "examMode"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "courseGroup"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "hours"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "credit"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "isDegree"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "courseType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "courseMode"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "courseIntroduceString":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->init()V

    .line 27
    return-void
.end method
