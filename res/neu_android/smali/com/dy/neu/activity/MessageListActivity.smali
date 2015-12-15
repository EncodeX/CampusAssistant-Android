.class public Lcom/dy/neu/activity/MessageListActivity;
.super Lcom/dy/neu/common/BaseActivity;
.source "MessageListActivity.java"


# static fields
.field private static MODULE_URL_MESSAGE:Ljava/lang/String;

.field private static MODULE_URL_NOTICE:Ljava/lang/String;


# instance fields
.field private isLoading:Z

.field private loadMoreView:Landroid/view/View;

.field private loading:Landroid/widget/LinearLayout;

.field private mhHandler:Landroid/os/Handler;

.field private more:Landroid/widget/TextView;

.field private msgFlag:Ljava/lang/String;

.field mva:Lcom/dy/neu/common/ListItemLine2Adapter;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "/notice"

    sput-object v0, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    .line 27
    const-string v0, "/message"

    sput-object v0, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dy/neu/common/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z

    .line 195
    new-instance v0, Lcom/dy/neu/activity/MessageListActivity$4;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/MessageListActivity$4;-><init>(Lcom/dy/neu/activity/MessageListActivity;)V

    iput-object v0, p0, Lcom/dy/neu/activity/MessageListActivity;->mhHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/dy/neu/activity/MessageListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/dy/neu/activity/MessageListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/dy/neu/activity/MessageListActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity;->more:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dy/neu/activity/MessageListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity;->loading:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dy/neu/activity/MessageListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    return v0
.end method

.method static synthetic access$308(Lcom/dy/neu/activity/MessageListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dy/neu/activity/MessageListActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dy/neu/activity/MessageListActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity;->mhHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dy/neu/activity/MessageListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dy/neu/activity/MessageListActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/high16 v8, 0x7f070000

    const/4 v7, 0x0

    .line 43
    const/high16 v4, 0x7f080000

    invoke-virtual {p0, v4}, Lcom/dy/neu/activity/MessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/view/TitleView;

    .line 44
    .local v3, "titleView":Lcom/dy/neu/view/TitleView;
    invoke-virtual {v3}, Lcom/dy/neu/view/TitleView;->getBackImage()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/dy/neu/activity/MessageListActivity$1;

    invoke-direct {v5, p0}, Lcom/dy/neu/activity/MessageListActivity$1;-><init>(Lcom/dy/neu/activity/MessageListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "data":Landroid/content/Intent;
    const-string v4, "msgFlag"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "0"

    iget-object v5, p0, Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "\u7cfb\u7edf\u516c\u544a"

    invoke-virtual {v3, v4}, Lcom/dy/neu/view/TitleView;->setTitleName(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page"

    iget v6, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pageSize"

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v4, v1, v7, v5}, Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 65
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page"

    iget v6, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pageSize"

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v4, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_MESSAGE:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v4, v1, v7, v5}, Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private makeList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p1, :cond_1

    .line 153
    const/4 v3, 0x0

    .line 169
    :cond_0
    return-object v3

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/dy/neu/common/ListItemLine2;

    invoke-direct {v2}, Lcom/dy/neu/common/ListItemLine2;-><init>()V

    .line 160
    .local v2, "item":Lcom/dy/neu/common/ListItemLine2;
    const-string v5, "publishId"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/dy/neu/common/ListItemLine2;->setListItemId(Ljava/lang/String;)V

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, "title"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/dy/neu/common/ListItemLine2;->setLine1(Ljava/lang/String;)V

    .line 162
    const-string v5, "publisher1"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0xd

    invoke-static {v5, v6}, Lcom/dy/neu/util/CommonUtils;->paddingText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/dy/neu/common/ListItemLine2;->setLine2(Ljava/lang/String;)V

    .line 163
    const-string v5, "1"

    iget-object v6, p0, Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    const-string v5, "1"

    const-string v6, "readFlag"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\u5df2\u8bfb"

    :goto_1
    invoke-virtual {v2, v5}, Lcom/dy/neu/common/ListItemLine2;->setDetailText(Ljava/lang/String;)V

    .line 166
    :cond_2
    const v5, 0x7f02001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/dy/neu/common/ListItemLine2;->setRight(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 164
    :cond_3
    const-string v5, "\u672a\u8bfb"

    goto :goto_1
.end method


# virtual methods
.method protected fetchData(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
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
    const/high16 v4, 0x7f070000

    .line 73
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/dy/neu/activity/MessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 80
    .local v1, "messageListView":Landroid/widget/ListView;
    invoke-direct {p0, p1}, Lcom/dy/neu/activity/MessageListActivity;->makeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loadMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-virtual {v2}, Lcom/dy/neu/common/ListItemLine2Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 85
    :cond_2
    new-instance v2, Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-direct {v2, p0, v0}, Lcom/dy/neu/common/ListItemLine2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    .line 91
    :goto_0
    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loadMoreView:Landroid/view/View;

    .line 92
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loadMoreView:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->more:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loadMoreView:Landroid/view/View;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loading:Landroid/widget/LinearLayout;

    .line 94
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->more:Landroid/widget/TextView;

    new-instance v3, Lcom/dy/neu/activity/MessageListActivity$2;

    invoke-direct {v3, p0}, Lcom/dy/neu/activity/MessageListActivity$2;-><init>(Lcom/dy/neu/activity/MessageListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 134
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->loadMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    new-instance v2, Lcom/dy/neu/activity/MessageListActivity$3;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/MessageListActivity$3;-><init>(Lcom/dy/neu/activity/MessageListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    return-void

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-virtual {v2, v0}, Lcom/dy/neu/common/ListItemLine2Adapter;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v6, 0x7f070000

    const/4 v5, 0x0

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dy/neu/activity/MessageListActivity;->mva:Lcom/dy/neu/common/ListItemLine2Adapter;

    .line 175
    invoke-virtual {p0}, Lcom/dy/neu/activity/MessageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "0"

    iget-object v3, p0, Lcom/dy/neu/activity/MessageListActivity;->msgFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    iget v4, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageSize"

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v2, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_NOTICE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v5, v3}, Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 187
    .end local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .restart local v0    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    iget v4, p0, Lcom/dy/neu/activity/MessageListActivity;->page:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageSize"

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v2, Lcom/dy/neu/activity/MessageListActivity;->MODULE_URL_MESSAGE:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v5, v3}, Lcom/dy/neu/activity/MessageListActivity;->getData(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/dy/neu/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/dy/neu/activity/MessageListActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/dy/neu/activity/MessageListActivity;->init()V

    .line 41
    return-void
.end method
