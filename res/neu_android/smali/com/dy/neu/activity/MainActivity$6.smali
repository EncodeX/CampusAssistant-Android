.class Lcom/dy/neu/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/MainActivity;->showDownloadDialog()V
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
    .line 560
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$6;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 564
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 566
    iget-object v0, p0, Lcom/dy/neu/activity/MainActivity$6;->this$0:Lcom/dy/neu/activity/MainActivity;

    const/4 v1, 0x1

    # setter for: Lcom/dy/neu/activity/MainActivity;->cancelUpdate:Z
    invoke-static {v0, v1}, Lcom/dy/neu/activity/MainActivity;->access$702(Lcom/dy/neu/activity/MainActivity;Z)Z

    .line 567
    return-void
.end method
