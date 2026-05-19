.class public final Lr5/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk6/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/a;Li5/a;Li5/e;)I
    .registers 5

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Li5/o0;

    const/4 p3, 0x4

    if-eqz p0, :cond_44

    instance-of p0, p1, Li5/o0;

    if-nez p0, :cond_14

    goto :goto_44

    :cond_14
    check-cast p2, Li5/o0;

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    check-cast p1, Li5/o0;

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    return p3

    :cond_27
    invoke-static {p2}, Lv5/c;->a(Li5/o0;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {p1}, Lv5/c;->a(Li5/o0;)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    return p0

    :cond_35
    invoke-static {p2}, Lv5/c;->a(Li5/o0;)Z

    move-result p0

    if-nez p0, :cond_43

    invoke-static {p1}, Lv5/c;->a(Li5/o0;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    return p3

    :cond_43
    :goto_43
    const/4 p3, 0x3

    :cond_44
    :goto_44
    return p3
.end method

.method public b()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method
