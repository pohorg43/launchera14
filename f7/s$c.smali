.class public final Lf7/s$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/x;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmodifierChecks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$3\n+ 2 modifierChecks.kt\norg/jetbrains/kotlin/util/AbstractModifierChecks\n*L\n1#1,264:1\n171#2:265\n*S KotlinDebug\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$3\n*L\n220#1:265\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lf7/s$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/s$c;

    invoke-direct {v0}, Lf7/s$c;-><init>()V

    sput-object v0, Lf7/s$c;->a:Lf7/s$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p1, Li5/x;

    const-string p0, "$this$$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->I()Li5/r0;

    move-result-object p0

    if-nez p0, :cond_11

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p0

    :cond_11
    sget-object v0, Lf7/s;->a:Lf7/s;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_74

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    const-string v4, "receiver.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ld7/c;->j(Ly6/l0;Ly6/l0;)Z

    move-result v2

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    if-nez v2, :cond_73

    invoke-interface {p0}, Li5/r0;->getValue()Ls6/g;

    move-result-object p0

    const-string v2, "receiver.value"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p0, Ls6/e;

    if-nez v2, :cond_3c

    goto :goto_70

    :cond_3c
    check-cast p0, Ls6/e;

    iget-object p0, p0, Ls6/e;->a:Li5/e;

    invoke-interface {p0}, Li5/c0;->f0()Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_70

    :cond_47
    invoke-static {p0}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v2

    if-nez v2, :cond_4e

    goto :goto_70

    :cond_4e
    invoke-static {p0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object p0

    invoke-static {p0, v2}, Li5/w;->b(Li5/e0;Lh6/b;)Li5/h;

    move-result-object p0

    instance-of v2, p0, Li5/z0;

    if-eqz v2, :cond_5d

    check-cast p0, Li5/z0;

    goto :goto_5e

    :cond_5d
    move-object p0, v0

    :goto_5e
    if-nez p0, :cond_61

    goto :goto_70

    :cond_61
    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p1

    if-eqz p1, :cond_70

    invoke-interface {p0}, Li5/z0;->D()Ly6/s0;

    move-result-object p0

    invoke-static {p1, p0}, Ld7/c;->j(Ly6/l0;Ly6/l0;)Z

    move-result p0

    goto :goto_71

    :cond_70
    :goto_70
    move p0, v1

    :goto_71
    if-eqz p0, :cond_74

    :cond_73
    const/4 v1, 0x1

    :cond_74
    if-nez v1, :cond_78

    const-string v0, "receiver must be a supertype of the return type"

    :cond_78
    return-object v0
.end method
