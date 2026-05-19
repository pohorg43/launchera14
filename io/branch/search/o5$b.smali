.class public Lio/branch/search/o5$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/o5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public a(III)Z
    .registers 4

    invoke-static {p2}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p3}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p0

    const/4 p3, 0x1

    if-eqz p0, :cond_13

    return p3

    :cond_13
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p0

    if-nez p0, :cond_33

    :cond_25
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-static {p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 p3, 0x0

    :cond_33
    :goto_33
    return p3
.end method
