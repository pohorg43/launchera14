.class public Lp/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lq/c$a;

.field public static b:Lq/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "a"

    const-string/jumbo v1, "p"

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "rz"

    const-string/jumbo v4, "r"

    const-string/jumbo v5, "o"

    const-string/jumbo v6, "so"

    const-string v7, "eo"

    const-string/jumbo v8, "sk"

    const-string/jumbo v9, "sa"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/c;->a:Lq/c$a;

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/c;->b:Lq/c$a;

    return-void
.end method

.method public static a(Lq/c;Lcom/airbnb/lottie/d;)Ll/l;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lq/c;->k()Lq/c$b;

    move-result-object v1

    sget-object v2, Lq/c$b;->c:Lq/c$b;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_f

    const/4 v11, 0x1

    goto :goto_10

    :cond_f
    move v11, v10

    :goto_10
    if-eqz v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Lq/c;->b()V

    :cond_15
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lq/c;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11a

    sget-object v2, Lp/c;->a:Lq/c$a;

    invoke-virtual {v0, v2}, Lq/c;->m(Lq/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_22e

    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    invoke-virtual/range {p0 .. p0}, Lq/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lq/c;->o()V

    goto/16 :goto_115

    :pswitch_3e  #0x9
    invoke-static {v0, v8, v10}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object v13

    goto :goto_21

    :pswitch_43  #0x8
    invoke-static {v0, v8, v10}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object v14

    goto :goto_21

    :pswitch_48  #0x7
    invoke-static {v0, v8, v10}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object v23

    goto :goto_21

    :pswitch_4d  #0x6
    invoke-static {v0, v8, v10}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object v22

    goto :goto_21

    :pswitch_52  #0x5
    invoke-static/range {p0 .. p1}, Lp/d;->e(Lq/c;Lcom/airbnb/lottie/d;)Ll/d;

    move-result-object v21

    goto :goto_21

    :pswitch_57  #0x3
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :pswitch_5c  #0x4
    invoke-static {v0, v8, v10}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object v5

    iget-object v1, v5, Ll/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v4, v5, Ll/n;->a:Ljava/util/List;

    new-instance v2, Ls/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget v1, v8, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v2

    move-object v3, v2

    move-object/from16 v2, p1

    move-object v9, v3

    move-object/from16 v3, v16

    move-object v12, v4

    move-object/from16 v4, v17

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v26, v6

    move/from16 v6, v19

    move-object/from16 v18, v13

    move-object v13, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Ls/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_9b
    move-object v10, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    iget-object v1, v10, Ll/n;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/a;

    iget-object v1, v1, Ls/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_d2

    iget-object v9, v10, Ll/n;->a:Ljava/util/List;

    new-instance v12, Ls/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v1, v8, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Ls/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v1, 0x0

    invoke-interface {v9, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d2
    :goto_d2
    move-object v1, v10

    :goto_d3
    move-object/from16 v6, v26

    goto :goto_114

    :pswitch_d6  #0x2
    move-object/from16 v18, v13

    move-object v13, v7

    new-instance v6, Ll/g;

    sget-object v2, Lp/a0;->a:Lp/a0;

    invoke-static {v0, v8, v2}, Lp/d;->a(Lq/c;Lcom/airbnb/lottie/d;Lp/h0;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ll/g;-><init>(Ljava/util/List;)V

    goto :goto_114

    :pswitch_e5  #0x1
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    invoke-static/range {p0 .. p1}, Lp/a;->b(Lq/c;Lcom/airbnb/lottie/d;)Ll/m;

    move-result-object v7

    goto :goto_115

    :pswitch_ee  #0x0
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    invoke-virtual/range {p0 .. p0}, Lq/c;->b()V

    :goto_f6
    invoke-virtual/range {p0 .. p0}, Lq/c;->e()Z

    move-result v2

    if-eqz v2, :cond_110

    sget-object v2, Lp/c;->b:Lq/c$a;

    invoke-virtual {v0, v2}, Lq/c;->m(Lq/c$a;)I

    move-result v2

    if-eqz v2, :cond_10b

    invoke-virtual/range {p0 .. p0}, Lq/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lq/c;->o()V

    goto :goto_f6

    :cond_10b
    invoke-static/range {p0 .. p1}, Lp/a;->a(Lq/c;Lcom/airbnb/lottie/d;)Ll/e;

    move-result-object v15

    goto :goto_f6

    :cond_110
    invoke-virtual/range {p0 .. p0}, Lq/c;->d()V

    goto :goto_d3

    :goto_114
    move-object v7, v13

    :goto_115
    move-object/from16 v13, v18

    const/4 v10, 0x0

    goto/16 :goto_21

    :cond_11a
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    if-eqz v11, :cond_124

    invoke-virtual/range {p0 .. p0}, Lq/c;->d()V

    :cond_124
    if-eqz v15, :cond_144

    invoke-virtual {v15}, Ll/e;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_142

    iget-object v0, v15, Ll/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_142

    goto :goto_144

    :cond_142
    const/4 v0, 0x0

    goto :goto_145

    :cond_144
    :goto_144
    const/4 v0, 0x1

    :goto_145
    if-eqz v0, :cond_148

    const/4 v15, 0x0

    :cond_148
    if-eqz v13, :cond_16c

    instance-of v0, v13, Ll/i;

    if-nez v0, :cond_16a

    invoke-interface {v13}, Ll/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_16a

    invoke-interface {v13}, Ll/m;->getKeyframes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_16a

    goto :goto_16c

    :cond_16a
    const/4 v0, 0x0

    goto :goto_16d

    :cond_16c
    :goto_16c
    const/4 v0, 0x1

    :goto_16d
    if-eqz v0, :cond_170

    const/4 v13, 0x0

    :cond_170
    if-eqz v1, :cond_190

    invoke-virtual {v1}, Ll/n;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_18e

    iget-object v0, v1, Ll/n;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_18e

    goto :goto_190

    :cond_18e
    const/4 v0, 0x0

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v0, 0x1

    :goto_191
    if-eqz v0, :cond_198

    move-object/from16 v6, v26

    const/16 v20, 0x0

    goto :goto_19c

    :cond_198
    move-object/from16 v20, v1

    move-object/from16 v6, v26

    :goto_19c
    if-eqz v6, :cond_1c7

    invoke-virtual {v6}, Ll/n;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1c5

    iget-object v0, v6, Ll/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Ls/d;

    iget v1, v0, Ls/d;->a:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c1

    iget v0, v0, Ls/d;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c1

    const/4 v0, 0x1

    goto :goto_1c2

    :cond_1c1
    const/4 v0, 0x0

    :goto_1c2
    if-eqz v0, :cond_1c5

    goto :goto_1c7

    :cond_1c5
    const/4 v0, 0x0

    goto :goto_1c8

    :cond_1c7
    :goto_1c7
    const/4 v0, 0x1

    :goto_1c8
    if-eqz v0, :cond_1cd

    const/16 v19, 0x0

    goto :goto_1cf

    :cond_1cd
    move-object/from16 v19, v6

    :goto_1cf
    if-eqz v14, :cond_1ef

    invoke-virtual {v14}, Ll/n;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1ed

    iget-object v0, v14, Ll/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1ed

    goto :goto_1ef

    :cond_1ed
    const/4 v2, 0x0

    goto :goto_1f0

    :cond_1ef
    :goto_1ef
    const/4 v2, 0x1

    :goto_1f0
    if-eqz v2, :cond_1f3

    const/4 v14, 0x0

    :cond_1f3
    if-eqz v18, :cond_216

    invoke-virtual/range {v18 .. v18}, Ll/n;->isStatic()Z

    move-result v0

    move-object/from16 v12, v18

    if-eqz v0, :cond_213

    iget-object v0, v12, Ll/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/a;

    iget-object v0, v0, Ls/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_214

    goto :goto_218

    :cond_213
    const/4 v1, 0x0

    :cond_214
    move v9, v1

    goto :goto_219

    :cond_216
    move-object/from16 v12, v18

    :goto_218
    const/4 v9, 0x1

    :goto_219
    if-eqz v9, :cond_21e

    const/16 v25, 0x0

    goto :goto_220

    :cond_21e
    move-object/from16 v25, v12

    :goto_220
    new-instance v0, Ll/l;

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v24, v14

    invoke-direct/range {v16 .. v25}, Ll/l;-><init>(Ll/e;Ll/m;Ll/g;Ll/b;Ll/d;Ll/b;Ll/b;Ll/b;Ll/b;)V

    return-object v0

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_ee  #00000000
        :pswitch_e5  #00000001
        :pswitch_d6  #00000002
        :pswitch_57  #00000003
        :pswitch_5c  #00000004
        :pswitch_52  #00000005
        :pswitch_4d  #00000006
        :pswitch_48  #00000007
        :pswitch_43  #00000008
        :pswitch_3e  #00000009
    .end packed-switch
.end method
