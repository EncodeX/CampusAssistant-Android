.class Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;
.super Ljava/lang/Object;
.source "ProfessionDevelopPlanProfessionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

.field final synthetic val$professionIntroduce:Ljava/lang/String;

.field final synthetic val$professionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->val$professionIntroduce:Ljava/lang/String;

    iput-object p3, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->val$professionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    const-class v2, Lcom/dy/neu/activity/ProfessionIntroduceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "professionIntroduce"

    iget-object v2, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->val$professionIntroduce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "professionName"

    iget-object v2, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->val$professionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;

    invoke-virtual {v1, v0}, Lcom/dy/neu/activity/ProfessionDevelopPlanProfessionActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
