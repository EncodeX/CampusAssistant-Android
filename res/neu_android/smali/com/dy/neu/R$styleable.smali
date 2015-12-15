.class public final Lcom/dy/neu/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dy/neu/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final attrsTitleView:[I

.field public static final attrsTitleView_bg_color:I = 0x0

.field public static final attrsTitleView_leftButonVisible:I = 0x5

.field public static final attrsTitleView_rightImgResid:I = 0x4

.field public static final attrsTitleView_right_button_type:I = 0x2

.field public static final attrsTitleView_right_text:I = 0x3

.field public static final attrsTitleView_title_name:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dy/neu/R$styleable;->attrsTitleView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
