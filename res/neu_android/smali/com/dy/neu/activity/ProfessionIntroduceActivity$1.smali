.class Lcom/dy/neu/activity/ProfessionIntroduceActivity$1;
.super Ljava/lang/Object;
.source "ProfessionIntroduceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/ProfessionIntroduceActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/ProfessionIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/ProfessionIntroduceActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionIntroduceActivity$1;->this$0:Lcom/dy/neu/activity/ProfessionIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dy/neu/activity/ProfessionIntroduceActivity$1;->this$0:Lcom/dy/neu/activity/ProfessionIntroduceActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/ProfessionIntroduceActivity;->finish()V

    .line 42
    return-void
.end method
