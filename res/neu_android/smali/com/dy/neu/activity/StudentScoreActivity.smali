.class public Lcom/dy/neu/activity/StudentScoreActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "StudentScoreActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;

.field private static MODULE_URL_TERM_LIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "/score/"

    sput-object v0, Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL:Ljava/lang/String;

    .line 28
    const-string v0, "/termList"

    sput-object v0, Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL_TERM_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/StudentScoreActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/StudentScoreActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/StudentScoreActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 36
    const/high16 v6, 0x7f080000

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/view/TitleView;

    .line 37
    .local v4, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v4}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/dy/neu/activity/StudentScoreActivity$1;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/StudentScoreActivity$1;-><init>(Lcom/dy/neu/activity/StudentScoreActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScoreActivity;->isTeacher()Z

    move-result v2

    .line 44
    .local v2, "isTeacher":Z
    if-eqz v2, :cond_0

    .line 45
    const v6, 0x7f08004a

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 46
    .local v3, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 47
    const v6, 0x7f080047

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 48
    .local v0, "editStudentId":Landroid/widget/EditText;
    new-instance v6, Lcom/dy/neu/activity/StudentScoreActivity$2;

    invoke-direct {v6, p0, v0}, Lcom/dy/neu/activity/StudentScoreActivity$2;-><init>(Lcom/dy/neu/activity/StudentScoreActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 62
    const v6, 0x7f080048

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 63
    .local v1, "imgSearch":Landroid/widget/ImageButton;
    new-instance v6, Lcom/dy/neu/activity/StudentScoreActivity$3;

    invoke-direct {v6, p0, v0}, Lcom/dy/neu/activity/StudentScoreActivity$3;-><init>(Lcom/dy/neu/activity/StudentScoreActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .end local v0    # "editStudentId":Landroid/widget/EditText;
    .end local v1    # "imgSearch":Landroid/widget/ImageButton;
    .end local v3    # "spinner":Landroid/widget/Spinner;
    :goto_0
    return-void

    .line 75
    :cond_0
    const v6, 0x7f080046

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 76
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 77
    sget-object v6, Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL_TERM_LIST:Ljava/lang/String;

    const-string v7, "termList"

    invoke-virtual {p0, v6, v7}, Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 17
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
    .line 89
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v14, "termList"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 90
    const v14, 0x7f08004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 92
    .local v8, "mSpinner":Landroid/widget/Spinner;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/SpinnerData;>;"
    new-instance v14, Lcom/dy/neu/common/SpinnerData;

    const-string v15, "\u8bf7\u9009\u62e9"

    const-string v16, "0"

    invoke-direct/range {v14 .. v16}, Lcom/dy/neu/common/SpinnerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_0

    .line 95
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 96
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lcom/dy/neu/common/SpinnerData;

    const-string v14, "termName"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "termId"

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v11, v14, v15}, Lcom/dy/neu/common/SpinnerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v11, "sd":Lcom/dy/neu/common/SpinnerData;
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "sd":Lcom/dy/neu/common/SpinnerData;
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/dy/neu/activity/StudentScoreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1090008

    invoke-direct {v1, v14, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 101
    .local v1, "Adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/dy/neu/common/SpinnerData;>;"
    const v14, 0x1090009

    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    new-instance v14, Lcom/dy/neu/activity/StudentScoreActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/dy/neu/activity/StudentScoreActivity$4;-><init>(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/util/List;)V

    invoke-virtual {v8, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    .end local v1    # "Adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/dy/neu/common/SpinnerData;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/SpinnerData;>;"
    .end local v8    # "mSpinner":Landroid/widget/Spinner;
    :goto_1
    return-void

    .line 130
    .end local v3    # "i":I
    :cond_1
    const v14, 0x7f08004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 140
    .local v12, "studentScoreList":Landroid/widget/ListView;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine5;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/dy/neu/activity/StudentScoreActivity;->isTeacher()Z

    move-result v4

    .line 142
    .local v4, "isTeacher":Z
    const v14, 0x7f08004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 143
    .local v10, "pointArea":Landroid/widget/LinearLayout;
    const v14, 0x7f08004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dy/neu/activity/StudentScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 144
    .local v13, "tvPoint":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 145
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 148
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 149
    .restart local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/dy/neu/common/ListItemLine5;

    invoke-direct {v5}, Lcom/dy/neu/common/ListItemLine5;-><init>()V

    .line 150
    .local v5, "item":Lcom/dy/neu/common/ListItemLine5;
    const-string v14, "termName"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine1(Ljava/lang/String;)V

    .line 151
    if-nez v4, :cond_3

    .line 152
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine5;->getLine1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u8bfe\u7fa4\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "courseGroup"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine1(Ljava/lang/String;)V

    .line 154
    :cond_3
    if-nez v3, :cond_4

    .line 155
    if-nez v4, :cond_4

    .line 156
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5e73\u5747\u5b66\u5206\u7ee9\u70b9\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, "point"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_4
    const-string v14, "courseName"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine2(Ljava/lang/String;)V

    .line 160
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u5b66\u5206\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "credit"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u8003\u8bd5\u7c7b\u578b\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, "examType"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine3(Ljava/lang/String;)V

    .line 161
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u5e73\u65f6\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "score1"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u671f\u4e2d\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "score2"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u671f\u672b\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, "score3"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine4(Ljava/lang/String;)V

    .line 162
    if-nez v4, :cond_5

    .line 163
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u2605\u603b\u6210\u7ee9\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v14, "score"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  \u8bfe\u7a0b\u7c7b\u578b\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, "courseType"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    invoke-static {v14, v15}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine5(Ljava/lang/String;)V

    .line 167
    :goto_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 165
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u2605\u603b\u6210\u7ee9\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, "score"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    invoke-static {v14, v15}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/dy/neu/common/ListItemLine5;->setLine5(Ljava/lang/String;)V

    goto :goto_3

    .line 169
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "item":Lcom/dy/neu/common/ListItemLine5;
    :cond_6
    new-instance v9, Lcom/dy/neu/common/ListItemLine5Adapter;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/dy/neu/common/ListItemLine5Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 170
    .local v9, "mva":Lcom/dy/neu/common/ListItemLine5Adapter;
    invoke-virtual {v12, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/StudentScoreActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/dy/neu/activity/StudentScoreActivity;->init()V

    .line 34
    return-void
.end method
