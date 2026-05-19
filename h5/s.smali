.class public final Lh5/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmBuiltInsSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n13#2:188\n13#2:194\n13#2:200\n13#2:201\n13#2:202\n13#2:203\n13#2:204\n1446#3,5:189\n1446#3,5:195\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n*L\n60#1:188\n160#1:194\n24#1:200\n68#1:201\n119#1:202\n138#1:203\n155#1:204\n61#1:189,5\n164#1:195,5\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh5/s;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 58

    new-instance v0, Lh5/s;

    invoke-direct {v0}, Lh5/s;-><init>()V

    sput-object v0, Lh5/s;->a:Lh5/s;

    sget-object v1, La6/a0;->a:La6/a0;

    const-string v2, "toArray()[Ljava/lang/Object;"

    const-string v3, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Collection"

    invoke-virtual {v1, v3, v2}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v2, v4}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lh5/s;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v2, v0, [Lp6/d;

    sget-object v4, Lp6/d;->e:Lp6/d;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Lp6/d;->f:Lp6/d;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-static {v2}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "it.wrapperFqName.shortName().asString()"

    if-eqz v7, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp6/d;

    invoke-virtual {v7}, Lp6/d;->f()Lh6/c;

    move-result-object v9

    invoke-virtual {v9}, Lh6/c;->g()Lh6/f;

    move-result-object v9

    invoke-virtual {v9}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lp6/d;->b:Ljava/lang/String;

    if-eqz v11, :cond_cf

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Value()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    const-string v7, "name"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "signatures"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java/lang/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "internalName"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v10, v8

    move v11, v5

    :goto_ac
    if-ge v11, v10, :cond_ca

    aget-object v12, v8, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_ac

    :cond_ca
    invoke-static {v4, v9}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_3c

    :cond_cf
    const/16 v0, 0xb

    invoke-static {v0}, Lp6/d;->a(I)V

    const/4 v0, 0x0

    throw v0

    :cond_d6
    const-string v2, "sort(Ljava/util/Comparator;)V"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "List"

    invoke-virtual {v1, v9, v7}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v10, "codePointAt(I)I"

    const-string v11, "codePointBefore(I)I"

    const-string v12, "codePointCount(II)I"

    const-string v13, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v14, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v15, "contains(Ljava/lang/CharSequence;)Z"

    const-string v16, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v17, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v18, "endsWith(Ljava/lang/String;)Z"

    const-string v19, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v20, "getBytes()[B"

    const-string v21, "getBytes(II[BI)V"

    const-string v22, "getBytes(Ljava/lang/String;)[B"

    const-string v23, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v24, "getChars(II[CI)V"

    const-string v25, "indexOf(I)I"

    const-string v26, "indexOf(II)I"

    const-string v27, "indexOf(Ljava/lang/String;)I"

    const-string v28, "indexOf(Ljava/lang/String;I)I"

    const-string v29, "intern()Ljava/lang/String;"

    const-string v30, "isEmpty()Z"

    const-string v31, "lastIndexOf(I)I"

    const-string v32, "lastIndexOf(II)I"

    const-string v33, "lastIndexOf(Ljava/lang/String;)I"

    const-string v34, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v35, "matches(Ljava/lang/String;)Z"

    const-string v36, "offsetByCodePoints(II)I"

    const-string v37, "regionMatches(ILjava/lang/String;II)Z"

    const-string v38, "regionMatches(ZILjava/lang/String;II)Z"

    const-string v39, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v40, "replace(CC)Ljava/lang/String;"

    const-string v41, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v42, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string v43, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string v44, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string v45, "startsWith(Ljava/lang/String;I)Z"

    const-string v46, "startsWith(Ljava/lang/String;)Z"

    const-string v47, "substring(II)Ljava/lang/String;"

    const-string v48, "substring(I)Ljava/lang/String;"

    const-string v49, "toCharArray()[C"

    const-string v50, "toLowerCase()Ljava/lang/String;"

    const-string v51, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v52, "toUpperCase()Ljava/lang/String;"

    const-string v53, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v54, "trim()Ljava/lang/String;"

    const-string v55, "isBlank()Z"

    const-string v56, "lines()Ljava/util/stream/Stream;"

    const-string v57, "repeat(I)Ljava/lang/String;"

    filled-new-array/range {v10 .. v57}, [Ljava/lang/String;

    move-result-object v7

    const-string v10, "String"

    invoke-virtual {v1, v10, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "isInfinite()Z"

    const-string v11, "isNaN()Z"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "Double"

    invoke-virtual {v1, v13, v12}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-static {v4, v12}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const-string v11, "Float"

    invoke-virtual {v1, v11, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "getDeclaringClass()Ljava/lang/Class;"

    const-string v12, "finalize()V"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "Enum"

    invoke-virtual {v1, v12, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "isEmpty()Z"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "CharSequence"

    invoke-virtual {v1, v12, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v4, v1}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lh5/s;->c:Ljava/util/Set;

    sget-object v1, La6/a0;->a:La6/a0;

    const-string v4, "codePoints()Ljava/util/stream/IntStream;"

    const-string v7, "chars()Ljava/util/stream/IntStream;"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "forEachRemaining(Ljava/util/function/Consumer;)V"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "Iterator"

    invoke-virtual {v1, v12, v7}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "forEach(Ljava/util/function/Consumer;)V"

    const-string v12, "spliterator()Ljava/util/Spliterator;"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v13, "Iterable"

    invoke-virtual {v1, v13, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v13, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v14, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v15, "getLocalizedMessage()Ljava/lang/String;"

    const-string v16, "printStackTrace()V"

    const-string v17, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string v18, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v19, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v20, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const-string v21, "getSuppressed()[Ljava/lang/Throwable;"

    const-string v22, "addSuppressed(Ljava/lang/Throwable;)V"

    filled-new-array/range {v13 .. v22}, [Ljava/lang/String;

    move-result-object v7

    const-string v13, "Throwable"

    invoke-virtual {v1, v13, v7}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "parallelStream()Ljava/util/stream/Stream;"

    const-string v14, "stream()Ljava/util/stream/Stream;"

    const-string v15, "removeIf(Ljava/util/function/Predicate;)Z"

    filled-new-array {v12, v7, v14, v15}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-static {v4, v12}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string v16, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v17, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string v18, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v19, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v20, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v21, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v22, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v23, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v24, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v25, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "Map"

    invoke-virtual {v1, v14, v12}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-static {v4, v12}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lh5/s;->d:Ljava/util/Set;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v3, v2}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v15, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v16, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v18, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v19, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v20, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v21, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v22, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v23, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    filled-new-array/range {v15 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, La6/a0;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lh5/s;->e:Ljava/util/Set;

    sget-object v2, Lh5/s;->a:Lh5/s;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    new-array v2, v2, [Lp6/d;

    sget-object v3, Lp6/d;->e:Lp6/d;

    aput-object v3, v2, v5

    sget-object v3, Lp6/d;->g:Lp6/d;

    aput-object v3, v2, v6

    sget-object v4, Lp6/d;->l:Lp6/d;

    aput-object v4, v2, v0

    sget-object v0, Lp6/d;->j:Lp6/d;

    const/4 v4, 0x3

    aput-object v0, v2, v4

    const/4 v0, 0x4

    aput-object v3, v2, v0

    sget-object v0, Lp6/d;->i:Lp6/d;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    sget-object v0, Lp6/d;->k:Lp6/d;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    sget-object v0, Lp6/d;->h:Lp6/d;

    const/4 v3, 0x7

    aput-object v0, v2, v3

    invoke-static {v2}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp6/d;

    invoke-virtual {v3}, Lp6/d;->f()Lh6/c;

    move-result-object v3

    invoke-virtual {v3}, Lh6/c;->g()Lh6/f;

    move-result-object v3

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Ljava/lang/String;"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, La6/a0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_29b

    :cond_2cf
    const-string v0, "D"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La6/a0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v14, "[C"

    const-string v15, "[CII"

    const-string v16, "[III"

    const-string v17, "[BIILjava/lang/String;"

    const-string v18, "[BIILjava/nio/charset/Charset;"

    const-string v19, "[BLjava/lang/String;"

    const-string v20, "[BLjava/nio/charset/Charset;"

    const-string v21, "[BII"

    const-string v22, "[B"

    const-string v23, "Ljava/lang/StringBuffer;"

    const-string v24, "Ljava/lang/StringBuilder;"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/a0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lh5/s;->f:Ljava/util/Set;

    sget-object v0, La6/a0;->a:La6/a0;

    const-string v1, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La6/a0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, La6/a0;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lh5/s;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh6/d;)Z
    .registers 4

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf5/j$a;->h:Lh6/d;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_23

    const-string p0, "arrayFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf5/j$a;->d0:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    move p0, v1

    goto :goto_21

    :cond_20
    move p0, v0

    :goto_21
    if-eqz p0, :cond_24

    :cond_23
    move v0, v1

    :cond_24
    return v0
.end method
