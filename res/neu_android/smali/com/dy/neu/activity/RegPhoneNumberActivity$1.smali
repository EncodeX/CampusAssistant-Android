.class Lcom/dy/neu/activity/RegPhoneNumberActivity$1;
.super Ljava/lang/Object;
.source "RegPhoneNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dy/neu/activity/RegPhoneNumberActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dy/neu/activity/RegPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/dy/neu/activity/RegPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dy/neu/activity/RegPhoneNumberActivity$1;->this$0:Lcom/dy/neu/activity/RegPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dy/neu/activity/RegPhoneNumberActivity$1;->this$0:Lcom/dy/neu/activity/RegPhoneNumberActivity;

    invoke-virtual {v0}, Lcom/dy/neu/activity/RegPhoneNumberActivity;->finish()V

    .line 31
    return-void
.end method
