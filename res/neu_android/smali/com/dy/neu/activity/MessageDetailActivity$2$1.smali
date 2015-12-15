.class Lcom/dy/neu/activity/MessageDetailActivity$2$1;
.super Ljava/lang/Object;
.source "MessageDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MessageDetailActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dy/neu/activity/MessageDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MessageDetailActivity$2;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dy/neu/activity/MessageDetailActivity$2$1;->this$1:Lcom/dy/neu/activity/MessageDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;-><init>(Lcom/dy/neu/activity/MessageDetailActivity$2$1;)V

    invoke-virtual {v0}, Lcom/dy/neu/activity/MessageDetailActivity$2$1$1;->start()V

    .line 63
    iget-object v0, p0, Lcom/dy/neu/activity/MessageDetailActivity$2$1;->this$1:Lcom/dy/neu/activity/MessageDetailActivity$2;

    iget-object v0, v0, Lcom/dy/neu/activity/MessageDetailActivity$2;->val$titleView:Lcom/dy/neu/view/TitleView;

    invoke-virtual {v0}, Lcom/dy/neu/view/TitleView;->getRightTextButton()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    return-void
.end method
