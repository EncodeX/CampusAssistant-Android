.class public Lcom/dy/neu/common/ListItemLine2Adapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemLine2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine2;",
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
            "Lcom/dy/neu/common/ListItemLine2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->ctx:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine2;>;"
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {p0}, Lcom/dy/neu/common/ListItemLine2Adapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 52
    iget-object v5, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->ctx:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;

    invoke-direct {v3, p0}, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;-><init>(Lcom/dy/neu/common/ListItemLine2Adapter;)V

    .line 57
    .local v3, "listItemView":Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;
    const v5, 0x7f08000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->line1:Landroid/widget/TextView;

    .line 59
    const v5, 0x7f080010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->line2:Landroid/widget/TextView;

    .line 61
    const v5, 0x7f08000e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    .line 63
    const v5, 0x7f08000f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v5, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/common/ListItemLine2;

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine2;->getLine1()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "line1":Ljava/lang/String;
    iget-object v5, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/common/ListItemLine2;

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine2;->getLine2()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "line2":Ljava/lang/String;
    iget-object v5, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/common/ListItemLine2;

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine2;->getDetailText()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "detailText":Ljava/lang/String;
    iget-object v5, p0, Lcom/dy/neu/common/ListItemLine2Adapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dy/neu/common/ListItemLine2;

    invoke-virtual {v5}, Lcom/dy/neu/common/ListItemLine2;->getRight()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 80
    .local v4, "right":Landroid/graphics/drawable/Drawable;
    iget-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->line1:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->line2:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v5, v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-object p2

    .line 70
    .end local v0    # "detailText":Ljava/lang/String;
    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    .end local v3    # "listItemView":Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;
    .end local v4    # "right":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;

    .restart local v3    # "listItemView":Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;
    goto :goto_0
.end method
