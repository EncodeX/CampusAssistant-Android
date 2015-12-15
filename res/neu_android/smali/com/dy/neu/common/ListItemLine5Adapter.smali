.class public Lcom/dy/neu/common/ListItemLine5Adapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemLine5Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemLine5;",
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
            "Lcom/dy/neu/common/ListItemLine5;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemLine5;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->ctx:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

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
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_1

    .line 48
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->ctx:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03000b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;

    invoke-direct {v6, p0}, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;-><init>(Lcom/dy/neu/common/ListItemLine5Adapter;)V

    .line 53
    .local v6, "listItemView":Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;
    const v8, 0x7f08000d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line1:Landroid/widget/TextView;

    .line 55
    const v8, 0x7f080010

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line2:Landroid/widget/TextView;

    .line 57
    const v8, 0x7f080011

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line3:Landroid/widget/TextView;

    .line 59
    const v8, 0x7f080012

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line4:Landroid/widget/TextView;

    .line 61
    const v8, 0x7f080013

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line5:Landroid/widget/TextView;

    .line 63
    const v8, 0x7f08000e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    .line 65
    const v8, 0x7f08000f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine1()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "line1":Ljava/lang/String;
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line1:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine2()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "line2":Ljava/lang/String;
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line2:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine3()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "line3":Ljava/lang/String;
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line3:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine4()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "line4":Ljava/lang/String;
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line4:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine5()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "line5":Ljava/lang/String;
    const/16 v9, 0x8

    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine5Visibility()I

    move-result v8

    if-ne v9, v8, :cond_2

    .line 86
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line5:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getDetailText()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "detailText":Ljava/lang/String;
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getRight()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 99
    .local v7, "right":Landroid/graphics/drawable/Drawable;
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->rightText:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->imageRight:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-object p2

    .line 72
    .end local v0    # "detailText":Ljava/lang/String;
    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    .end local v3    # "line3":Ljava/lang/String;
    .end local v4    # "line4":Ljava/lang/String;
    .end local v5    # "line5":Ljava/lang/String;
    .end local v6    # "listItemView":Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;
    .end local v7    # "right":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;

    .restart local v6    # "listItemView":Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;
    goto/16 :goto_0

    .line 88
    .restart local v1    # "line1":Ljava/lang/String;
    .restart local v2    # "line2":Ljava/lang/String;
    .restart local v3    # "line3":Ljava/lang/String;
    .restart local v4    # "line4":Ljava/lang/String;
    .restart local v5    # "line5":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine5Visibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 89
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line5:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line5:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_3
    const/4 v9, 0x4

    iget-object v8, p0, Lcom/dy/neu/common/ListItemLine5Adapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dy/neu/common/ListItemLine5;

    invoke-virtual {v8}, Lcom/dy/neu/common/ListItemLine5;->getLine5Visibility()I

    move-result v8

    if-ne v9, v8, :cond_0

    .line 93
    iget-object v8, v6, Lcom/dy/neu/common/ListItemLine5Adapter$ListItemView;->line5:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
