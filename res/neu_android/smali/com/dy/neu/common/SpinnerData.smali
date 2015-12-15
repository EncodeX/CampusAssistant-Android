.class public Lcom/dy/neu/common/SpinnerData;
.super Ljava/lang/Object;
.source "SpinnerData.java"


# instance fields
.field private text:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_value"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/dy/neu/common/SpinnerData;->value:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/dy/neu/common/SpinnerData;->text:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dy/neu/common/SpinnerData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dy/neu/common/SpinnerData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dy/neu/common/SpinnerData;->text:Ljava/lang/String;

    return-object v0
.end method
