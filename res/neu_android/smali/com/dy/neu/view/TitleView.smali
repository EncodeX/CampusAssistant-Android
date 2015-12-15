.class public Lcom/dy/neu/view/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# instance fields
.field private imgBack:Landroid/widget/ImageView;

.field private imgRight:Landroid/widget/ImageView;

.field private relaMain:Landroid/widget/RelativeLayout;

.field private tvRight:Landroid/widget/TextView;

.field private tvTitleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/dy/neu/view/TitleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/dy/neu/view/TitleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    sget-object v8, Lcom/dy/neu/R$styleable;->attrsTitleView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 29
    .local v7, "typeArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 30
    .local v0, "backColor":I
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "titleName":Ljava/lang/String;
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 32
    .local v3, "rightButtonType":I
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "right_text":Ljava/lang/String;
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 34
    .local v4, "rightImgResid":I
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 36
    .local v1, "leftButonVisible":Z
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030025

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 37
    .local v2, "linear":Landroid/widget/LinearLayout;
    const v8, 0x7f080051

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/dy/neu/view/TitleView;->relaMain:Landroid/widget/RelativeLayout;

    .line 38
    const v8, 0x7f080052

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/dy/neu/view/TitleView;->imgBack:Landroid/widget/ImageView;

    .line 39
    const v8, 0x7f080055

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/dy/neu/view/TitleView;->tvTitleName:Landroid/widget/TextView;

    .line 40
    const v8, 0x7f080053

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    .line 41
    const v8, 0x7f080054

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    .line 43
    if-eqz v1, :cond_2

    .line 44
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgBack:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_0
    if-nez v3, :cond_3

    .line 50
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_1
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvTitleName:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 62
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvTitleName:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    if-lez v0, :cond_1

    .line 65
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 68
    :cond_1
    invoke-virtual {p0, v2}, Lcom/dy/neu/view/TitleView;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void

    .line 46
    :cond_2
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgBack:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 54
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 58
    :cond_4
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v8, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getBackImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightImgButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->imgRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightTextButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->tvRight:Landroid/widget/TextView;

    return-object v0
.end method

.method public setMainBackColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->relaMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 109
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->tvTitleName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dy/neu/view/TitleView;->tvTitleName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    return-void
.end method
