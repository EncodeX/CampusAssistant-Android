.class Lcom/dy/neu/activity/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/LoginActivity;->showNoticeDialog()V
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
    .line 448
    iput-object p1, p0, Lcom/dy/neu/activity/LoginActivity$10;->this$0:Lcom/dy/neu/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    return-void
.end method
