.class public Lcom/dy/neu/activity/FreeClassroomActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "FreeClassroomActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "/freeClassrooms/"

    sput-object v0, Lcom/dy/neu/activity/FreeClassroomActivity;->MODULE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/activity/FreeClassroomActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/FreeClassroomActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dy/neu/activity/FreeClassroomActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/FreeClassroomActivity;Lcom/dy/neu/common/Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/FreeClassroomActivity;
    .param p1, "x1"    # Lcom/dy/neu/common/Result;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/dy/neu/activity/FreeClassroomActivity;->checkResult(Lcom/dy/neu/common/Result;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dy/neu/activity/FreeClassroomActivity;->MODULE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dy/neu/activity/FreeClassroomActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/FreeClassroomActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/FreeClassroomActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dy/neu/activity/FreeClassroomActivity;Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/FreeClassroomActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/FreeClassroomActivity;->getGetData(Ljava/lang/String;Ljava/util/List;)Lcom/dy/neu/common/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method private fetchBuildings()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 50
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/FreeClassroomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 51
    .local v7, "mSpinner":Landroid/widget/Spinner;
    const-string v8, "/buildings"

    .line 52
    .local v8, "url":Ljava/lang/String;
    new-instance v6, Lcom/dy/neu/activity/FreeClassroomActivity$2;

    invoke-direct {v6, p0, v7}, Lcom/dy/neu/activity/FreeClassroomActivity$2;-><init>(Lcom/dy/neu/activity/FreeClassroomActivity;Landroid/widget/Spinner;)V

    .line 119
    .local v6, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/FreeClassroomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/dy/neu/activity/FreeClassroomActivity$3;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/FreeClassroomActivity$3;-><init>(Lcom/dy/neu/activity/FreeClassroomActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dy/neu/activity/FreeClassroomActivity;->dialog:Landroid/app/ProgressDialog;

    .line 126
    new-instance v0, Lcom/dy/neu/activity/FreeClassroomActivity$4;

    invoke-direct {v0, p0, v6}, Lcom/dy/neu/activity/FreeClassroomActivity$4;-><init>(Lcom/dy/neu/activity/FreeClassroomActivity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/FreeClassroomActivity$4;->start()V

    .line 142
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 40
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/dy/neu/activity/FreeClassroomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dy/neu/view/TitleView;

    .line 41
    .local v0, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/dy/neu/activity/FreeClassroomActivity$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/FreeClassroomActivity$1;-><init>(Lcom/dy/neu/activity/FreeClassroomActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-direct {p0}, Lcom/dy/neu/activity/FreeClassroomActivity;->fetchBuildings()V

    .line 48
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
    .line 144
    .local p1, "testData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v7, 0x7f080006

    invoke-virtual {p0, v7}, Lcom/dy/neu/activity/FreeClassroomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 146
    .local v4, "lvFreeClassrooms":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/FreeClassroomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 151
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine1;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 154
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine2;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine2;-><init>()V

    .line 155
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    const-string v7, "classroomsId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine2;->setListItemId(Ljava/lang/String;)V

    .line 156
    const-string v7, "classroomsName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine2;->setListItemName(Ljava/lang/String;)V

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6559\u5ba4\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "classroomsId"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "classroomsName"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine2;->setLine1(Ljava/lang/String;)V

    .line 158
    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/dy/neu/common/ListItemLine2;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/dy/neu/common/ListItemLine2;
    :cond_0
    new-instance v5, Lcom/dy/neu/common/ListItemLine1Adapter;

    invoke-direct {v5, p0, v3}, Lcom/dy/neu/common/ListItemLine1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 162
    .local v5, "mva":Lcom/dy/neu/common/ListItemLine1Adapter;
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    new-instance v7, Lcom/dy/neu/activity/FreeClassroomActivity$5;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/FreeClassroomActivity$5;-><init>(Lcom/dy/neu/activity/FreeClassroomActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/FreeClassroomActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/dy/neu/activity/FreeClassroomActivity;->init()V

    .line 38
    return-void
.end method
