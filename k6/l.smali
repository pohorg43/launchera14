.class public Lk6/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Li5/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lk6/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk6/l;

    invoke-direct {v0}, Lk6/l;-><init>()V

    sput-object v0, Lk6/l;->a:Lk6/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li5/l;)I
    .registers 2

    invoke-static {p0}, Lk6/i;->r(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_9
    instance-of v0, p0, Li5/k;

    if-eqz v0, :cond_f

    const/4 p0, 0x7

    return p0

    :cond_f
    instance-of v0, p0, Li5/o0;

    if-eqz v0, :cond_1f

    check-cast p0, Li5/o0;

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object p0

    if-nez p0, :cond_1d

    const/4 p0, 0x6

    return p0

    :cond_1d
    const/4 p0, 0x5

    return p0

    :cond_1f
    instance-of v0, p0, Li5/x;

    if-eqz v0, :cond_2f

    check-cast p0, Li5/x;

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object p0

    if-nez p0, :cond_2d

    const/4 p0, 0x4

    return p0

    :cond_2d
    const/4 p0, 0x3

    return p0

    :cond_2f
    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_35

    const/4 p0, 0x2

    return p0

    :cond_35
    instance-of p0, p0, Li5/z0;

    if-eqz p0, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Li5/l;

    check-cast p2, Li5/l;

    invoke-static {p2}, Lk6/l;->a(Li5/l;)I

    move-result p0

    invoke-static {p1}, Lk6/l;->a(Li5/l;)I

    move-result v0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3e

    :cond_15
    invoke-static {p1}, Lk6/i;->r(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-static {p2}, Lk6/i;->r(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3e

    :cond_26
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object p1

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lh6/f;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    if-eqz p0, :cond_44

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_44
    return v0
.end method
