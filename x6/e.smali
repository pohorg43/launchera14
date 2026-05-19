.class public Lx6/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/e$g;,
        Lx6/e$d;,
        Lx6/e$e;,
        Lx6/e$m;,
        Lx6/e$l;,
        Lx6/e$j;,
        Lx6/e$k;,
        Lx6/e$i;,
        Lx6/e$h;,
        Lx6/e$n;,
        Lx6/e$o;,
        Lx6/e$f;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Lx6/m;


# instance fields
.field public final a:Lx6/k;

.field public final b:Lx6/e$f;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-class v0, Lx6/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk7/q;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx6/e;->d:Ljava/lang/String;

    new-instance v0, Lx6/e$a;

    sget-object v1, Lx6/e$f;->a:Lx6/e$f;

    sget-object v2, Lx6/d;->b:Lx6/d;

    const-string v3, "NO_LOCKS"

    invoke-direct {v0, v3, v1, v2}, Lx6/e$a;-><init>(Ljava/lang/String;Lx6/e$f;Lx6/k;)V

    sput-object v0, Lx6/e;->e:Lx6/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lx6/e$f;->a:Lx6/e$f;

    sget v1, Lx6/k;->a:I

    new-instance v1, Lx6/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lx6/c;-><init>(Ljava/util/concurrent/locks/Lock;I)V

    invoke-direct {p0, p1, v0, v1}, Lx6/e;-><init>(Ljava/lang/String;Lx6/e$f;Lx6/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lx6/e$f;Lx6/k;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_16

    if-eqz p3, :cond_11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lx6/e;->a:Lx6/k;

    iput-object p2, p0, Lx6/e;->b:Lx6/e$f;

    iput-object p1, p0, Lx6/e;->c:Ljava/lang/String;

    return-void

    :cond_11
    const/4 p0, 0x6

    invoke-static {p0}, Lx6/e;->i(I)V

    throw v0

    :cond_16
    const/4 p0, 0x5

    invoke-static {p0}, Lx6/e;->i(I)V

    throw v0

    :cond_1b
    const/4 p0, 0x4

    invoke-static {p0}, Lx6/e;->i(I)V

    throw v0
.end method

.method public static synthetic i(I)V
    .registers 14

    const/16 v0, 0x25

    const/16 v1, 0x14

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq p0, v3, :cond_13

    if-eq p0, v2, :cond_13

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_15

    :cond_13
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_15
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p0, v3, :cond_21

    if-eq p0, v2, :cond_21

    if-eq p0, v1, :cond_21

    if-eq p0, v0, :cond_21

    move v7, v5

    goto :goto_22

    :cond_21
    move v7, v6

    :goto_22
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager"

    const-string v9, "compute"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq p0, v10, :cond_65

    if-eq p0, v5, :cond_65

    const/4 v5, 0x5

    if-eq p0, v5, :cond_65

    const/4 v5, 0x6

    if-eq p0, v5, :cond_60

    packed-switch p0, :pswitch_data_da

    const-string v5, "debugText"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_3c  #0x24
    const-string v5, "throwable"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_41  #0x23
    const-string v5, "source"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_46  #0x1d, 0x21
    const-string v5, "postCompute"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_4b  #0x17, 0x18, 0x1a, 0x1c, 0x1e, 0x1f, 0x20, 0x22
    const-string v5, "computable"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_50  #0xf, 0x12, 0x16
    const-string v5, "map"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_55  #0xc, 0x11, 0x19, 0x1b
    const-string v5, "onRecursiveCall"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_5a  #0xa, 0xd, 0x14, 0x25
    aput-object v8, v7, v11

    goto :goto_69

    :pswitch_5d  #0x9, 0xb, 0xe, 0x10, 0x13, 0x15
    aput-object v9, v7, v11

    goto :goto_69

    :cond_60
    const-string v5, "lock"

    aput-object v5, v7, v11

    goto :goto_69

    :cond_65
    :pswitch_65  #0x8
    const-string v5, "exceptionHandlingStrategy"

    aput-object v5, v7, v11

    :goto_69
    const-string v5, "sanitizeStackTrace"

    const-string v11, "createMemoizedFunctionWithNullableValues"

    const-string v12, "createMemoizedFunction"

    if-eq p0, v3, :cond_80

    if-eq p0, v2, :cond_80

    if-eq p0, v1, :cond_7d

    if-eq p0, v0, :cond_7a

    aput-object v8, v7, v10

    goto :goto_82

    :cond_7a
    aput-object v5, v7, v10

    goto :goto_82

    :cond_7d
    aput-object v11, v7, v10

    goto :goto_82

    :cond_80
    aput-object v12, v7, v10

    :goto_82
    packed-switch p0, :pswitch_data_11a

    const-string v5, "createWithExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_8a  #0x24
    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_8d  #0x23
    const-string v5, "recursionDetectedDefault"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_92  #0x22
    aput-object v9, v7, v6

    goto :goto_c2

    :pswitch_95  #0x20, 0x21
    const-string v5, "createNullableLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_9a  #0x1f
    const-string v5, "createRecursionTolerantNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_9f  #0x1e
    const-string v5, "createNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_a4  #0x1c, 0x1d
    const-string v5, "createLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_a9  #0x1a, 0x1b
    const-string v5, "createRecursionTolerantLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_ae  #0x17, 0x18, 0x19
    const-string v5, "createLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_b3  #0x13, 0x15, 0x16
    aput-object v11, v7, v6

    goto :goto_c2

    :pswitch_b6  #0x9, 0xb, 0xc, 0xe, 0xf, 0x10, 0x11, 0x12
    aput-object v12, v7, v6

    goto :goto_c2

    :pswitch_b9  #0x7, 0x8
    const-string v5, "replaceExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_be  #0x4, 0x5, 0x6
    const-string v5, "<init>"

    aput-object v5, v7, v6

    :goto_c2
    :pswitch_c2  #0xa, 0xd, 0x14, 0x25
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_d4

    if-eq p0, v2, :cond_d4

    if-eq p0, v1, :cond_d4

    if-eq p0, v0, :cond_d4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_d9
    throw p0

    :pswitch_data_da
    .packed-switch 0x8
        :pswitch_65  #00000008
        :pswitch_5d  #00000009
        :pswitch_5a  #0000000a
        :pswitch_5d  #0000000b
        :pswitch_55  #0000000c
        :pswitch_5a  #0000000d
        :pswitch_5d  #0000000e
        :pswitch_50  #0000000f
        :pswitch_5d  #00000010
        :pswitch_55  #00000011
        :pswitch_50  #00000012
        :pswitch_5d  #00000013
        :pswitch_5a  #00000014
        :pswitch_5d  #00000015
        :pswitch_50  #00000016
        :pswitch_4b  #00000017
        :pswitch_4b  #00000018
        :pswitch_55  #00000019
        :pswitch_4b  #0000001a
        :pswitch_55  #0000001b
        :pswitch_4b  #0000001c
        :pswitch_46  #0000001d
        :pswitch_4b  #0000001e
        :pswitch_4b  #0000001f
        :pswitch_4b  #00000020
        :pswitch_46  #00000021
        :pswitch_4b  #00000022
        :pswitch_41  #00000023
        :pswitch_3c  #00000024
        :pswitch_5a  #00000025
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x4
        :pswitch_be  #00000004
        :pswitch_be  #00000005
        :pswitch_be  #00000006
        :pswitch_b9  #00000007
        :pswitch_b9  #00000008
        :pswitch_b6  #00000009
        :pswitch_c2  #0000000a
        :pswitch_b6  #0000000b
        :pswitch_b6  #0000000c
        :pswitch_c2  #0000000d
        :pswitch_b6  #0000000e
        :pswitch_b6  #0000000f
        :pswitch_b6  #00000010
        :pswitch_b6  #00000011
        :pswitch_b6  #00000012
        :pswitch_b3  #00000013
        :pswitch_c2  #00000014
        :pswitch_b3  #00000015
        :pswitch_b3  #00000016
        :pswitch_ae  #00000017
        :pswitch_ae  #00000018
        :pswitch_ae  #00000019
        :pswitch_a9  #0000001a
        :pswitch_a9  #0000001b
        :pswitch_a4  #0000001c
        :pswitch_a4  #0000001d
        :pswitch_9f  #0000001e
        :pswitch_9a  #0000001f
        :pswitch_95  #00000020
        :pswitch_95  #00000021
        :pswitch_92  #00000022
        :pswitch_8d  #00000023
        :pswitch_8a  #00000024
        :pswitch_c2  #00000025
    .end packed-switch
.end method

.method public static j()Ljava/util/concurrent/ConcurrentMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method

.method public static l(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lx6/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    move v2, v3

    goto :goto_1e

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    :goto_1e
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0

    :cond_36
    const/16 p0, 0x24

    invoke-static {p0}, Lx6/e;->i(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()Lx6/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lx6/a<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lx6/e$d;

    invoke-static {}, Lx6/e;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lx6/e$d;-><init>(Lx6/e;Ljava/util/concurrent/ConcurrentMap;Lx6/e$a;)V

    return-object v0
.end method

.method public b(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lx6/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;TT;)",
            "Lx6/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lx6/e$b;

    invoke-direct {v0, p0, p0, p1, p2}, Lx6/e$b;-><init>(Lx6/e;Lx6/e;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Lkotlin/jvm/functions/Function0;)Lx6/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lx6/i<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_8

    new-instance v0, Lx6/e$j;

    invoke-direct {v0, p0, p1}, Lx6/e$j;-><init>(Lx6/e;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :cond_8
    const/16 p0, 0x17

    invoke-static {p0}, Lx6/e;->i(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Lkotlin/jvm/functions/Function0;)Lx6/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lx6/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lx6/e$h;

    invoke-direct {v0, p0, p1}, Lx6/e$h;-><init>(Lx6/e;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public e(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lx6/i;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;)",
            "Lx6/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lx6/e$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lx6/e$c;-><init>(Lx6/e;Lx6/e;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method public f(Lkotlin/jvm/functions/Function1;)Lx6/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lx6/h<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lx6/e;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    new-instance v1, Lx6/e$l;

    invoke-direct {v1, p0, v0, p1}, Lx6/e$l;-><init>(Lx6/e;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public g()Lx6/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lx6/b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lx6/e$e;

    invoke-static {}, Lx6/e;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lx6/e$e;-><init>(Lx6/e;Ljava/util/concurrent/ConcurrentMap;Lx6/e$a;)V

    return-object v0
.end method

.method public h(Lkotlin/jvm/functions/Function1;)Lx6/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lx6/g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lx6/e;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    new-instance v1, Lx6/e$m;

    invoke-direct {v1, p0, v0, p1}, Lx6/e$m;-><init>(Lx6/e;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public k(Ljava/lang/String;Ljava/lang/Object;)Lx6/e$o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lx6/e$o<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Recursion detected "

    invoke-static {v1, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_d

    const-string p2, ""

    goto :goto_1e

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " under "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lx6/e;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx6/e;->c:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
