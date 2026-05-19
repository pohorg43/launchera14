.class public final Li5/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ndescriptorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 descriptorUtil.kt\norg/jetbrains/kotlin/descriptors/DescriptorUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 coreLib.kt\norg/jetbrains/kotlin/utils/CoreLibKt\n*L\n1#1,108:1\n1#2:109\n19#3:110\n*S KotlinDebug\n*F\n+ 1 descriptorUtil.kt\norg/jetbrains/kotlin/descriptors/DescriptorUtilKt\n*L\n38#1:110\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/l;)Li5/h;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    instance-of p0, p0, Li5/h0;

    if-eqz p0, :cond_11

    goto :goto_28

    :cond_11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Li5/l;->b()Li5/l;

    move-result-object p0

    instance-of p0, p0, Li5/h0;

    if-nez p0, :cond_21

    invoke-static {v1}, Li5/r;->a(Li5/l;)Li5/h;

    move-result-object v2

    goto :goto_28

    :cond_21
    instance-of p0, v1, Li5/h;

    if-eqz p0, :cond_28

    move-object v2, v1

    check-cast v2, Li5/h;

    :cond_28
    :goto_28
    return-object v2
.end method

.method public static final b(Li5/e0;Lh6/c;Lq5/b;)Li5/e;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupLocation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/c;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {p1}, Lh6/c;->e()Lh6/c;

    move-result-object v0

    const-string v2, "fqName.parent()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object v0

    invoke-interface {v0}, Li5/l0;->l()Lr6/i;

    move-result-object v0

    invoke-virtual {p1}, Lh6/c;->g()Lh6/f;

    move-result-object v3

    const-string v4, "fqName.shortName()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v0

    instance-of v3, v0, Li5/e;

    if-eqz v3, :cond_3c

    check-cast v0, Li5/e;

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    if-eqz v0, :cond_40

    return-object v0

    :cond_40
    invoke-virtual {p1}, Lh6/c;->e()Lh6/c;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Li5/r;->b(Li5/e0;Lh6/c;Lq5/b;)Li5/e;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-virtual {p1}, Lh6/c;->g()Lh6/f;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    goto :goto_60

    :cond_5f
    move-object p0, v1

    :goto_60
    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_67

    move-object v1, p0

    check-cast v1, Li5/e;

    :cond_67
    return-object v1
.end method
