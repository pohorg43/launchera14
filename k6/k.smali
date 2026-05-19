.class public final Lk6/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ninlineClassesUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 inlineClassesUtils.kt\norg/jetbrains/kotlin/resolve/InlineClassesUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n1549#2:89\n1620#2,3:90\n1747#2,3:93\n1#3:88\n*S KotlinDebug\n*F\n+ 1 inlineClassesUtils.kt\norg/jetbrains/kotlin/resolve/InlineClassesUtilsKt\n*L\n38#1:84\n38#1:85,3\n53#1:89\n53#1:90,3\n64#1:93,3\n*E\n"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string v1, "topLevel(JVM_INLINE_ANNOTATION_FQ_NAME)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Li5/a;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/p0;

    if-eqz v0, :cond_1c

    check-cast p0, Li5/p0;

    invoke-interface {p0}, Li5/n0;->T()Li5/o0;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/k;->d(Li5/f1;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static final b(Li5/l;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_15

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->S()Li5/c1;

    move-result-object p0

    instance-of p0, p0, Li5/y;

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static final c(Ly6/l0;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0}, Lk6/k;->b(Li5/l;)Z

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static final d(Li5/f1;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-interface {p0}, Li5/d1;->b()Li5/l;

    move-result-object v0

    instance-of v1, v0, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    check-cast v0, Li5/e;

    goto :goto_18

    :cond_17
    move-object v0, v2

    :goto_18
    if-eqz v0, :cond_22

    invoke-static {v0}, Lo6/c;->i(Li5/e;)Li5/y;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v2, v0, Li5/y;->a:Lh6/f;

    :cond_22
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public static final e(Li5/l;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/k;->b(Li5/l;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_23

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_20

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->S()Li5/c1;

    move-result-object p0

    instance-of p0, p0, Li5/f0;

    if-eqz p0, :cond_20

    move p0, v3

    goto :goto_21

    :cond_20
    move p0, v2

    :goto_21
    if-eqz p0, :cond_24

    :cond_23
    move v2, v3

    :cond_24
    return v2
.end method

.method public static final f(Ly6/l0;)Ly6/l0;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Li5/e;

    goto :goto_16

    :cond_15
    move-object p0, v1

    :goto_16
    if-eqz p0, :cond_23

    invoke-static {p0}, Lo6/c;->i(Li5/e;)Li5/y;

    move-result-object p0

    if-eqz p0, :cond_23

    iget-object p0, p0, Li5/y;->b:Lc7/k;

    move-object v1, p0

    check-cast v1, Ly6/s0;

    :cond_23
    return-object v1
.end method
