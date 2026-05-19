.class public final enum Lio/branch/search/t5;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/t5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lio/branch/search/t5;

.field public static final enum B:Lio/branch/search/t5;

.field public static final enum C:Lio/branch/search/t5;

.field public static D:Ljava/lang/Long;

.field public static final synthetic E:[Lio/branch/search/t5;

.field public static final enum i:Lio/branch/search/t5;

.field public static final enum j:Lio/branch/search/t5;

.field public static final enum k:Lio/branch/search/t5;

.field public static final enum l:Lio/branch/search/t5;

.field public static final enum m:Lio/branch/search/t5;

.field public static final enum n:Lio/branch/search/t5;

.field public static final enum o:Lio/branch/search/t5;

.field public static final enum p:Lio/branch/search/t5;

.field public static final enum q:Lio/branch/search/t5;

.field public static final enum r:Lio/branch/search/t5;

.field public static final enum s:Lio/branch/search/t5;

.field public static final enum t:Lio/branch/search/t5;

.field public static final enum u:Lio/branch/search/t5;

.field public static final enum v:Lio/branch/search/t5;

.field public static final enum w:Lio/branch/search/t5;

.field public static final enum x:Lio/branch/search/t5;

.field public static final enum y:Lio/branch/search/t5;

.field public static final enum z:Lio/branch/search/t5;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Lio/branch/search/a6;

.field public h:Le8/u;


# direct methods
.method public static constructor <clinit>()V
    .registers 34

    new-instance v11, Lio/branch/search/t5;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Lio/branch/search/a6;->b:Lio/branch/search/a6;

    const-string v1, "SEARCH"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v11

    move-object v3, v12

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v11, Lio/branch/search/t5;->i:Lio/branch/search/t5;

    new-instance v14, Lio/branch/search/t5;

    const-string v1, "APP_STORE_SEARCH"

    const/4 v2, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v14, Lio/branch/search/t5;->j:Lio/branch/search/t5;

    new-instance v15, Lio/branch/search/t5;

    const-string v1, "ZERO_STATE"

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v15, Lio/branch/search/t5;->k:Lio/branch/search/t5;

    new-instance v16, Lio/branch/search/t5;

    const-string v1, "AUTOSUGGEST"

    const/4 v2, 0x3

    const/16 v4, 0xbb8

    const/4 v5, 0x3

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v16, Lio/branch/search/t5;->l:Lio/branch/search/t5;

    new-instance v17, Lio/branch/search/t5;

    const-string v1, "QUERYHINT"

    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v17, Lio/branch/search/t5;->m:Lio/branch/search/t5;

    new-instance v29, Lio/branch/search/t5;

    sget-object v30, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v28, Lio/branch/search/a6;->d:Lio/branch/search/a6;

    const-string v19, "BRANCH_CLICK_TRACKING"

    const/16 v20, 0x5

    const/16 v22, 0x2710

    const/16 v23, 0xf

    const/16 v24, 0x64

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v18, v29

    move-object/from16 v21, v30

    invoke-direct/range {v18 .. v28}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v29, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    new-instance v18, Lio/branch/search/t5;

    const-string v1, "ANALYTICS"

    const/4 v2, 0x6

    const/16 v4, 0x2710

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v3, v30

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v18, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    new-instance v19, Lio/branch/search/t5;

    const-string v1, "LOCAL_CONTENT"

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v19, Lio/branch/search/t5;->p:Lio/branch/search/t5;

    new-instance v13, Lio/branch/search/t5;

    sget-object v10, Lio/branch/search/a6;->e:Lio/branch/search/a6;

    const-string v1, "IS_SERVICE_ENABLED"

    const/16 v2, 0x8

    const/16 v4, 0x1388

    const/4 v5, 0x3

    move-object v0, v13

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v13, Lio/branch/search/t5;->q:Lio/branch/search/t5;

    new-instance v20, Lio/branch/search/t5;

    sget-object v10, Lio/branch/search/a6;->c:Lio/branch/search/a6;

    const-string v1, "PING_SERVICE"

    const/16 v2, 0x9

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v20, Lio/branch/search/t5;->r:Lio/branch/search/t5;

    new-instance v21, Lio/branch/search/t5;

    sget-object v22, Lio/branch/search/a6;->f:Lio/branch/search/a6;

    const-string v1, "REMOTE_SEARCH_IMAGE"

    const/16 v2, 0xa

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v21

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v21, Lio/branch/search/t5;->s:Lio/branch/search/t5;

    new-instance v23, Lio/branch/search/t5;

    const-string v1, "LOCAL_SEARCH_AD_IMAGE"

    const/16 v2, 0xb

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v23, Lio/branch/search/t5;->t:Lio/branch/search/t5;

    new-instance v24, Lio/branch/search/t5;

    const-string v1, "APP_STORE_SEARCH_IMAGE"

    const/16 v2, 0xc

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v24, Lio/branch/search/t5;->u:Lio/branch/search/t5;

    new-instance v25, Lio/branch/search/t5;

    const-string v1, "LOCAL_SEARCH_LINK_IMAGE"

    const/16 v2, 0xd

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v25, Lio/branch/search/t5;->v:Lio/branch/search/t5;

    new-instance v26, Lio/branch/search/t5;

    const-string v1, "LOCAL_ZERO_STATE_AD_IMAGE"

    const/16 v2, 0xe

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v26, Lio/branch/search/t5;->w:Lio/branch/search/t5;

    new-instance v27, Lio/branch/search/t5;

    const-string v1, "LOCAL_ZERO_STATE_LINK_IMAGE"

    const/16 v2, 0xf

    move-object/from16 v0, v27

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v27, Lio/branch/search/t5;->x:Lio/branch/search/t5;

    new-instance v28, Lio/branch/search/t5;

    const-string v1, "LOCAL_SEARCH_AD_IMAGE_PRELOAD"

    const/16 v2, 0x10

    move-object/from16 v0, v28

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v28, Lio/branch/search/t5;->y:Lio/branch/search/t5;

    new-instance v31, Lio/branch/search/t5;

    const-string v1, "LOCAL_SEARCH_LINK_IMAGE_PRELOAD"

    const/16 v2, 0x11

    move-object/from16 v0, v31

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v31, Lio/branch/search/t5;->z:Lio/branch/search/t5;

    new-instance v32, Lio/branch/search/t5;

    const-string v1, "LOCAL_ZERO_STATE_AD_IMAGE_PRELOAD"

    const/16 v2, 0x12

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v32, Lio/branch/search/t5;->A:Lio/branch/search/t5;

    new-instance v33, Lio/branch/search/t5;

    const-string v1, "LOCAL_ZERO_STATE_LINK_IMAGE_PRELOAD"

    const/16 v2, 0x13

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v33, Lio/branch/search/t5;->B:Lio/branch/search/t5;

    new-instance v22, Lio/branch/search/t5;

    sget-object v10, Lio/branch/search/a6;->g:Lio/branch/search/a6;

    const-string v1, "NOT_A_CHANNEL"

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v22

    move-object v3, v12

    invoke-direct/range {v0 .. v10}, Lio/branch/search/t5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V

    sput-object v22, Lio/branch/search/t5;->C:Lio/branch/search/t5;

    const/16 v0, 0x15

    new-array v0, v0, [Lio/branch/search/t5;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    const/4 v1, 0x2

    aput-object v15, v0, v1

    const/4 v1, 0x3

    aput-object v16, v0, v1

    const/4 v1, 0x4

    aput-object v17, v0, v1

    const/4 v1, 0x5

    aput-object v29, v0, v1

    const/4 v1, 0x6

    aput-object v18, v0, v1

    const/4 v1, 0x7

    aput-object v19, v0, v1

    const/16 v1, 0x8

    aput-object v13, v0, v1

    const/16 v1, 0x9

    aput-object v20, v0, v1

    const/16 v1, 0xa

    aput-object v21, v0, v1

    const/16 v1, 0xb

    aput-object v23, v0, v1

    const/16 v1, 0xc

    aput-object v24, v0, v1

    const/16 v1, 0xd

    aput-object v25, v0, v1

    const/16 v1, 0xe

    aput-object v26, v0, v1

    const/16 v1, 0xf

    aput-object v27, v0, v1

    const/16 v1, 0x10

    aput-object v28, v0, v1

    const/16 v1, 0x11

    aput-object v31, v0, v1

    const/16 v1, 0x12

    aput-object v32, v0, v1

    const/16 v1, 0x13

    aput-object v33, v0, v1

    const/16 v1, 0x14

    aput-object v22, v0, v1

    sput-object v0, Lio/branch/search/t5;->E:[Lio/branch/search/t5;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0xdbba00

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/branch/search/t5;->D:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZZZLio/branch/search/a6;)V
    .registers 11
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "IIIZZZ",
            "Lio/branch/search/a6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/branch/search/t5;->h:Le8/u;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    iput p4, p0, Lio/branch/search/t5;->a:I

    iput p5, p0, Lio/branch/search/t5;->b:I

    iput p6, p0, Lio/branch/search/t5;->c:I

    iput-boolean p7, p0, Lio/branch/search/t5;->d:Z

    iput-boolean p8, p0, Lio/branch/search/t5;->e:Z

    iput-boolean p9, p0, Lio/branch/search/t5;->f:Z

    iput-object p10, p0, Lio/branch/search/t5;->g:Lio/branch/search/a6;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/branch/search/t5;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/t5;->values()[Lio/branch/search/t5;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    sget-object p0, Lio/branch/search/t5;->C:Lio/branch/search/t5;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/t5;
    .registers 2

    const-class v0, Lio/branch/search/t5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/t5;

    return-object p0
.end method

.method public static values()[Lio/branch/search/t5;
    .registers 1

    sget-object v0, Lio/branch/search/t5;->E:[Lio/branch/search/t5;

    invoke-virtual {v0}, [Lio/branch/search/t5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/t5;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/branch/search/m;)Ljava/util/List;
    .registers 3
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            ")",
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/t5;->g:Lio/branch/search/a6;

    invoke-interface {v0, p1, p0}, Lio/branch/search/a6;->a(Lio/branch/search/m;Lio/branch/search/t5;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/t5;->d:Z

    return p0
.end method

.method public b(Lio/branch/search/m;)Le8/u;
    .registers 11
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lio/branch/search/t5;->h:Le8/u;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lio/branch/search/c5;->a()Le8/u;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Le8/u$b;

    invoke-direct {v1, v0}, Le8/u$b;-><init>(Le8/u;)V

    invoke-virtual {p0}, Lio/branch/search/t5;->b()Z

    move-result v0

    iput-boolean v0, v1, Le8/u$b;->v:Z

    invoke-virtual {p0, p1}, Lio/branch/search/t5;->a(Lio/branch/search/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/s;

    if-eqz v2, :cond_33

    iget-object v3, v1, Le8/u$b;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interceptor == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget v0, p0, Lio/branch/search/t5;->a:I

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lf8/c;->a:[B

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_82

    const-string v7, "unit == null"

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v2, v7

    if-gtz v0, :cond_7a

    cmp-long v0, v2, v4

    if-nez v0, :cond_67

    if-gtz v6, :cond_5f

    goto :goto_67

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    :goto_67
    long-to-int v0, v2

    iput v0, v1, Le8/u$b;->w:I

    if-nez p1, :cond_72

    new-instance p0, Le8/u;

    invoke-direct {p0, v1}, Le8/u;-><init>(Le8/u$b;)V

    return-object p0

    :cond_72
    new-instance p1, Le8/u;

    invoke-direct {p1, v1}, Le8/u;-><init>(Le8/u$b;)V

    iput-object p1, p0, Lio/branch/search/t5;->h:Le8/u;

    return-object p1

    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/t5;->f:Z

    return p0
.end method

.method public c()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/t5;->e:Z

    return p0
.end method

.method public d()Z
    .registers 2

    sget-object v0, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
