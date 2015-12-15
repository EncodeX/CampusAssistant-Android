.class Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainListViewAdapter"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dy/neu/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/dy/neu/activity/MainActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dy/neu/common/ListItemMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "_list":Ljava/util/List;, "Ljava/util/List<Lcom/dy/neu/common/ListItemMenu;>;"
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 308
    iput-object p2, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    .line 309
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 323
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 331
    if-nez p2, :cond_0

    .line 333
    iget-object v4, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 337
    new-instance v1, Lcom/dy/neu/activity/MainActivity$ListItemView;

    iget-object v4, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {v1, v4}, Lcom/dy/neu/activity/MainActivity$ListItemView;-><init>(Lcom/dy/neu/activity/MainActivity;)V

    .line 338
    .local v1, "listItemView":Lcom/dy/neu/activity/MainActivity$ListItemView;
    const v4, 0x7f080026

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->imageView:Landroid/widget/ImageView;

    .line 340
    const v4, 0x7f080027

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->textView:Landroid/widget/TextView;

    .line 342
    const v4, 0x7f080028

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->imageRight:Landroid/widget/ImageView;

    .line 346
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    :goto_0
    iget-object v4, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/common/ListItemMenu;

    invoke-virtual {v4}, Lcom/dy/neu/common/ListItemMenu;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/common/ListItemMenu;

    invoke-virtual {v4}, Lcom/dy/neu/common/ListItemMenu;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/dy/neu/activity/MainActivity$MainListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dy/neu/common/ListItemMenu;

    invoke-virtual {v4}, Lcom/dy/neu/common/ListItemMenu;->getRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 358
    .local v2, "right":Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v4, v1, Lcom/dy/neu/activity/MainActivity$ListItemView;->imageRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-object p2

    .line 349
    .end local v0    # "img":Landroid/graphics/drawable/Drawable;
    .end local v1    # "listItemView":Lcom/dy/neu/activity/MainActivity$ListItemView;
    .end local v2    # "right":Landroid/graphics/drawable/Drawable;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dy/neu/activity/MainActivity$ListItemView;

    .restart local v1    # "listItemView":Lcom/dy/neu/activity/MainActivity$ListItemView;
    goto :goto_0
.end method
