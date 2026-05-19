.class public final Lh6/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStandardClassIds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1271#2,2:266\n1285#2,4:268\n1271#2,2:272\n1285#2,4:274\n*S KotlinDebug\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIds\n*L\n80#1:266,2\n80#1:268,4\n84#1:272,2\n84#1:274,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh6/i;

.field public static final b:Lh6/c;

.field public static final c:Lh6/c;

.field public static final d:Lh6/c;

.field public static final e:Lh6/c;

.field public static final f:Lh6/c;

.field public static final g:Lh6/c;

.field public static final h:Lh6/c;

.field public static final i:Lh6/b;

.field public static final j:Lh6/b;

.field public static final k:Lh6/b;

.field public static final l:Lh6/b;

.field public static final m:Lh6/b;

.field public static final n:Lh6/b;

.field public static final o:Lh6/b;

.field public static final p:Lh6/b;

.field public static final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/b;",
            "Lh6/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lh6/b;

.field public static final x:Lh6/b;

.field public static final y:Lh6/b;

.field public static final z:Lh6/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    new-instance v0, Lh6/i;

    invoke-direct {v0}, Lh6/i;-><init>()V

    sput-object v0, Lh6/i;->a:Lh6/i;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh6/i;->b:Lh6/c;

    const-string v1, "reflect"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v1

    const-string v2, "BASE_KOTLIN_PACKAGE.chil…me.identifier(\"reflect\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lh6/i;->c:Lh6/c;

    const-string v2, "collections"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v2

    const-string v3, "BASE_KOTLIN_PACKAGE.chil…dentifier(\"collections\"))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lh6/i;->d:Lh6/c;

    const-string v3, "ranges"

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v3

    const-string v4, "BASE_KOTLIN_PACKAGE.chil…ame.identifier(\"ranges\"))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lh6/i;->e:Lh6/c;

    const-string v4, "jvm"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v4

    const-string v5, "BASE_KOTLIN_PACKAGE.child(Name.identifier(\"jvm\"))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "internal"

    invoke-static {v5}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    invoke-virtual {v4, v6}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v4

    const-string v6, "BASE_JVM_PACKAGE.child(N…e.identifier(\"internal\"))"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "annotation"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v4

    const-string v6, "BASE_KOTLIN_PACKAGE.chil…identifier(\"annotation\"))"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lh6/i;->f:Lh6/c;

    invoke-static {v5}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    invoke-virtual {v0, v5}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v5

    const-string v6, "BASE_KOTLIN_PACKAGE.chil…e.identifier(\"internal\"))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "ir"

    invoke-static {v6}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v6

    const-string v7, "BASE_INTERNAL_PACKAGE.child(Name.identifier(\"ir\"))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "coroutines"

    invoke-static {v6}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    invoke-virtual {v0, v6}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v6

    const-string v7, "BASE_KOTLIN_PACKAGE.chil…identifier(\"coroutines\"))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lh6/i;->g:Lh6/c;

    const-string v7, "enums"

    invoke-static {v7}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v7

    invoke-virtual {v0, v7}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v7

    const-string v8, "BASE_KOTLIN_PACKAGE.chil…Name.identifier(\"enums\"))"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v7, Lh6/i;->h:Lh6/c;

    const/4 v7, 0x7

    new-array v8, v7, [Lh6/c;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v2, v8, v0

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const/4 v3, 0x3

    aput-object v4, v8, v3

    const/4 v4, 0x4

    aput-object v1, v8, v4

    const/4 v1, 0x5

    aput-object v5, v8, v1

    const/4 v5, 0x6

    aput-object v6, v8, v5

    invoke-static {v8}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    const-string v6, "Nothing"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v6, "Unit"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v6, "Any"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v6, "Enum"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v6, "Annotation"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v6, "Array"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v6

    sput-object v6, Lh6/i;->i:Lh6/b;

    const-string v6, "Boolean"

    invoke-static {v6}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v6

    const-string v8, "Char"

    invoke-static {v8}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v8

    const-string v10, "Byte"

    invoke-static {v10}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v10

    const-string v11, "Short"

    invoke-static {v11}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v11

    const-string v12, "Int"

    invoke-static {v12}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v12

    const-string v13, "Long"

    invoke-static {v13}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v13

    const-string v14, "Float"

    invoke-static {v14}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v14

    const-string v15, "Double"

    invoke-static {v15}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v15

    invoke-static {v10}, Lh6/j;->g(Lh6/b;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->j:Lh6/b;

    invoke-static {v11}, Lh6/j;->g(Lh6/b;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->k:Lh6/b;

    invoke-static {v12}, Lh6/j;->g(Lh6/b;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->l:Lh6/b;

    invoke-static {v13}, Lh6/j;->g(Lh6/b;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->m:Lh6/b;

    const-string v16, "CharSequence"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v16, "String"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->n:Lh6/b;

    const-string v16, "Throwable"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v16, "Cloneable"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v16, "KProperty"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KMutableProperty"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KProperty0"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KMutableProperty0"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KProperty1"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KMutableProperty1"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KProperty2"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KMutableProperty2"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "KFunction"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->o:Lh6/b;

    const-string v16, "KClass"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    move-result-object v16

    sput-object v16, Lh6/i;->p:Lh6/b;

    const-string v16, "KCallable"

    invoke-static/range {v16 .. v16}, Lh6/j;->f(Ljava/lang/String;)Lh6/b;

    const-string v16, "Comparable"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v16, "Number"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v16, "Function"

    invoke-static/range {v16 .. v16}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const/16 v7, 0x8

    new-array v7, v7, [Lh6/b;

    aput-object v6, v7, v9

    aput-object v8, v7, v0

    aput-object v10, v7, v2

    aput-object v11, v7, v3

    aput-object v12, v7, v4

    aput-object v13, v7, v1

    aput-object v14, v7, v5

    const/4 v1, 0x7

    aput-object v15, v7, v1

    invoke-static {v7}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lh6/i;->q:Ljava/util/Set;

    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Li4/j0;->b(I)I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_1c3

    move v7, v8

    :cond_1c3
    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ca
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v10, "id.shortClassName"

    if-eqz v7, :cond_1e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lh6/b;

    invoke-virtual {v11}, Lh6/b;->j()Lh6/f;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lh6/j;->d(Lh6/f;)Lh6/b;

    move-result-object v10

    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ca

    :cond_1e8
    sput-object v5, Lh6/i;->r:Ljava/util/Map;

    invoke-static {v5}, Lh6/j;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lh6/i;->s:Ljava/util/Map;

    new-array v1, v4, [Lh6/b;

    sget-object v4, Lh6/i;->j:Lh6/b;

    aput-object v4, v1, v9

    sget-object v4, Lh6/i;->k:Lh6/b;

    aput-object v4, v1, v0

    sget-object v0, Lh6/i;->l:Lh6/b;

    aput-object v0, v1, v2

    sget-object v0, Lh6/i;->m:Lh6/b;

    aput-object v0, v1, v3

    invoke-static {v1}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lh6/i;->t:Ljava/util/Set;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Li4/j0;->b(I)I

    move-result v2

    if-ge v2, v8, :cond_215

    goto :goto_216

    :cond_215
    move v8, v2

    :goto_216
    invoke-direct {v1, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_239

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lh6/b;

    invoke-virtual {v4}, Lh6/b;->j()Lh6/f;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lh6/j;->d(Lh6/f;)Lh6/b;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21d

    :cond_239
    sput-object v1, Lh6/i;->u:Ljava/util/Map;

    invoke-static {v1}, Lh6/j;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lh6/i;->v:Ljava/util/Map;

    sget-object v0, Lh6/i;->q:Ljava/util/Set;

    sget-object v1, Lh6/i;->t:Ljava/util/Set;

    invoke-static {v0, v1}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lh6/i;->n:Lh6/b;

    invoke-static {v0, v1}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    sget-object v0, Lh6/i;->g:Lh6/c;

    const-string v1, "Continuation"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_30d

    invoke-static {v1}, Lh6/c;->k(Lh6/f;)Lh6/c;

    const-string v0, "Iterator"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "Iterable"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "Collection"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "List"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "ListIterator"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "Set"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v0, "Map"

    invoke-static {v0}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    move-result-object v0

    const-string v1, "MutableIterator"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v1, "CharIterator"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v1, "MutableIterable"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v1, "MutableCollection"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v1, "MutableList"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    move-result-object v1

    sput-object v1, Lh6/i;->w:Lh6/b;

    const-string v1, "MutableListIterator"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    const-string v1, "MutableSet"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    move-result-object v1

    sput-object v1, Lh6/i;->x:Lh6/b;

    const-string v1, "MutableMap"

    invoke-static {v1}, Lh6/j;->b(Ljava/lang/String;)Lh6/b;

    move-result-object v1

    sput-object v1, Lh6/i;->y:Lh6/b;

    const-string v4, "Entry"

    invoke-static {v4}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object v0

    const-string v4, "Map.createNestedClassId(Name.identifier(\"Entry\"))"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MutableEntry"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object v0

    const-string v1, "MutableMap.createNestedC…entifier(\"MutableEntry\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Result"

    invoke-static {v0}, Lh6/j;->a(Ljava/lang/String;)Lh6/b;

    const-string v0, "IntRange"

    invoke-static {v0}, Lh6/j;->e(Ljava/lang/String;)Lh6/b;

    const-string v0, "LongRange"

    invoke-static {v0}, Lh6/j;->e(Ljava/lang/String;)Lh6/b;

    const-string v0, "CharRange"

    invoke-static {v0}, Lh6/j;->e(Ljava/lang/String;)Lh6/b;

    sget-object v0, Lh6/i;->f:Lh6/c;

    const-string v1, "AnnotationRetention"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    if-eqz v0, :cond_309

    invoke-static {v1}, Lh6/c;->k(Lh6/f;)Lh6/c;

    const-string v0, "AnnotationTarget"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    invoke-static {v0}, Lh6/c;->k(Lh6/f;)Lh6/c;

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->h:Lh6/c;

    const-string v2, "EnumEntries"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    sput-object v0, Lh6/i;->z:Lh6/b;

    return-void

    :cond_309
    invoke-static {v3}, Lh6/b;->a(I)V

    throw v2

    :cond_30d
    invoke-static {v3}, Lh6/b;->a(I)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
