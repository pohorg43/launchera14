.class public abstract Ll3/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Ls3/a;


# instance fields
.field public a:J

.field public b:F

.field public c:I

.field public d:I

.field public e:F

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/d;->h:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ll3/d;->a:J

    const/4 p1, 0x1

    iput p1, p0, Ll3/d;->c:I

    iput p1, p0, Ll3/d;->d:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll3/d;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll3/d;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "gl"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Ll3/d;->a:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const-wide/16 v4, 0x3e8

    long-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v0, Ll3/d;->b:F

    iput-wide v1, v0, Ll3/d;->a:J

    iget-object v1, v0, Ll3/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_23

    goto :goto_4e

    :cond_23
    iget-object v1, v0, Ll3/d;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_26
    iget-object v2, v0, Ll3/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Ll3/d;->g:Ljava/util/ArrayList;

    iget-object v3, v0, Ll3/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Ll3/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_22b

    monitor-exit v1

    iget-object v1, v0, Ll3/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3e

    :cond_4e
    :goto_4e
    check-cast v0, Ll3/b;

    iget-object v1, v0, Ll3/b;->q:Lp3/b;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_92

    iget-object v1, v0, Ll3/b;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6e

    new-instance v1, Lp3/b;

    iget-object v4, v0, Ll3/b;->j:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Lp3/b;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_90

    :cond_6e
    new-instance v1, Lp3/b;

    iget-object v4, v0, Ll3/d;->h:Landroid/content/Context;

    sget v5, Lcom/sdk/deleteview/R$drawable;->sym_def_app_icon:I

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "BitmapFactory.decodeReso…rces, resourceId, option)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lp3/b;-><init>(Landroid/graphics/Bitmap;)V

    :goto_90
    iput-object v1, v0, Ll3/b;->q:Lp3/b;

    :cond_92
    iget-boolean v1, v0, Ll3/b;->k:Z

    const/16 v4, 0xa

    const/4 v5, 0x5

    if-nez v1, :cond_a1

    iget-object v1, v0, Ll3/b;->s:Ln3/b;

    if-eqz v1, :cond_a1

    iget-object v1, v0, Ll3/b;->p:Ll3/c;

    if-nez v1, :cond_152

    :cond_a1
    iget-object v1, v0, Ll3/b;->s:Ln3/b;

    if-eqz v1, :cond_aa

    iget-object v1, v1, Ln3/b;->a:Lm3/a;

    invoke-virtual {v1}, Lm3/a;->dispose()V

    :cond_aa
    new-instance v1, Ln3/b;

    iget v6, v0, Ll3/b;->l:I

    int-to-float v6, v6

    iget v7, v0, Ll3/d;->c:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v0, Ll3/b;->m:I

    int-to-float v7, v7

    iget v8, v0, Ll3/d;->d:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {v1, v6, v7}, Ln3/b;-><init>(FF)V

    iput-object v1, v0, Ll3/b;->s:Ln3/b;

    iget-object v6, v0, Ll3/b;->o:Lo3/a;

    const/4 v7, 0x2

    const/4 v8, 0x3

    const-string v9, "a_texCoord0"

    const-string v10, "a_position"

    if-eqz v6, :cond_e0

    invoke-virtual {v6, v10}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v9}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v12, -0x1

    if-eq v11, v12, :cond_d9

    iget-object v13, v1, Ln3/b;->a:Lm3/a;

    invoke-virtual {v13, v11, v8, v3, v5}, Lm3/a;->a(IIII)V

    :cond_d9
    if-eq v6, v12, :cond_e0

    iget-object v1, v1, Ln3/b;->a:Lm3/a;

    invoke-virtual {v1, v6, v7, v8, v5}, Lm3/a;->a(IIII)V

    :cond_e0
    iget-object v1, v0, Ll3/b;->p:Ll3/c;

    if-eqz v1, :cond_e7

    invoke-virtual {v1}, Ln3/a;->dispose()V

    :cond_e7
    new-instance v1, Ll3/c;

    iget v14, v0, Ll3/b;->l:I

    int-to-float v6, v14

    const/high16 v11, 0x40800000  # 4.0f

    sub-float/2addr v6, v11

    iget v12, v0, Ll3/d;->c:I

    int-to-float v12, v12

    div-float/2addr v6, v12

    iget v15, v0, Ll3/b;->m:I

    int-to-float v13, v15

    sub-float/2addr v13, v11

    iget v11, v0, Ll3/d;->d:I

    int-to-float v11, v11

    div-float/2addr v13, v11

    const/high16 v11, 0x44870000  # 1080.0f

    div-float v16, v11, v12

    move-object v11, v1

    move v12, v6

    invoke-direct/range {v11 .. v16}, Ll3/c;-><init>(FFIIF)V

    iput-object v1, v0, Ll3/b;->p:Ll3/c;

    iget-object v6, v0, Ll3/b;->n:Lo3/a;

    if-eqz v6, :cond_150

    const-string v11, "program"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ln3/a;->a()Lm3/a;

    move-result-object v11

    invoke-virtual {v6, v10}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10, v8, v3, v4}, Lm3/a;->a(IIII)V

    invoke-virtual {v1}, Ln3/a;->a()Lm3/a;

    move-result-object v10

    invoke-virtual {v6, v9}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9, v7, v8, v4}, Lm3/a;->a(IIII)V

    invoke-virtual {v1}, Ln3/a;->a()Lm3/a;

    move-result-object v8

    const-string v9, "a_velocity"

    invoke-virtual {v6, v9}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9, v7, v5, v4}, Lm3/a;->a(IIII)V

    invoke-virtual {v1}, Ln3/a;->a()Lm3/a;

    move-result-object v8

    const-string v9, "a_acceleration"

    invoke-virtual {v6, v9}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x7

    invoke-virtual {v8, v9, v7, v10, v4}, Lm3/a;->a(IIII)V

    invoke-virtual {v1}, Ln3/a;->a()Lm3/a;

    move-result-object v1

    const-string v7, "a_random"

    invoke-virtual {v6, v7}, Lo3/a;->a(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8, v7, v4}, Lm3/a;->a(IIII)V

    :cond_150
    iput-boolean v3, v0, Ll3/b;->k:Z

    :cond_152
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x3e23d70b  # 0.16000001f

    iget-object v6, v0, Ll3/b;->i:Lq3/a;

    if-eqz v6, :cond_171

    iget v7, v6, Lq3/a;->b:I

    move v8, v3

    :goto_161
    if-ge v8, v7, :cond_171

    iget-object v9, v6, Lq3/a;->d:[Lp3/a;

    const/4 v10, 0x0

    aput-object v10, v9, v8

    iget-object v9, v6, Lq3/a;->e:[I

    if-eqz v9, :cond_16e

    aput v3, v9, v8

    :cond_16e
    add-int/lit8 v8, v8, 0x1

    goto :goto_161

    :cond_171
    iget-object v6, v0, Ll3/b;->n:Lo3/a;

    const-string v7, "u_tex1"

    const-string v8, "u_worldTrans"

    const-string v9, "u_projViewTrans"

    const-string v10, "u_time"

    const-string v11, "u_tex0"

    if-eqz v6, :cond_1d1

    iget v12, v6, Lo3/a;->a:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v12, v0, Ll3/b;->q:Lp3/b;

    if-eqz v12, :cond_194

    iget-object v13, v0, Ll3/b;->i:Lq3/a;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v12}, Lq3/a;->a(Lp3/a;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lo3/a;->d(Ljava/lang/String;I)V

    :cond_194
    iget-object v12, v0, Ll3/b;->r:Lp3/b;

    if-eqz v12, :cond_1a4

    iget-object v13, v0, Ll3/b;->i:Lq3/a;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v12}, Lq3/a;->a(Lp3/a;)I

    move-result v12

    invoke-virtual {v6, v7, v12}, Lo3/a;->d(Ljava/lang/String;I)V

    :cond_1a4
    iget-object v12, v0, Ll3/b;->v:[F

    invoke-virtual {v6, v9, v12}, Lo3/a;->b(Ljava/lang/String;[F)V

    iget-object v12, v0, Ll3/b;->w:[F

    invoke-virtual {v6, v8, v12}, Lo3/a;->b(Ljava/lang/String;[F)V

    invoke-virtual {v6, v10, v1}, Lo3/a;->c(Ljava/lang/String;F)V

    iget-object v6, v0, Ll3/b;->p:Ll3/c;

    if-eqz v6, :cond_1ce

    invoke-virtual {v6}, Ln3/a;->a()Lm3/a;

    move-result-object v12

    iget v12, v12, Lm3/a;->a:I

    invoke-static {v12}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget v12, v6, Ll3/c;->b:I

    div-int/2addr v12, v4

    invoke-static {v3, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {v6}, Ln3/a;->a()Lm3/a;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    :cond_1ce
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_1d1
    iget-object v4, v0, Ll3/b;->o:Lo3/a;

    if-eqz v4, :cond_220

    iget v6, v4, Lo3/a;->a:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v4, v10, v1}, Lo3/a;->c(Ljava/lang/String;F)V

    iget-object v1, v0, Ll3/b;->v:[F

    invoke-virtual {v4, v9, v1}, Lo3/a;->b(Ljava/lang/String;[F)V

    iget-object v1, v0, Ll3/b;->w:[F

    invoke-virtual {v4, v8, v1}, Lo3/a;->b(Ljava/lang/String;[F)V

    iget-object v1, v0, Ll3/b;->q:Lp3/b;

    if-eqz v1, :cond_1f7

    iget-object v6, v0, Ll3/b;->i:Lq3/a;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lq3/a;->a(Lp3/a;)I

    move-result v1

    invoke-virtual {v4, v11, v1}, Lo3/a;->d(Ljava/lang/String;I)V

    :cond_1f7
    iget-object v1, v0, Ll3/b;->r:Lp3/b;

    if-eqz v1, :cond_207

    iget-object v6, v0, Ll3/b;->i:Lq3/a;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lq3/a;->a(Lp3/a;)I

    move-result v1

    invoke-virtual {v4, v7, v1}, Lo3/a;->d(Ljava/lang/String;I)V

    :cond_207
    iget-object v1, v0, Ll3/b;->s:Ln3/b;

    if-eqz v1, :cond_21d

    iget-object v4, v1, Ln3/b;->a:Lm3/a;

    iget v4, v4, Lm3/a;->a:I

    invoke-static {v4}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v5, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, v1, Ln3/b;->a:Lm3/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    :cond_21d
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_220
    iget-object v0, v0, Ll3/b;->i:Lq3/a;

    if-eqz v0, :cond_22a

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_22a
    return-void

    :catchall_22b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 30

    move-object/from16 v0, p0

    const-string v1, "gl"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    move/from16 v2, p2

    if-ge v2, v1, :cond_f

    move v2, v1

    :cond_f
    iput v2, v0, Ll3/d;->c:I

    move/from16 v3, p3

    if-ge v3, v1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    iput v1, v0, Ll3/d;->d:I

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, v0, Ll3/d;->e:F

    const/4 v3, 0x0

    invoke-static {v3, v3, v2, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v1, v0, Ll3/d;->c:I

    iget v2, v0, Ll3/d;->d:I

    move-object v4, v0

    check-cast v4, Ll3/b;

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v1, v4, Ll3/b;->u:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v5, v4, Ll3/b;->u:[F

    iget v1, v4, Ll3/d;->e:F

    neg-float v2, v1

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float v9, v2, v6

    div-float v10, v1, v6

    const v11, 0x3dcccccd  # 0.1f

    const/high16 v12, 0x40400000  # 3.0f

    const/4 v14, 0x0

    const/high16 v7, -0x41000000  # -0.5f

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v6, 0x0

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v15, v4, Ll3/b;->t:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, -0x40800000  # -1.0f

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000  # 1.0f

    const/16 v25, 0x0

    invoke-static/range {v15 .. v25}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v1, v4, Ll3/b;->v:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v13, v4, Ll3/b;->v:[F

    iget-object v15, v4, Ll3/b;->u:[F

    iget-object v1, v4, Ll3/b;->t:[F

    const/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v4, Ll3/b;->w:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Ll3/d;->a:J

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 11

    const-string v0, "gl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    move-object p1, p0

    check-cast p1, Ll3/b;

    const/16 p2, 0x302

    const/16 v0, 0x303

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 p2, 0xbe2

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 p2, 0x0

    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    new-instance p2, Lo3/a;

    const-string v0, "delete.vert"

    const-string v1, "delete.frag"

    invoke-direct {p2, v0, v1}, Lo3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Ll3/b;->n:Lo3/a;

    new-instance p2, Lo3/a;

    const-string v0, "mask.vert"

    const-string v1, "mask.frag"

    invoke-direct {p2, v0, v1}, Lo3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Ll3/b;->o:Lo3/a;

    new-instance p2, Lq3/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lq3/a;-><init>(IIIII)V

    iput-object p2, p1, Ll3/b;->i:Lq3/a;

    new-instance p2, Lp3/b;

    iget-object v0, p1, Ll3/d;->h:Landroid/content/Context;

    sget v1, Lcom/sdk/deleteview/R$drawable;->contour:I

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "BitmapFactory.decodeReso…rces, resourceId, option)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lp3/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p1, Ll3/b;->r:Lp3/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Ll3/d;->a:J

    return-void
.end method
