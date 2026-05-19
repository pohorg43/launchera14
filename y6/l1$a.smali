.class public final Ly6/l1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeSubstitution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeSubstitution.kt\norg/jetbrains/kotlin/types/TypeConstructorSubstitution$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1549#2:208\n1620#2,3:209\n*S KotlinDebug\n*F\n+ 1 TypeSubstitution.kt\norg/jetbrains/kotlin/types/TypeConstructorSubstitution$Companion\n*L\n96#1:208\n96#1:209,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ly6/l1$a;Ljava/util/Map;ZI)Ly6/l1;
    .registers 4

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    :cond_5
    const-string p0, "map"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly6/k1;

    invoke-direct {p0, p1, p2}, Ly6/k1;-><init>(Ljava/util/Map;Z)V

    return-object p0
.end method


# virtual methods
.method public final a(Ly6/l0;)Ly6/t1;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "kotlinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {p1}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ly6/l1$a;->b(Ly6/j1;Ljava/util/List;)Ly6/t1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ly6/j1;Ljava/util/List;)Ly6/t1;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;)",
            "Ly6/t1;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeConstructor.parameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_24

    invoke-interface {v2}, Li5/a1;->N()Z

    move-result v2

    if-ne v2, v3, :cond_24

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    if-eqz v3, :cond_5f

    invoke-interface {p1}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a1;

    invoke-interface {v1}, Li5/a1;->h()Ly6/j1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_51
    invoke-static {v0, p2}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p0, p1, v4, p2}, Ly6/l1$a;->c(Ly6/l1$a;Ljava/util/Map;ZI)Ly6/l1;

    move-result-object p0

    return-object p0

    :cond_5f
    new-instance p0, Ly6/i0;

    const-string p1, "parameters"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "argumentsList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p1, v4, [Li5/a1;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Li5/a1;

    new-array v0, v4, [Ly6/q1;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ly6/q1;

    invoke-direct {p0, p1, p2, v4}, Ly6/i0;-><init>([Li5/a1;[Ly6/q1;Z)V

    return-object p0
.end method
