.class Lcom/dy/neu/activity/AcademicWarningActivity$1;
.super Ljava/lang/Object;
.source "AcademicWarningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/AcademicWarningActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/AcademicWarningActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/AcademicWarningActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dy/neu/activity/AcademicWarningActivity$1;->this$0:Lcom/dy/neu/activity/AcademicWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dy/neu/activity/AcademicWarningActivity$1;->this$0:Lcom/dy/neu/activity/AcademicWarningActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/AcademicWarningActivity;->finish()V

    .line 33
    return-void
.end method
