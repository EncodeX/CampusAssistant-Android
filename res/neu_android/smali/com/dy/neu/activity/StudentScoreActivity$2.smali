.class Lcom/dy/neu/activity/StudentScoreActivity$2;
.super Ljava/lang/Object;
.source "StudentScoreActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 48
    iput-object p1, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    iput-object p2, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->val$editStudentId:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    .line 52
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->val$editStudentId:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    invoke-virtual {v2}, Lcom/dy/neu/activity/StudentScoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u8f93\u5165\u5b66\u53f7"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->this$0:Lcom/dy/neu/activity/StudentScoreActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/dy/neu/activity/StudentScoreActivity;->MODULE_URL:Ljava/lang/String;
    invoke-static {}, Lcom/dy/neu/activity/StudentScoreActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dy/neu/activity/StudentScoreActivity$2;->val$editStudentId:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    # invokes: Lcom/dy/neu/activity/StudentScoreActivity;->getData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/dy/neu/activity/StudentScoreActivity;->access$100(Lcom/dy/neu/activity/StudentScoreActivity;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 57
    goto :goto_0
.end method
