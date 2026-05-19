.class public final Lg5/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk5/b;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuiltInFictitiousFunctionClassFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInFictitiousFunctionClassFactory.kt\norg/jetbrains/kotlin/builtins/functions/BuiltInFictitiousFunctionClassFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n800#2,11:69\n800#2,11:80\n*S KotlinDebug\n*F\n+ 1 BuiltInFictitiousFunctionClassFactory.kt\norg/jetbrains/kotlin/builtins/functions/BuiltInFictitiousFunctionClassFactory\n*L\n53#1:69,11\n57#1:80,11\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lx6/m;

.field public final b:Li5/e0;


# direct methods
.method public constructor <init>(Lx6/m;Li5/e0;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/a;->a:Lx6/m;

    iput-object p2, p0, Lg5/a;->b:Li5/e0;

    return-void
.end method


# virtual methods
.method public a(Lh6/b;)Li5/e;
    .registers 8

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lh6/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_97

    invoke-virtual {p1}, Lh6/b;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_97

    :cond_12
    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object v0

    invoke-virtual {v0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Function"

    invoke-static {v0, v4, v2, v3}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_2a

    return-object v1

    :cond_2a
    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lg5/c;->c:Lg5/c$a;

    invoke-virtual {v2, v0, p1}, Lg5/c$a;->a(Ljava/lang/String;Lh6/c;)Lg5/c$a$a;

    move-result-object v0

    if-nez v0, :cond_3c

    return-object v1

    :cond_3c
    iget-object v1, v0, Lg5/c$a$a;->a:Lg5/c;

    iget v0, v0, Lg5/c$a$a;->b:I

    iget-object v2, p0, Lg5/a;->b:Li5/e0;

    invoke-interface {v2, p1}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object p1

    invoke-interface {p1}, Li5/l0;->e0()Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lf5/b;

    if-eqz v4, :cond_53

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6e
    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lf5/e;

    if-eqz v5, :cond_6e

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_80
    invoke-static {p1}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/e;

    if-eqz p1, :cond_89

    goto :goto_8f

    :cond_89
    invoke-static {v2}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/b;

    :goto_8f
    new-instance v2, Lg5/b;

    iget-object p0, p0, Lg5/a;->a:Lx6/m;

    invoke-direct {v2, p0, p1, v1, v0}, Lg5/b;-><init>(Lx6/m;Li5/h0;Lg5/c;I)V

    return-object v2

    :cond_97
    :goto_97
    return-object v1
.end method

.method public b(Lh6/c;Lh6/f;)Z
    .registers 5

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "name.asString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Function"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-nez p2, :cond_35

    const-string p2, "KFunction"

    invoke-static {p0, p2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-nez p2, :cond_35

    const-string p2, "SuspendFunction"

    invoke-static {p0, p2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-nez p2, :cond_35

    const-string p2, "KSuspendFunction"

    invoke-static {p0, p2, v0, v1}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_3e

    :cond_35
    sget-object p2, Lg5/c;->c:Lg5/c$a;

    invoke-virtual {p2, p0, p1}, Lg5/c$a;->a(Ljava/lang/String;Lh6/c;)Lg5/c$a$a;

    move-result-object p0

    if-eqz p0, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    return v0
.end method

.method public c(Lh6/c;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/a0;->a:Li4/a0;

    return-object p0
.end method
