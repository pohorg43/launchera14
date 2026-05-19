.class public La2/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La2/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La2/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:La2/h;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "La2/j;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(La2/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La2/i;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La2/i;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La2/i;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/i;->e:Z

    iput-object p1, p0, La2/i;->c:La2/h;

    iput-object p0, p1, La2/h;->a:La2/i;

    return-void
.end method

.method public static b()La2/i;
    .registers 3

    new-instance v0, La2/i;

    new-instance v1, La2/a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2}, La2/a;-><init>(Landroid/view/Choreographer;)V

    invoke-direct {v0, v1}, La2/i;-><init>(La2/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, La2/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/d;

    if-eqz v0, :cond_1c

    iget-object p1, p0, La2/i;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, La2/i;->e:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    iput-boolean p1, p0, La2/i;->e:Z

    iget-object p0, p0, La2/i;->c:La2/h;

    invoke-virtual {p0}, La2/h;->a()V

    :cond_1b
    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "springId "

    const-string v1, " does not reference a registered spring"

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()La2/d;
    .registers 4

    new-instance v0, La2/d;

    invoke-direct {v0, p0}, La2/d;-><init>(La2/i;)V

    iget-object v1, p0, La2/i;->a:Ljava/util/Map;

    iget-object v2, v0, La2/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object p0, p0, La2/i;->a:Ljava/util/Map;

    iget-object v1, v0, La2/d;->b:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "spring is already registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(D)V
    .registers 37

    move-object/from16 v0, p0

    iget-object v1, v0, La2/i;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/j;

    invoke-interface {v2, v0}, La2/j;->b(La2/i;)V

    goto :goto_8

    :cond_18
    iget-object v1, v0, La2/i;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/d;

    invoke-virtual {v3}, La2/d;->b()Z

    move-result v4

    if-eqz v4, :cond_38

    iget-boolean v4, v3, La2/d;->h:Z

    if-nez v4, :cond_36

    goto :goto_38

    :cond_36
    const/4 v4, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v4, 0x1

    :goto_39
    if-eqz v4, :cond_195

    const-wide v4, 0x408f400000000000L  # 1000.0

    div-double v4, p1, v4

    invoke-virtual {v3}, La2/d;->b()Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-boolean v7, v3, La2/d;->h:Z

    if-eqz v7, :cond_4d

    goto :goto_1f

    :cond_4d
    const-wide v7, 0x3fb0624dd2f1a9fcL  # 0.064

    cmpl-double v2, v4, v7

    if-lez v2, :cond_57

    move-wide v4, v7

    :cond_57
    iget-wide v7, v3, La2/d;->j:D

    add-double/2addr v7, v4

    iput-wide v7, v3, La2/d;->j:D

    iget-object v2, v3, La2/d;->a:La2/e;

    iget-wide v4, v2, La2/e;->b:D

    iget-wide v7, v2, La2/e;->a:D

    iget-object v2, v3, La2/d;->c:La2/d$b;

    iget-wide v9, v2, La2/d$b;->a:D

    iget-wide v11, v2, La2/d$b;->b:D

    iget-object v2, v3, La2/d;->e:La2/d$b;

    iget-wide v13, v2, La2/d$b;->a:D

    move-object v15, v1

    iget-wide v0, v2, La2/d$b;->b:D

    move-wide/from16 v16, v0

    :goto_71
    iget-wide v0, v3, La2/d;->j:D

    const-wide v24, 0x3f50624dd2f1a9fcL  # 0.001

    cmpl-double v2, v0, v24

    if-ltz v2, :cond_103

    sub-double v0, v0, v24

    iput-wide v0, v3, La2/d;->j:D

    cmpg-double v0, v0, v24

    if-gez v0, :cond_8a

    iget-object v0, v3, La2/d;->d:La2/d$b;

    iput-wide v9, v0, La2/d$b;->a:D

    iput-wide v11, v0, La2/d$b;->b:D

    :cond_8a
    iget-wide v0, v3, La2/d;->g:D

    sub-double v13, v0, v13

    mul-double/2addr v13, v4

    mul-double v16, v7, v11

    sub-double v13, v13, v16

    const-wide/high16 v26, 0x3fe0000000000000L  # 0.5

    move-wide/from16 v16, v11

    move-wide/from16 v18, v24

    move-wide/from16 v20, v26

    move-wide/from16 v22, v9

    invoke-static/range {v16 .. v23}, Landroidx/constraintlayout/core/motion/utils/a;->a(DDDD)D

    move-result-wide v28

    move-wide/from16 v16, v13

    move-wide/from16 v22, v11

    invoke-static/range {v16 .. v23}, Landroidx/constraintlayout/core/motion/utils/a;->a(DDDD)D

    move-result-wide v30

    sub-double v16, v0, v28

    mul-double v16, v16, v4

    mul-double v18, v7, v30

    sub-double v28, v16, v18

    move-wide/from16 v16, v30

    move-wide/from16 v18, v24

    move-wide/from16 v22, v9

    invoke-static/range {v16 .. v23}, Landroidx/constraintlayout/core/motion/utils/a;->a(DDDD)D

    move-result-wide v32

    move-wide/from16 v16, v28

    move-wide/from16 v22, v11

    invoke-static/range {v16 .. v23}, Landroidx/constraintlayout/core/motion/utils/a;->a(DDDD)D

    move-result-wide v16

    sub-double v18, v0, v32

    mul-double v18, v18, v4

    mul-double v20, v7, v16

    sub-double v18, v18, v20

    mul-double v20, v16, v24

    add-double v20, v20, v9

    mul-double v22, v18, v24

    add-double v22, v22, v11

    sub-double v0, v0, v20

    mul-double/2addr v0, v4

    mul-double v26, v7, v22

    sub-double v0, v0, v26

    add-double v30, v30, v16

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    mul-double v30, v30, v16

    add-double v30, v30, v11

    add-double v30, v30, v22

    const-wide v26, 0x3fc5555555555555L  # 0.16666666666666666

    mul-double v30, v30, v26

    add-double v28, v28, v18

    mul-double v28, v28, v16

    add-double v28, v28, v13

    add-double v28, v28, v0

    mul-double v28, v28, v26

    mul-double v30, v30, v24

    add-double v9, v30, v9

    mul-double v28, v28, v24

    add-double v11, v28, v11

    move-wide/from16 v13, v20

    move-wide/from16 v16, v22

    goto/16 :goto_71

    :cond_103
    iget-object v2, v3, La2/d;->e:La2/d$b;

    iput-wide v13, v2, La2/d$b;->a:D

    move-wide/from16 v7, v16

    iput-wide v7, v2, La2/d$b;->b:D

    iget-object v2, v3, La2/d;->c:La2/d$b;

    iput-wide v9, v2, La2/d$b;->a:D

    iput-wide v11, v2, La2/d$b;->b:D

    const-wide/16 v7, 0x0

    cmpl-double v13, v0, v7

    if-lez v13, :cond_12f

    div-double v0, v0, v24

    mul-double/2addr v9, v0

    iget-object v13, v3, La2/d;->d:La2/d$b;

    iget-wide v7, v13, La2/d$b;->a:D

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    sub-double v18, v18, v0

    mul-double v7, v7, v18

    add-double/2addr v7, v9

    iput-wide v7, v2, La2/d$b;->a:D

    mul-double/2addr v11, v0

    iget-wide v0, v13, La2/d$b;->b:D

    mul-double v0, v0, v18

    add-double/2addr v0, v11

    iput-wide v0, v2, La2/d$b;->b:D

    :cond_12f
    invoke-virtual {v3}, La2/d;->b()Z

    move-result v0

    if-nez v0, :cond_136

    goto :goto_162

    :cond_136
    const-wide/16 v0, 0x0

    cmpl-double v2, v4, v0

    if-lez v2, :cond_145

    iget-wide v0, v3, La2/d;->g:D

    iput-wide v0, v3, La2/d;->f:D

    iget-object v2, v3, La2/d;->c:La2/d$b;

    iput-wide v0, v2, La2/d$b;->a:D

    goto :goto_14d

    :cond_145
    iget-object v0, v3, La2/d;->c:La2/d$b;

    iget-wide v0, v0, La2/d$b;->a:D

    iput-wide v0, v3, La2/d;->g:D

    iput-wide v0, v3, La2/d;->f:D

    :goto_14d
    iget-object v0, v3, La2/d;->c:La2/d$b;

    iget-wide v1, v0, La2/d$b;->b:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v4, v1

    if-nez v1, :cond_158

    goto :goto_161

    :cond_158
    iput-wide v4, v0, La2/d$b;->b:D

    iget-object v0, v3, La2/d;->k:La2/i;

    iget-object v1, v3, La2/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, La2/i;->a(Ljava/lang/String;)V

    :goto_161
    const/4 v6, 0x1

    :goto_162
    iget-boolean v0, v3, La2/d;->h:Z

    if-eqz v0, :cond_16b

    const/4 v0, 0x0

    iput-boolean v0, v3, La2/d;->h:Z

    const/4 v1, 0x1

    goto :goto_16d

    :cond_16b
    const/4 v0, 0x0

    move v1, v0

    :goto_16d
    if-eqz v6, :cond_172

    const/4 v0, 0x1

    iput-boolean v0, v3, La2/d;->h:Z

    :cond_172
    iget-object v2, v3, La2/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_178
    :goto_178
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_192

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/g;

    if-eqz v1, :cond_189

    invoke-interface {v4, v3}, La2/g;->onSpringActivate(La2/d;)V

    :cond_189
    invoke-interface {v4, v3}, La2/g;->onSpringUpdate(La2/d;)V

    if-eqz v0, :cond_178

    invoke-interface {v4, v3}, La2/g;->onSpringAtRest(La2/d;)V

    goto :goto_178

    :cond_192
    move-object/from16 v2, p0

    goto :goto_19b

    :cond_195
    move-object v15, v1

    iget-object v0, v2, La2/i;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_19b
    move-object/from16 v0, p0

    move-object v1, v15

    goto/16 :goto_1f

    :cond_1a0
    iget-object v0, v2, La2/i;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ab

    const/4 v0, 0x1

    iput-boolean v0, v2, La2/i;->e:Z

    :cond_1ab
    iget-object v0, v2, La2/i;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/j;

    invoke-interface {v1, v2}, La2/j;->a(La2/i;)V

    goto :goto_1b1

    :cond_1c1
    iget-boolean v0, v2, La2/i;->e:Z

    if-eqz v0, :cond_1ca

    iget-object v0, v2, La2/i;->c:La2/h;

    invoke-virtual {v0}, La2/h;->b()V

    :cond_1ca
    return-void
.end method
