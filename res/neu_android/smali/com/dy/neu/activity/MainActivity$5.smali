.class Lcom/dy/neu/activity/MainActivity$5;
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
    .line 512
    iput-object p1, p0, Lcom/dy/neu/activity/MainActivity$5;->this$0:Lcom/dy/neu/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 517
    return-void
.end method
