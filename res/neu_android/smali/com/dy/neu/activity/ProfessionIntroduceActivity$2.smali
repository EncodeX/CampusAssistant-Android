.class Lcom/dy/neu/activity/ProfessionIntroduceActivity$2;
.super Landroid/webkit/WebViewClient;
.source "ProfessionIntroduceActivity.java"


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
    .line 47
    iput-object p1, p0, Lcom/dy/neu/activity/ProfessionIntroduceActivity$2;->this$0:Lcom/dy/neu/activity/ProfessionIntroduceActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
