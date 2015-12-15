.class public Lcom/dy/neu/activity/StudentScheduleActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "StudentScheduleActivity.java"


# static fields
.field private static MODULE_URL:Ljava/lang/String;

.field private static MODULE_URL_FOR_TEACHER:Ljava/lang/String;


# instance fields
.field protected aveWidth:I

.field protected course_table_layout:Landroid/widget/RelativeLayout;

.field protected empty:Landroid/widget/TextView;

.field protected friColum:Landroid/widget/TextView;

.field protected gridHeight:I

.field protected monColum:Landroid/widget/TextView;

.field protected satColum:Landroid/widget/TextView;

.field protected screenWidth:I

.field protected sunColum:Landroid/widget/TextView;

.field protected thrusColum:Landroid/widget/TextView;

.field protected tueColum:Landroid/widget/TextView;

.field protected wedColum:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "/courseSchedule2"

    sput-object v0, Lcom/dy/neu/activity/StudentScheduleActivity;->MODULE_URL:Ljava/lang/String;

    .line 33
    const-string v0, "/courseScheduleForTeacher2"

    sput-object v0, Lcom/dy/neu/activity/StudentScheduleActivity;->MODULE_URL_FOR_TEACHER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    .line 55
    const/16 v0, 0x50

    iput v0, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->gridHeight:I

    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    .line 63
    const/high16 v6, 0x7f080000

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/view/TitleView;

    .line 64
    .local v4, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v4}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/dy/neu/activity/StudentScheduleActivity$1;

    invoke-direct {v7, p0}, Lcom/dy/neu/activity/StudentScheduleActivity$1;-><init>(Lcom/dy/neu/activity/StudentScheduleActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "isTeacher"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 74
    .local v3, "isTeacher":Z
    const v6, 0x7f08003c

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->empty:Landroid/widget/TextView;

    .line 75
    const v6, 0x7f08003d

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->monColum:Landroid/widget/TextView;

    .line 76
    const v6, 0x7f08003e

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->tueColum:Landroid/widget/TextView;

    .line 77
    const v6, 0x7f08003f

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->wedColum:Landroid/widget/TextView;

    .line 78
    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->thrusColum:Landroid/widget/TextView;

    .line 79
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->friColum:Landroid/widget/TextView;

    .line 80
    const v6, 0x7f080042

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->satColum:Landroid/widget/TextView;

    .line 81
    const v6, 0x7f080043

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->sunColum:Landroid/widget/TextView;

    .line 83
    const v6, 0x7f080045

    invoke-virtual {p0, v6}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->course_table_layout:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .local v5, "width":I
    div-int/lit8 v0, v5, 0x8

    .line 89
    .local v0, "aveWidth":I
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->empty:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 90
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->monColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 91
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->tueColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 92
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->wedColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 93
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->thrusColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 94
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->friColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 95
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->satColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 96
    iget-object v6, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->sunColum:Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x21

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 97
    iput v5, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->screenWidth:I

    .line 98
    iput v0, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->aveWidth:I

    .line 101
    if-eqz v3, :cond_0

    .line 102
    sget-object v6, Lcom/dy/neu/activity/StudentScheduleActivity;->MODULE_URL_FOR_TEACHER:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/dy/neu/activity/StudentScheduleActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v6, Lcom/dy/neu/activity/StudentScheduleActivity;->MODULE_URL:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lcom/dy/neu/activity/StudentScheduleActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 14
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
    .line 110
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/high16 v12, 0x7f080000

    invoke-virtual {p0, v12}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/dy/neu/view/TitleView;

    .line 111
    .local v9, "titleView":Lcom/dy/neu/view/TitleView;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v12, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9}, Lcom/dy/neu/view/TitleView;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->monColum:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v4, v12, -0x2c

    .line 114
    .local v4, "height":I
    const/4 v7, 0x6

    .line 115
    .local v7, "maxCourseNum":I
    div-int v12, v4, v7

    iput v12, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->gridHeight:I

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "dataIndex":I
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_0
    const/16 v12, 0x8

    if-gt v6, v12, :cond_6

    .line 118
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-gt v5, v7, :cond_5

    .line 119
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v11, "tx":Landroid/widget/TextView;
    add-int/lit8 v12, v5, -0x1

    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 122
    const/16 v12, 0x8

    if-ge v6, v12, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_2
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v12, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->aveWidth:I

    mul-int/lit8 v12, v12, 0x21

    div-int/lit8 v12, v12, 0x20

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->gridHeight:I

    invoke-direct {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v8, "rp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    const/4 v12, 0x1

    if-ne v6, v12, :cond_2

    .line 139
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v13, v5, 0x2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n|\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v5, 0x2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget v12, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->aveWidth:I

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x4

    iput v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 142
    const/4 v12, 0x1

    if-ne v5, v12, :cond_1

    .line 143
    const/4 v12, 0x3

    iget-object v13, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->empty:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getId()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    :goto_3
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v12, p0, Lcom/dy/neu/activity/StudentScheduleActivity;->course_table_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 126
    .end local v8    # "rp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f020000

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 145
    .restart local v8    # "rp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v12, 0x3

    add-int/lit8 v13, v5, -0x1

    mul-int/lit8 v13, v13, 0x8

    invoke-virtual {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 149
    :cond_2
    const/4 v12, 0x1

    add-int/lit8 v13, v5, -0x1

    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v6

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    const/4 v12, 0x6

    add-int/lit8 v13, v5, -0x1

    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v6

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 152
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "name"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string v12, "name"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 153
    const-string v12, "room"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 154
    .local v10, "touchStr":Ljava/lang/String;
    const-string v12, "name"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "courseStr":Ljava/lang/String;
    const-string v12, ";"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 156
    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_3
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1060016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 160
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x106000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    new-instance v12, Lcom/dy/neu/activity/StudentScheduleActivity$2;

    invoke-direct {v12, p0, v10}, Lcom/dy/neu/activity/StudentScheduleActivity$2;-><init>(Lcom/dy/neu/activity/StudentScheduleActivity;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .end local v0    # "courseStr":Ljava/lang/String;
    .end local v10    # "touchStr":Ljava/lang/String;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 175
    :cond_4
    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 117
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "rp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "tx":Landroid/widget/TextView;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 184
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method protected fetchData1(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
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
    .line 186
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v8, 0x7f08003b

    invoke-virtual {p0, v8}, Lcom/dy/neu/activity/StudentScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 187
    .local v7, "studentScheduleList":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 188
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "isTeacher"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 197
    .local v3, "isTeacher":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine3;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 199
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 200
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/dy/neu/common/ListItemLine3;

    invoke-direct {v4}, Lcom/dy/neu/common/ListItemLine3;-><init>()V

    .line 201
    .local v4, "item":Lcom/dy/neu/common/ListItemLine3;
    const-string v8, "courseName"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine1(Ljava/lang/String;)V

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5468\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "weeks"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "dayOfWeek"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "time"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8282"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine2(Ljava/lang/String;)V

    .line 203
    if-eqz v3, :cond_0

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "classroom"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

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

    .line 209
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 207
    :cond_0
    const-string v8, "classroom"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/dy/neu/common/ListItemLine3;->setLine3(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "item":Lcom/dy/neu/common/ListItemLine3;
    :cond_1
    new-instance v6, Lcom/dy/neu/common/ListItemLine3Adapter;

    invoke-direct {v6, p0, v5}, Lcom/dy/neu/common/ListItemLine3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 212
    .local v6, "mva":Lcom/dy/neu/common/ListItemLine3Adapter;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/StudentScheduleActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/dy/neu/activity/StudentScheduleActivity;->init()V

    .line 61
    return-void
.end method
