.class public final Ly6/h0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nflexibleTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 flexibleTypes.kt\norg/jetbrains/kotlin/types/FlexibleTypesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n288#2:186\n1726#2,3:187\n289#2:190\n1549#2:191\n1620#2,3:192\n1549#2:195\n1620#2,3:196\n*S KotlinDebug\n*F\n+ 1 flexibleTypes.kt\norg/jetbrains/kotlin/types/FlexibleTypesKt\n*L\n50#1:186\n51#1:187,3\n50#1:190\n62#1:191\n62#1:192,3\n65#1:195\n65#1:196,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ly6/l0;)Ly6/e0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ly6/e0;

    return-object p0
.end method

.method public static final b(Ly6/l0;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of p0, p0, Ly6/e0;

    return p0
.end method

.method public static final c(Ly6/l0;)Ly6/s0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of v0, p0, Ly6/e0;

    if-eqz v0, :cond_12

    check-cast p0, Ly6/e0;

    iget-object p0, p0, Ly6/e0;->b:Ly6/s0;

    goto :goto_18

    :cond_12
    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_19

    check-cast p0, Ly6/s0;

    :goto_18
    return-object p0

    :cond_19
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public static final d(Ly6/l0;)Ly6/s0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    instance-of v0, p0, Ly6/e0;

    if-eqz v0, :cond_12

    check-cast p0, Ly6/e0;

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    goto :goto_18

    :cond_12
    instance-of v0, p0, Ly6/s0;

    if-eqz v0, :cond_19

    check-cast p0, Ly6/s0;

    :goto_18
    return-object p0

    :cond_19
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
