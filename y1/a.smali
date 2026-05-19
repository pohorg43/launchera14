.class public Ly1/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lu5/g;Ly5/d;)Lj5/h;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationsOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu5/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;III)I
    .registers 11

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Ly1/a;->c(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final c(Ljava/lang/String;JJJ)J
    .registers 11

    invoke-static {p0}, Ly1/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    invoke-static {v0}, Lk7/l;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    const/4 v0, 0x0

    if-gtz p1, :cond_1f

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    if-eqz v0, :cond_23

    move-wide p1, v2

    :goto_22
    return-wide p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget v0, Lr7/g0;->a:I

    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static final e(Ljava/lang/String;Z)Z
    .registers 2

    invoke-static {p0}, Ly1/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_a
    return p1
.end method

.method public static synthetic f(Ljava/lang/String;IIIILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_c

    const p3, 0x7fffffff

    :cond_c
    invoke-static {p0, p1, p2, p3}, Ly1/a;->b(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;JJJILjava/lang/Object;)J
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_6

    const-wide/16 p3, 0x1

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_10

    const-wide p5, 0x7fffffffffffffffL

    :cond_10
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Ly1/a;->c(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method
