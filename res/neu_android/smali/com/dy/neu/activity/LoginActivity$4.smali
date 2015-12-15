.class Lcom/dy/neu/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->showDownloadDialog()V
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
    .line 178
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$4;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    iget-object v0, p0, Lcom/dy/neu/activity/LoginActivity$4;->this$0:Lcom/dy/neu/activity/LoginActivity;

    const/4 v1, 0x1

    # setter for: Lcom/dy/neu/activity/LoginActivity;->cancelUpdate:Z
    invoke-static {v0, v1}, Lcom/dy/neu/activity/LoginActivity;->access$202(Lcom/dy/neu/activity/LoginActivity;Z)Z

    .line 185
    return-void
.end method
