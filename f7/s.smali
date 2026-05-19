.class public final Lf7/s;
.super Lf7/b;
.source ""


# static fields
.field public static final a:Lf7/s;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf7/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    new-instance v0, Lf7/s;

    invoke-direct {v0}, Lf7/s;-><init>()V

    sput-object v0, Lf7/s;->a:Lf7/s;

    const/16 v0, 0x13

    new-array v0, v0, [Lf7/k;

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->i:Lh6/f;

    const/4 v3, 0x2

    new-array v4, v3, [Lf7/f;

    sget-object v5, Lf7/n$b;->b:Lf7/n$b;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v7, Lf7/w$a;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lf7/w$a;-><init>(I)V

    aput-object v7, v4, v8

    const/4 v7, 0x0

    const/4 v9, 0x4

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    aput-object v1, v0, v6

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->j:Lh6/f;

    new-array v4, v3, [Lf7/f;

    aput-object v5, v4, v6

    new-instance v10, Lf7/w$a;

    invoke-direct {v10, v3}, Lf7/w$a;-><init>(I)V

    aput-object v10, v4, v8

    sget-object v10, Lf7/s$a;->a:Lf7/s$a;

    invoke-direct {v1, v2, v4, v10}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;)V

    aput-object v1, v0, v8

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->a:Lh6/f;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v10, Lf7/p;->a:Lf7/p;

    aput-object v10, v4, v8

    new-instance v11, Lf7/w$a;

    invoke-direct {v11, v3}, Lf7/w$a;-><init>(I)V

    aput-object v11, v4, v3

    sget-object v11, Lf7/m;->a:Lf7/m;

    const/4 v12, 0x3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    aput-object v1, v0, v3

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->b:Lh6/f;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v10, v4, v8

    new-instance v13, Lf7/w$a;

    invoke-direct {v13, v12}, Lf7/w$a;-><init>(I)V

    aput-object v13, v4, v3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    aput-object v1, v0, v12

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->c:Lh6/f;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v10, v4, v8

    new-instance v13, Lf7/w$b;

    invoke-direct {v13, v3}, Lf7/w$b;-><init>(I)V

    aput-object v13, v4, v3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    aput-object v1, v0, v9

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->g:Lh6/f;

    new-array v4, v8, [Lf7/f;

    aput-object v5, v4, v6

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->f:Lh6/f;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v11, Lf7/w$d;->b:Lf7/w$d;

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    sget-object v13, Lf7/u$a;->c:Lf7/u$a;

    aput-object v13, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->h:Lh6/f;

    new-array v4, v3, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v14, Lf7/w$c;->b:Lf7/w$c;

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->k:Lh6/f;

    new-array v4, v3, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->l:Lh6/f;

    new-array v4, v12, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    aput-object v13, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->p:Lh6/f;

    new-array v4, v12, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->q:Lh6/f;

    new-array v4, v12, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->d:Lh6/f;

    new-array v4, v8, [Lf7/f;

    sget-object v13, Lf7/n$a;->b:Lf7/n$a;

    aput-object v13, v4, v6

    sget-object v13, Lf7/s$b;->a:Lf7/s$b;

    invoke-direct {v1, v2, v4, v13}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->e:Lh6/f;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v13, Lf7/u$b;->c:Lf7/u$b;

    aput-object v13, v4, v8

    aput-object v11, v4, v3

    aput-object v10, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Lh6/f;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->s:Ljava/util/Set;

    new-array v4, v12, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->r:Ljava/util/Set;

    new-array v4, v3, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    new-array v2, v3, [Lh6/f;

    sget-object v4, Lf7/t;->n:Lh6/f;

    aput-object v4, v2, v6

    sget-object v4, Lf7/t;->o:Lh6/f;

    aput-object v4, v2, v8

    invoke-static {v2}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v4, v8, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v13, Lf7/s$c;->a:Lf7/s$c;

    invoke-direct {v1, v2, v4, v13}, Lf7/k;-><init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->t:Ljava/util/Set;

    new-array v4, v9, [Lf7/f;

    aput-object v5, v4, v6

    sget-object v13, Lf7/u$c;->c:Lf7/u$c;

    aput-object v13, v4, v8

    aput-object v11, v4, v3

    aput-object v10, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lf7/k;-><init>(Ljava/util/Collection;[Lf7/f;Lkotlin/jvm/functions/Function1;I)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lf7/k;

    sget-object v2, Lf7/t;->m:Lk7/f;

    new-array v4, v3, [Lf7/f;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    sget-object v5, Lf7/i;->a:Lf7/i;

    const-string v6, "regex"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "checks"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "additionalChecks"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, [Lf7/f;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v5

    invoke-direct/range {v15 .. v20}, Lf7/k;-><init>(Lh6/f;Lk7/f;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lf7/f;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf7/s;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf7/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf7/k;",
            ">;"
        }
    .end annotation

    sget-object p0, Lf7/s;->b:Ljava/util/List;

    return-object p0
.end method
