.class Lcom/dy/neu/activity/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->fetchNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$7;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity$7;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    return-void
.end method
