.class public final Ly6/u$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ly6/u$a;Ly6/d2;ZZI)Ly6/u;
    .registers 13

    and-int/lit8 p0, p4, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_b

    move p3, v0

    :cond_b
    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p4, p1, Ly6/u;

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    move-object v1, p1

    check-cast v1, Ly6/u;

    goto/16 :goto_b9

    :cond_1a
    if-nez p3, :cond_95

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p3

    instance-of p3, p3, Lz6/n;

    const/4 p4, 0x1

    if-nez p3, :cond_3c

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p3

    invoke-interface {p3}, Ly6/j1;->e()Li5/h;

    move-result-object p3

    instance-of p3, p3, Li5/a1;

    if-nez p3, :cond_3c

    instance-of p3, p1, Lz6/h;

    if-nez p3, :cond_3c

    instance-of p3, p1, Ly6/a1;

    if-eqz p3, :cond_3a

    goto :goto_3c

    :cond_3a
    move p3, v0

    goto :goto_3d

    :cond_3c
    :goto_3c
    move p3, p4

    :goto_3d
    if-nez p3, :cond_41

    move p4, v0

    goto :goto_93

    :cond_41
    instance-of p3, p1, Ly6/a1;

    if-eqz p3, :cond_4a

    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p4

    goto :goto_93

    :cond_4a
    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p3

    invoke-interface {p3}, Ly6/j1;->e()Li5/h;

    move-result-object p3

    instance-of v2, p3, Ll5/n0;

    if-eqz v2, :cond_59

    check-cast p3, Ll5/n0;

    goto :goto_5a

    :cond_59
    move-object p3, v1

    :goto_5a
    if-eqz p3, :cond_62

    iget-boolean p3, p3, Ll5/n0;->m:Z

    if-nez p3, :cond_62

    move p3, p4

    goto :goto_63

    :cond_62
    move p3, v0

    :goto_63
    if-eqz p3, :cond_66

    goto :goto_93

    :cond_66
    if-eqz p2, :cond_79

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p3

    invoke-interface {p3}, Ly6/j1;->e()Li5/h;

    move-result-object p3

    instance-of p3, p3, Li5/a1;

    if-eqz p3, :cond_79

    invoke-static {p1}, Ly6/a2;->g(Ly6/l0;)Z

    move-result p4

    goto :goto_93

    :cond_79
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lz6/p;->a:Lz6/p;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lz6/a;->b(ZZLz6/b;Lz6/e;Lz6/f;I)Ly6/i1;

    move-result-object p0

    invoke-static {p1}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object p3

    sget-object v2, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    invoke-static {p0, p3, v2}, Ly6/d;->a(Ly6/i1;Lc7/k;Ly6/i1$b;)Z

    move-result p0

    xor-int/2addr p4, p0

    :goto_93
    if-eqz p4, :cond_b9

    :cond_95
    instance-of p0, p1, Ly6/e0;

    if-eqz p0, :cond_ab

    move-object p0, p1

    check-cast p0, Ly6/e0;

    iget-object p3, p0, Ly6/e0;->b:Ly6/s0;

    invoke-virtual {p3}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p3

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_ab
    new-instance p0, Ly6/u;

    invoke-static {p1}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object p1

    invoke-virtual {p1, v0}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Ly6/u;-><init>(Ly6/s0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    :cond_b9
    :goto_b9
    return-object v1
.end method
