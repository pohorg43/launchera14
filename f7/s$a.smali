.class public final Lf7/s$a;
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
        "SMAP\nmodifierChecks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 modifierChecks.kt\norg/jetbrains/kotlin/util/AbstractModifierChecks\n*L\n1#1,264:1\n1#2:265\n171#3:266\n*S KotlinDebug\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$1\n*L\n189#1:266\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lf7/s$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/s$a;

    invoke-direct {v0}, Lf7/s$a;-><init>()V

    sput-object v0, Lf7/s$a;->a:Lf7/s$a;

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
    .registers 4

    check-cast p1, Li5/x;

    const-string p0, "$this$$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    const-string p1, "valueParameters"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e1;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    invoke-static {p0}, Lo6/c;->a(Li5/e1;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {p0}, Li5/e1;->n0()Ly6/l0;

    move-result-object p0

    if-nez p0, :cond_28

    move p0, p1

    goto :goto_29

    :cond_28
    move p0, v0

    :goto_29
    if-ne p0, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move p1, v0

    :goto_2d
    sget-object p0, Lf7/s;->a:Lf7/s;

    if-nez p1, :cond_34

    const-string p0, "last parameter should not have a default value or be a vararg"

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return-object p0
.end method
