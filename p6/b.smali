.class public final Lp6/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ninlineClassManglingRules.kt\nKotlin\n*S Kotlin\n*F\n+ 1 inlineClassManglingRules.kt\norg/jetbrains/kotlin/resolve/jvm/InlineClassManglingRulesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1747#2,3:58\n1747#2,3:61\n*S KotlinDebug\n*F\n+ 1 inlineClassManglingRules.kt\norg/jetbrains/kotlin/resolve/jvm/InlineClassManglingRulesKt\n*L\n25#1:58,3\n31#1:61,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-interface {v1}, Ly6/j1;->e()Li5/h;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk6/k;->b(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_2a

    check-cast v1, Li5/e;

    invoke-static {v1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v0

    sget-object v1, Lf5/j;->g:Lh6/c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v3

    :goto_2b
    if-ne v0, v2, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    if-nez v0, :cond_52

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of v0, p0, Li5/a1;

    if-eqz v0, :cond_41

    check-cast p0, Li5/a1;

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    if-nez p0, :cond_46

    move p0, v3

    goto :goto_4e

    :cond_46
    invoke-static {p0}, Ld7/c;->g(Li5/a1;)Ly6/l0;

    move-result-object p0

    invoke-static {p0}, Lp6/b;->a(Ly6/l0;)Z

    move-result p0

    :goto_4e
    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :cond_52
    :goto_52
    return v2
.end method
