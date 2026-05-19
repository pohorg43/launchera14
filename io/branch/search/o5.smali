.class public Lio/branch/search/o5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/o5$b;,
        Lio/branch/search/o5$a;,
        Lio/branch/search/o5$c;
    }
.end annotation


# instance fields
.field public a:[Lio/branch/search/o5$c;


# direct methods
.method public varargs constructor <init>([Lio/branch/search/o5$c;)V
    .registers 2
    .param p1  # [Lio/branch/search/o5$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o5;->a:[Lio/branch/search/o5$c;

    return-void
.end method

.method public static a(Ljava/lang/String;ILio/branch/search/o5$c;)I
    .registers 8
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/o5$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_8

    return v1

    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_33

    if-nez p1, :cond_12

    move v0, v1

    goto :goto_18

    :cond_12
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_18
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_26

    move v4, v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2a
    invoke-interface {p2, v0, v2, v4}, Lio/branch/search/o5$c;->a(III)Z

    move-result v0

    if-eqz v0, :cond_31

    return p1

    :cond_31
    move p1, v3

    goto :goto_8

    :cond_33
    return v1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 13
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const v0, 0xffff

    goto :goto_15

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    return v3

    :cond_26
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_33

    return v3

    :cond_33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    move v8, v2

    :goto_12
    if-ltz v8, :cond_24

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v8

    move-object v5, p1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    add-int/lit8 v8, v8, -0x1

    goto :goto_12

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/o5$c;)I
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/o5$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, -0x1

    move v0, p0

    :cond_2
    if-gez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_f

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {p3, v1}, Lio/branch/search/o5$c;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    :goto_f
    invoke-static {p1, v1, p2}, Lio/branch/search/o5;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, p3}, Lio/branch/search/o5;->a(Ljava/lang/String;ILio/branch/search/o5$c;)I

    move-result v0

    if-gez v0, :cond_2

    return p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    :cond_e
    invoke-static {p1, p2}, Lio/branch/search/o5;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Lio/branch/search/o5;->a:[Lio/branch/search/o5$c;

    array-length v2, v0

    move v3, v1

    :goto_19
    if-ge v3, v2, :cond_28

    aget-object v4, v0, v3

    invoke-virtual {p0, p1, p2, v4}, Lio/branch/search/o5;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/o5$c;)I

    move-result v4

    if-ltz v4, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_28
    :goto_28
    return v1
.end method
