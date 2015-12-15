.class Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;
.super Ljava/lang/Object;
.source "ListItemLine2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/common/ListItemLine2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemView"
.end annotation


# instance fields
.field imageRight:Landroid/widget/ImageView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field rightText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dy/neu/common/ListItemLine2Adapter;


# direct methods
.method constructor <init>(Lcom/dy/neu/common/ListItemLine2Adapter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dy/neu/common/ListItemLine2Adapter$ListItemView;->this$0:Lcom/dy/neu/common/ListItemLine2Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
