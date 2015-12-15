.class Lcom/dy/neu/activity/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/DetailActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dy/neu/activity/DetailActivity$1;->this$0:Lcom/dy/neu/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dy/neu/activity/DetailActivity$1;->this$0:Lcom/dy/neu/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/DetailActivity;->finish()V

    .line 35
    return-void
.end method
