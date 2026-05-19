.class public final Lr6/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResolutionScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResolutionScope.kt\norg/jetbrains/kotlin/resolve/scopes/ResolutionScope$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lr6/l;Lr6/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Collection;
    .registers 5

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lr6/d;->m:Lr6/d;

    :cond_6
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_12

    sget-object p2, Lr6/i;->a:Lr6/i$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lr6/i$a;->b:Lkotlin/jvm/functions/Function1;

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    invoke-interface {p0, p1, p2}, Lr6/l;->e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
