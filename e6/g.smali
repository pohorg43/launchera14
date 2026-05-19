.class public final Le6/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypeTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeTable.kt\norg/jetbrains/kotlin/metadata/deserialization/TypeTable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1559#2:37\n1590#2,4:38\n*S KotlinDebug\n*F\n+ 1 TypeTable.kt\norg/jetbrains/kotlin/metadata/deserialization/TypeTable\n*L\n26#1:37\n26#1:38,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc6/t;)V
    .registers 8

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc6/t;->c:Ljava/util/List;

    iget v1, p1, Lc6/t;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    if-eqz v1, :cond_69

    iget p1, p1, Lc6/t;->d:I

    const-string v1, "typeTable.typeList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_63

    check-cast v4, Lc6/q;

    if-lt v3, p1, :cond_5e

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v3

    iget v4, v3, Lc6/q$c;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lc6/q$c;->d:I

    iput-boolean v2, v3, Lc6/q$c;->f:Z

    invoke-virtual {v3}, Lc6/q$c;->g()Lc6/q;

    move-result-object v4

    invoke-virtual {v4}, Lc6/q;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_5e

    :cond_58
    new-instance p0, Li6/v;

    invoke-direct {p0}, Li6/v;-><init>()V

    throw p0

    :cond_5e
    :goto_5e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_2c

    :cond_63
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_68
    move-object v0, v1

    :cond_69
    const-string p1, "run {\n        val origin… else originalTypes\n    }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le6/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lc6/q;
    .registers 2

    iget-object p0, p0, Le6/g;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6/q;

    return-object p0
.end method
