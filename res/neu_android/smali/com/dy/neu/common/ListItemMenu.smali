.class public Lcom/dy/neu/common/ListItemMenu;
.super Ljava/lang/Object;
.source "ListItemMenu.java"


# instance fields
.field private image:Landroid/graphics/drawable/Drawable;

.field private right:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dy/neu/common/ListItemMenu;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRight()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dy/neu/common/ListItemMenu;->right:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dy/neu/common/ListItemMenu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dy/neu/common/ListItemMenu;->image:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method

.method public setRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "right"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dy/neu/common/ListItemMenu;->right:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dy/neu/common/ListItemMenu;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
