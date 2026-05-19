.class public final Lc5/o0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nmoduleByClassLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 moduleByClassLoader.kt\nkotlin/reflect/jvm/internal/ModuleByClassLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lc5/x0;",
            "Ljava/lang/ref/WeakReference<",
            "Ln5/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc5/o0;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ln5/i;
    .registers 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ln5/i;"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lo5/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lc5/x0;

    invoke-direct {v1, v0}, Lc5/x0;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, Lc5/o0;->a:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln5/i;

    if-eqz v4, :cond_26

    return-object v4

    :cond_26
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2b
    const-string v2, "classLoader"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ln5/f;

    invoke-direct {v2, v0}, Ln5/f;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v13, Ln5/f;

    const-class v3, Lh4/z;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "Unit::class.java.classLoader"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v3}, Ln5/f;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v5, Ln5/d;

    invoke-direct {v5, v0}, Ln5/d;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime module for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Ln5/h;->b:Ln5/h;

    sget-object v6, Ln5/j;->a:Ln5/j;

    const-string v4, "kotlinClassFinder"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "jvmBuiltInsKotlinClassFinder"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "javaClassFinder"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "moduleName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "errorReporter"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "javaSourceElementFactory"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lx6/e;

    const-string v7, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v11, v7}, Lx6/e;-><init>(Ljava/lang/String;)V

    new-instance v10, Lh5/h;

    sget-object v7, Lh5/h$a;->a:Lh5/h$a;

    invoke-direct {v10, v11, v7}, Lh5/h;-><init>(Lx6/m;Lh5/h$a;)V

    new-instance v7, Ll5/a0;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v15

    const-string v0, "special(\"<$moduleName>\")"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x38

    move-object v14, v7

    move-object/from16 v16, v11

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v20}, Ll5/a0;-><init>(Lh6/f;Lx6/m;Lf5/g;Ljava/util/Map;Lh6/f;I)V

    iget-object v0, v11, Lx6/e;->a:Lx6/k;

    invoke-interface {v0}, Lx6/k;->lock()V

    const/4 v15, 0x0

    :try_start_c0
    iget-object v0, v10, Lf5/g;->a:Ll5/a0;

    if-nez v0, :cond_317

    iput-object v7, v10, Lf5/g;->a:Ll5/a0;
    :try_end_c6
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_346

    iget-object v0, v11, Lx6/e;->a:Lx6/k;

    invoke-interface {v0}, Lx6/k;->unlock()V

    const-string v0, "moduleDescriptor"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh5/j;

    const/4 v14, 0x1

    invoke-direct {v0, v7, v14}, Lh5/j;-><init>(Li5/e0;Z)V

    const-string v14, "computation"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v10, Lh5/h;->f:Lkotlin/jvm/functions/Function0;

    new-instance v0, La6/j;

    move-object v14, v7

    move-object v7, v0

    invoke-direct {v0}, La6/j;-><init>()V

    move-object/from16 v29, v1

    new-instance v1, Lu5/j;

    move-object/from16 v30, v7

    move-object v7, v14

    move-object v14, v1

    invoke-direct {v1}, Lu5/j;-><init>()V

    move-object/from16 p0, v14

    new-instance v14, Li5/g0;

    invoke-direct {v14, v11, v7}, Li5/g0;-><init>(Lx6/m;Li5/e0;)V

    move-object/from16 v18, v4

    sget-object v4, La6/y$a;->a:La6/y$a;

    move-object v15, v4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "module"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v15

    const-string v15, "storageManager"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v32, v15

    const-string v15, "notFoundClasses"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v33, v15

    const-string v15, "reflectKotlinClassFinder"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v34, v15

    const-string v15, "deserializedDescriptorResolver"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "singleModuleClassResolver"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "packagePartProvider"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lu5/c;

    move-object v8, v3

    move-object v3, v4

    move-object/from16 v35, v4

    sget-object v4, Ls5/j;->a:Ls5/j;

    move-object/from16 v36, v1

    move-object v1, v8

    move-object v8, v4

    move-object/from16 v37, v6

    const-string v6, "DO_NOTHING"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ls5/g;->a:Ls5/g;

    move-object v4, v10

    move-object v10, v6

    move-object/from16 v38, v0

    const-string v0, "EMPTY"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Ls5/f$a;->a:Ls5/f$a;

    move-object/from16 v39, v1

    move-object v1, v11

    move-object/from16 v11, v16

    move-object/from16 v40, v4

    new-instance v4, Lq6/b;

    move-object/from16 v41, v0

    move-object v0, v12

    move-object v12, v4

    move-object/from16 v42, v0

    sget-object v0, Li4/y;->a:Li4/y;

    invoke-direct {v4, v1, v0}, Lq6/b;-><init>(Lx6/m;Ljava/lang/Iterable;)V

    sget-object v16, Li5/y0$a;->a:Li5/y0$a;

    sget-object v43, Lq5/c$a;->a:Lq5/c$a;

    move-object/from16 v17, v43

    new-instance v4, Lf5/i;

    move-object/from16 v19, v4

    invoke-direct {v4, v7, v14}, Lf5/i;-><init>(Li5/e0;Li5/g0;)V

    new-instance v4, Lr5/e;

    move-object/from16 v20, v4

    sget-object v21, Lr5/a0;->d:Lr5/a0$b;

    move-object/from16 v44, v6

    sget-object v6, Lr5/a0;->e:Lr5/a0;

    move-object/from16 v25, v6

    invoke-direct {v4, v6}, Lr5/e;-><init>(Lr5/a0;)V

    new-instance v4, Lz5/n;

    move-object/from16 v21, v4

    new-instance v6, Lz5/f;

    move-object/from16 v45, v9

    sget-object v9, Lu5/d$a;->a:Lu5/d$a;

    move-object/from16 v23, v9

    invoke-direct {v6, v9}, Lz5/f;-><init>(Lu5/d;)V

    invoke-direct {v4, v6}, Lz5/n;-><init>(Lz5/f;)V

    sget-object v22, Lr5/t$a;->a:Lr5/t$a;

    sget-object v4, Lz6/l;->b:Lz6/l$a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v46, Lz6/l$a;->b:Lz6/m;

    move-object/from16 v24, v46

    new-instance v4, La6/i;

    move-object/from16 v26, v4

    invoke-direct {v4}, La6/i;-><init>()V

    const/16 v27, 0x0

    const/high16 v28, 0x800000

    move-object/from16 v9, v18

    move-object/from16 v6, v40

    move-object/from16 v53, v35

    move-object/from16 v35, v0

    move-object/from16 v0, v53

    move-object v4, v1

    move-object/from16 v18, v37

    move-object/from16 v47, v44

    move-object v6, v2

    move-object/from16 v48, v9

    move-object/from16 v37, v45

    move-object/from16 v9, v37

    move-object/from16 v44, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v7

    move-object/from16 v45, v2

    move-object v2, v7

    move-object/from16 v49, v14

    move-object/from16 v52, v15

    move-object/from16 v7, v30

    move-object/from16 v15, v31

    move-object/from16 v50, v33

    move-object/from16 v51, v34

    move-object/from16 v14, p0

    move-object/from16 v30, v1

    move-object/from16 v1, v32

    invoke-direct/range {v3 .. v28}, Lu5/c;-><init>(Lx6/m;Lr5/s;La6/r;La6/j;Ls5/j;Lu6/q;Ls5/g;Ls5/f;Lq6/a;Lx5/b;Lu5/i;La6/y;Li5/y0;Lq5/c;Li5/e0;Lf5/i;Lr5/e;Lz5/n;Lr5/t;Lu5/d;Lz6/l;Lr5/a0;Lr5/x;Lp6/e;I)V

    new-instance v3, Lu5/f;

    invoke-direct {v3, v0}, Lu5/f;-><init>(Lu5/c;)V

    sget-object v0, Lg6/e;->g:Lg6/e;

    move-object/from16 v4, v39

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v30

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v49

    move-object/from16 v6, v50

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "lazyJavaPackageFragmentProvider"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v45

    move-object/from16 v8, v51

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v38

    move-object/from16 v11, v52

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v37

    move-object/from16 v9, v42

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "jvmMetadataVersion"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, La6/k;

    invoke-direct {v10, v13, v12}, La6/k;-><init>(La6/r;La6/j;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v48

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, La6/f;

    invoke-direct {v1, v2, v7, v5, v13}, La6/f;-><init>(Li5/e0;Li5/g0;Lx6/m;La6/r;)V

    const-string v4, "<set-?>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, La6/f;->f:Lg6/e;

    new-instance v0, La6/h;

    sget-object v27, Lu6/l$a;->a:Lu6/l$a;

    sget v6, Lu6/j;->a:I

    sget-object v24, Lu6/j$a;->b:Lu6/j;

    new-instance v6, Lb7/a;

    sget-object v9, Ly6/t;->a:Ly6/t;

    invoke-static {v9}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Lb7/a;-><init>(Ljava/util/List;)V

    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v27

    move-object/from16 v18, v10

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v43

    move-object/from16 v25, v46

    move-object/from16 v26, v6

    invoke-direct/range {v14 .. v26}, La6/h;-><init>(Lx6/m;Li5/e0;Lu6/l;La6/k;La6/f;Lu5/f;Li5/g0;Lu6/q;Lq5/c;Lu6/j;Lz6/l;Lb7/a;)V

    const-string v1, "components"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La6/h;->a:Lu6/k;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v12, La6/j;->a:Lu6/k;

    new-instance v1, Lz0/t;

    move-object/from16 v8, v41

    move-object/from16 v6, v47

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v6}, Lz0/t;-><init>(Lu5/f;Ls5/g;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v36

    iput-object v1, v3, Lu5/j;->a:Lz0/t;

    new-instance v14, Lh5/r;

    invoke-virtual/range {v40 .. v40}, Lh5/h;->R()Lh5/l;

    move-result-object v8

    invoke-virtual/range {v40 .. v40}, Lh5/h;->R()Lh5/l;

    move-result-object v9

    new-instance v15, Lq6/b;

    move-object/from16 v3, v35

    invoke-direct {v15, v5, v3}, Lq6/b;-><init>(Lx6/m;Ljava/lang/Iterable;)V

    move-object v3, v14

    move-object v4, v5

    move-object/from16 v5, v44

    move-object v6, v2

    move-object/from16 v10, v27

    move-object v13, v11

    move-object/from16 v11, v46

    move-object/from16 v52, v13

    move-object v13, v12

    move-object v12, v15

    invoke-direct/range {v3 .. v12}, Lh5/r;-><init>(Lx6/m;La6/r;Li5/e0;Li5/g0;Lk5/a;Lk5/c;Lu6/l;Lz6/l;Lq6/a;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ll5/a0;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v2, v4}, Ll5/a0;->E0([Ll5/a0;)V

    new-instance v4, Ll5/l;

    const/4 v6, 0x2

    new-array v6, v6, [Li5/k0;

    iget-object v1, v1, Lz0/t;->a:Ljava/lang/Object;

    check-cast v1, Lu5/f;

    aput-object v1, v6, v5

    aput-object v14, v6, v3

    invoke-static {v6}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CompositeProvider@RuntimeModuleData for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Ll5/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "providerForModuleContent"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, Ll5/a0;->h:Li5/i0;

    const-string v1, "deserializationComponentsForJava"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v52

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ln5/i;

    iget-object v0, v0, La6/h;->a:Lu6/k;

    new-instance v2, Ln5/a;

    move-object/from16 v3, v45

    invoke-direct {v2, v13, v3}, Ln5/a;-><init>(La6/j;Ln5/f;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Ln5/i;-><init>(Lu6/k;Ln5/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2ef
    :try_start_2ef
    sget-object v0, Lc5/o0;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v4, v29

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_304

    return-object v1

    :cond_304
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln5/i;

    if-eqz v3, :cond_30d

    return-object v3

    :cond_30d
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_312
    .catchall {:try_start_2ef .. :try_end_312} :catchall_315

    move-object/from16 v29, v4

    goto :goto_2ef

    :catchall_315
    move-exception v0

    throw v0

    :cond_317
    move-object v2, v7

    move-object/from16 v40, v10

    move-object v5, v11

    move-object v3, v15

    :try_start_31c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Built-ins module is already set: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    iget-object v4, v4, Lf5/g;->a:Ll5/a0;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (attempting to reset to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_344
    .catchall {:try_start_31c .. :try_end_344} :catchall_344

    :catchall_344
    move-exception v0

    goto :goto_349

    :catchall_346
    move-exception v0

    move-object v5, v11

    move-object v3, v15

    :goto_349
    :try_start_349
    iget-object v1, v5, Lx6/e;->b:Lx6/e$f;

    check-cast v1, Lx6/e$f$a;

    invoke-virtual {v1, v0}, Lx6/e$f$a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v3
    :try_end_351
    .catchall {:try_start_349 .. :try_end_351} :catchall_351

    :catchall_351
    move-exception v0

    iget-object v1, v5, Lx6/e;->a:Lx6/k;

    invoke-interface {v1}, Lx6/k;->unlock()V

    throw v0
.end method
