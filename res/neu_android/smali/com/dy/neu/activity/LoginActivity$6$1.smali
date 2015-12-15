.class Lcom/dy/neu/activity/LoginActivity$6$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dy/neu/activity/LoginActivity$6;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity$6;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$6$1;->this$1:Lcom/dy/neu/activity/LoginActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/LoginActivity$6$1;->this$1:Lcom/dy/neu/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const-class v2, Lcom/dy/neu/activity/MessageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "messageId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "msgFlag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/dy/neu/activity/LoginActivity$6$1;->this$1:Lcom/dy/neu/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/dy/neu/activity/LoginActivity$6;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method
