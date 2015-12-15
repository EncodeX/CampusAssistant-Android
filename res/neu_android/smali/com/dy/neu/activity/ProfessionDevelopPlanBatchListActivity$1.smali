.class Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$1;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanBatchListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$1;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity$1;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanBatchListActivity;->finish()V

    .line 40
    return-void
.end method
