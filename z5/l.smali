.class public final Lz5/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\npredefinedEnhancementInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/PredefinedEnhancementInfoKt\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/SignatureEnhancementBuilder\n*L\n1#1,254:1\n201#1:256\n13#2:255\n207#3:257\n207#3:258\n207#3:259\n207#3:260\n207#3:261\n207#3:262\n207#3:263\n207#3:264\n207#3:265\n207#3:266\n207#3:267\n207#3:268\n207#3:269\n207#3:270\n*S KotlinDebug\n*F\n+ 1 predefinedEnhancementInfo.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/PredefinedEnhancementInfoKt\n*L\n52#1:256\n41#1:255\n53#1:257\n58#1:258\n63#1:259\n75#1:260\n80#1:261\n128#1:262\n148#1:263\n154#1:264\n160#1:265\n167#1:266\n172#1:267\n178#1:268\n184#1:269\n191#1:270\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lz5/g;

.field public static final b:Lz5/g;

.field public static final c:Lz5/g;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lz5/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v6, Lz5/g;

    sget-object v1, Lz5/j;->b:Lz5/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZI)V

    sput-object v6, Lz5/l;->a:Lz5/g;

    new-instance v0, Lz5/g;

    sget-object v2, Lz5/j;->c:Lz5/j;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    move-object v7, v0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZI)V

    sput-object v0, Lz5/l;->b:Lz5/g;

    new-instance v0, Lz5/g;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lz5/g;-><init>(Lz5/j;Lz5/h;ZZI)V

    sput-object v0, Lz5/l;->c:Lz5/g;

    sget-object v0, La6/a0;->a:La6/a0;

    const-string v1, "Object"

    invoke-virtual {v0, v1}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Predicate"

    invoke-virtual {v0, v2}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Function"

    invoke-virtual {v0, v3}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Consumer"

    invoke-virtual {v0, v4}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiFunction"

    invoke-virtual {v0, v5}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiConsumer"

    invoke-virtual {v0, v6}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnaryOperator"

    invoke-virtual {v0, v7}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stream/Stream"

    invoke-virtual {v0, v8}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Optional"

    invoke-virtual {v0, v9}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lz5/s;

    invoke-direct {v10}, Lz5/s;-><init>()V

    const-string v11, "Iterator"

    invoke-virtual {v0, v11}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lz5/s$a;

    invoke-direct {v12, v10, v11}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v11, Lz5/l$a;

    invoke-direct {v11, v4}, Lz5/l$a;-><init>(Ljava/lang/String;)V

    const-string v13, "forEachRemaining"

    invoke-virtual {v12, v13, v11}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v11, "Iterable"

    invoke-virtual {v0, v11}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lz5/s$a;

    invoke-direct {v12, v10, v11}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v11, Lz5/l$g;

    invoke-direct {v11, v0}, Lz5/l$g;-><init>(La6/a0;)V

    const-string v13, "spliterator"

    invoke-virtual {v12, v13, v11}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v11, "Collection"

    invoke-virtual {v0, v11}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lz5/s$a;

    invoke-direct {v12, v10, v11}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v11, Lz5/l$h;

    invoke-direct {v11, v2}, Lz5/l$h;-><init>(Ljava/lang/String;)V

    const-string v13, "removeIf"

    invoke-virtual {v12, v13, v11}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v11, Lz5/l$i;

    invoke-direct {v11, v8}, Lz5/l$i;-><init>(Ljava/lang/String;)V

    const-string v13, "stream"

    invoke-virtual {v12, v13, v11}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v11, Lz5/l$j;

    invoke-direct {v11, v8}, Lz5/l$j;-><init>(Ljava/lang/String;)V

    const-string v8, "parallelStream"

    invoke-virtual {v12, v8, v11}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v8, "List"

    invoke-virtual {v0, v8}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lz5/s$a;

    invoke-direct {v11, v10, v8}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v8, Lz5/l$k;

    invoke-direct {v8, v7}, Lz5/l$k;-><init>(Ljava/lang/String;)V

    const-string v7, "replaceAll"

    invoke-virtual {v11, v7, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v8, "Map"

    invoke-virtual {v0, v8}, La6/a0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lz5/s$a;

    invoke-direct {v11, v10, v8}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v8, Lz5/l$l;

    invoke-direct {v8, v6}, Lz5/l$l;-><init>(Ljava/lang/String;)V

    const-string v12, "forEach"

    invoke-virtual {v11, v12, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$m;

    invoke-direct {v8, v1}, Lz5/l$m;-><init>(Ljava/lang/String;)V

    const-string v12, "putIfAbsent"

    invoke-virtual {v11, v12, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$n;

    invoke-direct {v8, v1}, Lz5/l$n;-><init>(Ljava/lang/String;)V

    const-string v12, "replace"

    invoke-virtual {v11, v12, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$o;

    invoke-direct {v8, v1}, Lz5/l$o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$p;

    invoke-direct {v8, v5}, Lz5/l$p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/l$q;

    invoke-direct {v7, v1, v5}, Lz5/l$q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "compute"

    invoke-virtual {v11, v8, v7}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/l$r;

    invoke-direct {v7, v1, v3}, Lz5/l$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "computeIfAbsent"

    invoke-virtual {v11, v8, v7}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/l$s;

    invoke-direct {v7, v1, v5}, Lz5/l$s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "computeIfPresent"

    invoke-virtual {v11, v8, v7}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/l$t;

    invoke-direct {v7, v1, v5}, Lz5/l$t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "merge"

    invoke-virtual {v11, v8, v7}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/s$a;

    invoke-direct {v7, v10, v9}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v8, Lz5/l$u;

    invoke-direct {v8, v9}, Lz5/l$u;-><init>(Ljava/lang/String;)V

    const-string v11, "empty"

    invoke-virtual {v7, v11, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$v;

    invoke-direct {v8, v1, v9}, Lz5/l$v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "of"

    invoke-virtual {v7, v11, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$w;

    invoke-direct {v8, v1, v9}, Lz5/l$w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ofNullable"

    invoke-virtual {v7, v9, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$x;

    invoke-direct {v8, v1}, Lz5/l$x;-><init>(Ljava/lang/String;)V

    const-string v9, "get"

    invoke-virtual {v7, v9, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lz5/l$y;

    invoke-direct {v8, v4}, Lz5/l$y;-><init>(Ljava/lang/String;)V

    const-string v11, "ifPresent"

    invoke-virtual {v7, v11, v8}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v7, "ref/Reference"

    invoke-virtual {v0, v7}, La6/a0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lz5/s$a;

    invoke-direct {v8, v10, v7}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v7, Lz5/l$z;

    invoke-direct {v7, v1}, Lz5/l$z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v7}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v7, Lz5/s$a;

    invoke-direct {v7, v10, v2}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v2, Lz5/l$a0;

    invoke-direct {v2, v1}, Lz5/l$a0;-><init>(Ljava/lang/String;)V

    const-string v8, "test"

    invoke-virtual {v7, v8, v2}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "BiPredicate"

    invoke-virtual {v0, v2}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lz5/s$a;

    invoke-direct {v7, v10, v2}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v2, Lz5/l$b0;

    invoke-direct {v2, v1}, Lz5/l$b0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v2}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lz5/s$a;

    invoke-direct {v2, v10, v4}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v4, Lz5/l$b;

    invoke-direct {v4, v1}, Lz5/l$b;-><init>(Ljava/lang/String;)V

    const-string v7, "accept"

    invoke-virtual {v2, v7, v4}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lz5/s$a;

    invoke-direct {v2, v10, v6}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v4, Lz5/l$c;

    invoke-direct {v4, v1}, Lz5/l$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v4}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lz5/s$a;

    invoke-direct {v2, v10, v3}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v3, Lz5/l$d;

    invoke-direct {v3, v1}, Lz5/l$d;-><init>(Ljava/lang/String;)V

    const-string v4, "apply"

    invoke-virtual {v2, v4, v3}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lz5/s$a;

    invoke-direct {v2, v10, v5}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v3, Lz5/l$e;

    invoke-direct {v3, v1}, Lz5/l$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Supplier"

    invoke-virtual {v0, v2}, La6/a0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lz5/s$a;

    invoke-direct {v2, v10, v0}, Lz5/s$a;-><init>(Lz5/s;Ljava/lang/String;)V

    new-instance v0, Lz5/l$f;

    invoke-direct {v0, v1}, Lz5/l$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v0}, Lz5/s$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v10, Lz5/s;->a:Ljava/util/Map;

    sput-object v0, Lz5/l;->d:Ljava/util/Map;

    return-void
.end method
