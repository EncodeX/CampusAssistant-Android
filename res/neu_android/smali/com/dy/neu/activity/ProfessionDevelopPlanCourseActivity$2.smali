.class Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanCourseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;

    const-class v2, Lcom/dy/neu/activity/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "titleName"

    const-string v2, "\u8bfe\u7a0b\u7b80\u4ecb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "detailData"

    iget-object v2, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;->val$data:Landroid/content/Intent;

    const-string v3, "courseIntroduce"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanCourseActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
