.class public final Lr5/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClassicBuiltinSpecialProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassicBuiltinSpecialProperties.kt\norg/jetbrains/kotlin/load/java/ClassicBuiltinSpecialProperties\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1#2:37\n1747#3,3:38\n*S KotlinDebug\n*F\n+ 1 ClassicBuiltinSpecialProperties.kt\norg/jetbrains/kotlin/load/java/ClassicBuiltinSpecialProperties\n*L\n33#1:38,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/b;)Z
    .registers 5

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr5/j;->a:Lr5/j;

    sget-object v0, Lr5/j;->e:Ljava/util/Set;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    :cond_15
    sget-object v0, Lr5/j;->d:Ljava/util/Set;

    invoke-static {p0}, Lo6/c;->c(Li5/l;)Lh6/c;

    move-result-object v2

    invoke-static {v0, v2}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_5f

    :cond_2d
    invoke-static {p0}, Lf5/g;->B(Li5/l;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_60

    :cond_34
    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_60

    :cond_44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr5/l;->a(Li5/b;)Z

    move-result v0

    if-eqz v0, :cond_48

    :goto_5f
    move v1, v2

    :cond_60
    :goto_60
    return v1
.end method
