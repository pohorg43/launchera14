.class public final Lf7/s$b;
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
        "SMAP\nmodifierChecks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 modifierChecks.kt\norg/jetbrains/kotlin/util/AbstractModifierChecks\n*L\n1#1,264:1\n1747#2,3:265\n171#3:268\n*S KotlinDebug\n*F\n+ 1 modifierChecks.kt\norg/jetbrains/kotlin/util/OperatorChecks$checks$2\n*L\n203#1:265,3\n203#1:268\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lf7/s$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/s$b;

    invoke-direct {v0}, Lf7/s$b;-><init>()V

    sput-object v0, Lf7/s$b;->a:Lf7/s$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final a(Li5/l;)Z
    .registers 2

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_1b

    check-cast p0, Li5/e;

    sget-object v0, Lf5/g;->e:Lh6/f;

    if-eqz p0, :cond_14

    sget-object v0, Lf5/j$a;->b:Lh6/d;

    invoke-static {p0, v0}, Lf5/g;->c(Li5/h;Lh6/d;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_14
    const/16 p0, 0x6c

    invoke-static {p0}, Lf5/g;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    check-cast p1, Li5/x;

    const-string p0, "$this$$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf7/s;->a:Lf7/s;

    invoke-interface {p1}, Li5/x;->b()Li5/l;

    move-result-object p0

    const-string v0, "containingDeclaration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lf7/s$b;->a(Li5/l;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_e0

    invoke-interface {p1}, Li5/x;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v4, "overriddenDescriptors"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_4c

    :cond_2b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/x;

    invoke-interface {v4}, Li5/x;->b()Li5/l;

    move-result-object v4

    const-string v5, "it.containingDeclaration"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lf7/s$b;->a(Li5/l;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move p0, v2

    goto :goto_4d

    :cond_4c
    :goto_4c
    move p0, v3

    :goto_4d
    if-nez p0, :cond_e0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/x;->b()Li5/l;

    move-result-object v4

    instance-of v5, v4, Li5/e;

    if-eqz v5, :cond_5f

    check-cast v4, Li5/e;

    goto :goto_60

    :cond_5f
    move-object v4, v1

    :goto_60
    if-eqz v4, :cond_db

    invoke-static {v4}, Lk6/k;->e(Li5/l;)Z

    move-result v5

    if-eqz v5, :cond_69

    goto :goto_6a

    :cond_69
    move-object v4, v1

    :goto_6a
    if-eqz v4, :cond_db

    invoke-interface {v4}, Li5/e;->m()Ly6/s0;

    move-result-object v4

    if-eqz v4, :cond_db

    invoke-static {v4}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object v4

    if-nez v4, :cond_79

    goto :goto_db

    :cond_79
    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v5

    if-nez v5, :cond_80

    goto :goto_db

    :cond_80
    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    sget-object v7, Lf7/t;->d:Lh6/f;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lf5/g;->e:Lh6/f;

    sget-object v6, Lf5/j$a;->i:Lh6/d;

    invoke-static {v5, v6}, Lf5/g;->D(Ly6/l0;Lh6/d;)Z

    move-result v6

    if-nez v6, :cond_a2

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lf5/g;->H(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_db

    :cond_a2
    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_db

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e1;

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    const-string v5, "valueParameters[0].type"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_db

    invoke-interface {p1}, Li5/a;->q0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_db

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p0

    if-nez p0, :cond_db

    move p0, v2

    goto :goto_dc

    :cond_db
    :goto_db
    move p0, v3

    :goto_dc
    if-eqz p0, :cond_df

    goto :goto_e0

    :cond_df
    move v2, v3

    :cond_e0
    :goto_e0
    if-nez v2, :cond_135

    const-string p0, "must override \'\'equals()\'\' in Any"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Li5/x;->b()Li5/l;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk6/k;->e(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_12c

    sget-object v0, Lj6/c;->b:Lj6/c;

    invoke-interface {p1}, Li5/x;->b()Li5/l;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li5/e;

    invoke-interface {p1}, Li5/e;->m()Ly6/s0;

    move-result-object p1

    const-string v1, "containingDeclaration as…ssDescriptor).defaultType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ld7/c;->n(Ly6/l0;)Ly6/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " or define \'\'equals(other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Boolean\'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_135
    return-object v1
.end method
