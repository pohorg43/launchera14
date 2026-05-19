.class public final Lf7/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf7/f;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmodifierChecks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/NoDefaultAndVarargsCheck\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,264:1\n1726#2,3:265\n*S KotlinDebug\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/NoDefaultAndVarargsCheck\n*L\n105#1:265,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lf7/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/p;

    invoke-direct {v0}, Lf7/p;-><init>()V

    sput-object v0, Lf7/p;->a:Lf7/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/x;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lf7/f$a;->a(Lf7/f;Li5/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Li5/x;)Z
    .registers 5

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    const-string p1, "functionDescriptor.valueParameters"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_42

    :cond_1c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/e1;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo6/c;->a(Li5/e1;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-interface {p1}, Li5/e1;->n0()Ly6/l0;

    move-result-object p1

    if-nez p1, :cond_3f

    move p1, v1

    goto :goto_40

    :cond_3f
    move p1, v0

    :goto_40
    if-nez p1, :cond_20

    :goto_42
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    const-string p0, "should not have varargs or parameters with default values"

    return-object p0
.end method
