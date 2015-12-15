.class Lcom/dy/neu/activity/RetakeRegistBatchActivity$1;
.super Ljava/lang/Object;
.source "RetakeRegistBatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/RetakeRegistBatchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/RetakeRegistBatchActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dy/neu/activity/RetakeRegistBatchActivity$1;->this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dy/neu/activity/RetakeRegistBatchActivity$1;->this$0:Lcom/dy/neu/activity/RetakeRegistBatchActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/RetakeRegistBatchActivity;->finish()V

    .line 38
    return-void
.end method
