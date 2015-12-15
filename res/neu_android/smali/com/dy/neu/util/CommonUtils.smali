.class public Lcom/dy/neu/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static paddingText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "padding"    # I

    .prologue
    .line 12
    if-nez p0, :cond_1

    .line 19
    :cond_0
    return-object p0

    .line 13
    :cond_1
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, p1, v2

    .line 16
    .local v1, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 17
    const-string v2, "  "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
