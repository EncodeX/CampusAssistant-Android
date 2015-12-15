.class Lcom/dy/neu/activity/StudentScoreActivity$3;
.super Ljava/lang/Object;
.source "StudentScoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/StudentScoreActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/StudentScoreActivity;

.field final synthetic val$editStudentId:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/StudentScoreActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->val$editStudentId:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    const-string v0, ""

    iget-object v1, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->val$editStudentId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/StudentScoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5b66\u53f7"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/StudentScoreActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dy/neu/activity/StudentScoreActivity$3;->val$editStudentId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # invokes: Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/dy/neu/activity/StudentScoreActivity;->access$200(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
