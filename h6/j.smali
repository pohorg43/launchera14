.class public final Lh6/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStandardClassIds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIdsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1179#2,2:266\n1253#2,4:268\n*S KotlinDebug\n*F\n+ 1 StandardClassIds.kt\norg/jetbrains/kotlin/name/StandardClassIdsKt\n*L\n264#1:266,2\n264#1:268,4\n*E\n"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "java.lang"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    const-string v1, "annotation"

    invoke-static {v1}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v0

    const-string v1, "JAVA_LANG_PACKAGE.child(…identifier(\"annotation\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lh6/b;
    .registers 3

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->b:Lh6/c;

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lh6/b;
    .registers 3

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->d:Lh6/c;

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public static final c(Ljava/util/Map;)Ljava/util/Map;
    .registers 4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Li4/j0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_13

    move v0, v1

    :cond_13
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_34
    return-object v1
.end method

.method public static final d(Lh6/f;)Lh6/b;
    .registers 5

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lh6/i;->i:Lh6/b;

    invoke-virtual {v1}, Lh6/b;->h()Lh6/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh6/f;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lh6/b;->j()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public static final e(Ljava/lang/String;)Lh6/b;
    .registers 3

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->e:Lh6/c;

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public static final f(Ljava/lang/String;)Lh6/b;
    .registers 3

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->c:Lh6/c;

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public static final g(Lh6/b;)Lh6/b;
    .registers 4

    new-instance v0, Lh6/b;

    sget-object v1, Lh6/i;->a:Lh6/i;

    sget-object v1, Lh6/i;->b:Lh6/c;

    const/16 v2, 0x55

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lh6/b;->j()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method
