.class public Lcom/dy/neu/common/ListItemLine3Adapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemLine3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "_ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine3;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine3;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->ctx:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 48
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->ctx:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030009

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;

    invoke-direct {v4, p0}, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;-><init>(Lcom/dy/neu/common/ListItemLine3Adapter;)V

    .line 53
    .local v4, "listItemView":Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;
    const v6, 0x7f08000d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line1:Landroid/widget/TextView;

    .line 55
    const v6, 0x7f080010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line2:Landroid/widget/TextView;

    .line 57
    const v6, 0x7f080011

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line3:Landroid/widget/TextView;

    .line 59
    const v6, 0x7f08000e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    .line 61
    const v6, 0x7f08000f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine3;

    invoke-virtual {v6}, Lcom/dy/neu/common/ListItemLine3;->getLine1()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "line1":Ljava/lang/String;
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine3;

    invoke-virtual {v6}, Lcom/dy/neu/common/ListItemLine3;->getLine2()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "line2":Ljava/lang/String;
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine3;

    invoke-virtual {v6}, Lcom/dy/neu/common/ListItemLine3;->getLine3()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "line3":Ljava/lang/String;
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine3;

    invoke-virtual {v6}, Lcom/dy/neu/common/ListItemLine3;->getDetailText()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "detailText":Ljava/lang/String;
    iget-object v6, p0, Lcom/dy/neu/common/ListItemLine3Adapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine3;

    invoke-virtual {v6}, Lcom/dy/neu/common/ListItemLine3;->getRight()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 79
    .local v5, "right":Landroid/graphics/drawable/Drawable;
    iget-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line1:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line2:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->line3:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-object p2

    .line 68
    .end local v0    # "detailText":Ljava/lang/String;
    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    .end local v3    # "line3":Ljava/lang/String;
    .end local v4    # "listItemView":Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;
    .end local v5    # "right":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;

    .restart local v4    # "listItemView":Lcom/dy/neu/common/ListItemLine3Adapter$ListItemView;
    goto :goto_0
.end method
