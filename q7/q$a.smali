.class public final Lq7/q$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lq7/q;Ll4/f;ILo7/a;ILjava/lang/Object;)Lp7/d;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Ll4/h;->a:Ll4/h;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, -0x3

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    sget-object p3, Lo7/a;->a:Lo7/a;

    :cond_11
    invoke-interface {p0, p1, p2, p3}, Lq7/q;->a(Ll4/f;ILo7/a;)Lp7/d;

    move-result-object p0

    return-object p0
.end method
