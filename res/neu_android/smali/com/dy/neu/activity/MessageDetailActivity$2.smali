.class Lcom/dy/neu/activity/MessageDetailActivity$2;
.super Ljava/lang/Object;
.source "MessageDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MessageDetailActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/MessageDetailActivity;

.field final synthetic val$messageId:Ljava/lang/String;

.field final synthetic val$titleView:Lcom/dy/neu/view/TitleView;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MessageDetailActivity;Ljava/lang/String;Lcom/dy/neu/view/TitleView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dy/neu/activity/MessageDetailActivity$2;->this$0:Lcom/dy/neu/activity/MessageDetailActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/MessageDetailActivity$2;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/dy/neu/activity/MessageDetailActivity$2;->val$titleView:Lcom/dy/neu/view/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dy/neu/activity/MessageDetailActivity$2;->this$0:Lcom/dy/neu/activity/MessageDetailActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u63d0\u793a\u6846"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u6536\u5230\u8be5\u6d88\u606f\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/dy/neu/activity/MessageDetailActivity$2$1;

    invoke-direct {v2, p0}, Lcom/dy/neu/activity/MessageDetailActivity$2$1;-><init>(Lcom/dy/neu/activity/MessageDetailActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 68
    return-void
.end method
