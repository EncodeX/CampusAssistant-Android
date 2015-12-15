.class public Lcom/dy/neu/activity/TeachingTasksActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "TeachingTasksActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;

.field private static MODULE_URL_FOR_TEACHER:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "/termTask/"

    sput-object v0, Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL:Ljava/lang/String;

    .line 31
    const-string v0, "/termTaskForTeacher/"

    sput-object v0, Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL_FOR_TEACHER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/activity/TeachingTasksActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/TeachingTasksActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/TeachingTasksActivity;Lcom/dy/neu/common/Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/TeachingTasksActivity;
    .param p1, "x1"    # Lcom/dy/neu/common/Result;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/dy/neu/activity/TeachingTasksActivity;->checkResult(Lcom/dy/neu/common/Result;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL_FOR_TEACHER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/TeachingTasksActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/TeachingTasksActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dy/neu/activity/TeachingTasksActivity;->MODULE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/TeachingTasksActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/TeachingTasksActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dy/neu/activity/TeachingTasksActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/TeachingTasksActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/TeachingTasksActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method private fetchTerm()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 49
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/TeachingTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 50
    .local v7, "mSpinner":Landroid/widget/Spinner;
    const-string v8, "/termList"

    .line 51
    .local v8, "url":Ljava/lang/String;
    new-instance v6, Lcom/dy/neu/activity/TeachingTasksActivity$2;

    invoke-direct {v6, p0, v7}, Lcom/dy/neu/activity/TeachingTasksActivity$2;-><init>(Lcom/dy/neu/activity/TeachingTasksActivity;Landroid/widget/Spinner;)V

    .line 123
    .local v6, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/TeachingTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/dy/neu/activity/TeachingTasksActivity$3;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/TeachingTasksActivity$3;-><init>(Lcom/dy/neu/activity/TeachingTasksActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/TeachingTasksActivity;->dialog:Landroid/app/ProgressDialog;

    .line 130
    new-instance v0, Lcom/dy/neu/activity/TeachingTasksActivity$4;

    invoke-direct {v0, p0, v6}, Lcom/dy/neu/activity/TeachingTasksActivity$4;-><init>(Lcom/dy/neu/activity/TeachingTasksActivity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/TeachingTasksActivity$4;->start()V

    .line 146
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/TeachingTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 40
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/TeachingTasksActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/TeachingTasksActivity$1;-><init>(Lcom/dy/neu/activity/TeachingTasksActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/dy/neu/activity/TeachingTasksActivity;->fetchTerm()V

    .line 47
    return-void
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
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
    const/16 v11, 0x8

    .line 148
    const v8, 0x7f080050

    invoke-virtual {p0, v8}, Lcom/dy/neu/activity/TeachingTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 149
    .local v7, "teachingTasksList":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/TeachingTasksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "isTeacher"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    .local v3, "isTeacher":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine3;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/dy/neu/common/ListItemLine3;

    invoke-direct {v4}, Lcom/dy/neu/common/ListItemLine3;-><init>()V

    .line 165
    .local v4, "item":Lcom/dy/neu/common/ListItemLine3;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4efb\u52a1\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "taskId"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/dy/neu/common/ListItemLine3;->getLine1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8bfe\u7a0b\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "courseId"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 167
    if-eqz v3, :cond_0

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/dy/neu/common/ListItemLine3;->getLine1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "degree"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6559\u5e08\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v8, "teacherName"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u5b66\u65f6\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "hours"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u4eba\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "number"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine3(Ljava/lang/String;)V

    .line 174
    :goto_1
    const-string v8, "courseName"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine2(Ljava/lang/String;)V

    .line 176
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 172
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6559\u5e08\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v8, "teacherName"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "degree"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine3(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "item":Lcom/dy/neu/common/ListItemLine3;
    :cond_1
    new-instance v6, Lcom/dy/neu/common/ListItemLine3Adapter;

    invoke-direct {v6, p0, v5}, Lcom/dy/neu/common/ListItemLine3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 179
    .local v6, "mva":Lcom/dy/neu/common/ListItemLine3Adapter;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/TeachingTasksActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/dy/neu/activity/TeachingTasksActivity;->init()V

    .line 37
    return-void
.end method
