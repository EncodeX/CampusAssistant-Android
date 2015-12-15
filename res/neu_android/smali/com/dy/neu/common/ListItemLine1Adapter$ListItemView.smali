.class Lcom/dy/neu/common/ListItemLine1Adapter$ListItemView;
.super Ljava/lang/Object;
.source "ListItemLine1Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/common/ListItemLine1Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemView"
.end annotation


# instance fields
.field imageRight:Landroid/widget/ImageView;

.field line1:Landroid/widget/TextView;

.field rightText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dy/neu/common/ListItemLine1Adapter;


# direct methods
.method constructor <init>(Lcom/dy/neu/common/ListItemLine1Adapter;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine1Adapter$ListItemView;->this$0:Lcom/dy/neu/common/ListItemLine1Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
