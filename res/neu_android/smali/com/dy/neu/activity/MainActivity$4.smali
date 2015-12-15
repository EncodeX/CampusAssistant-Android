.class Lcom/dy/neu/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MainActivity;->showNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$4;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 505
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$4;->this$0:Lcom/dy/neu/activity/MainActivity;

    # invokes: Lcom/dy/neu/activity/MainActivity;->showDownloadDialog()V
    invoke-static {v0}, Lcom/dy/neu/activity/MainActivity;->access$900(Lcom/dy/neu/activity/MainActivity;)V

    .line 508
    return-void
.end method
