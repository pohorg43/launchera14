.class public final Lu5/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lx6/m;

.field public final b:Lr5/s;

.field public final c:La6/r;

.field public final d:La6/j;

.field public final e:Ls5/j;

.field public final f:Lu6/q;

.field public final g:Ls5/g;

.field public final h:Ls5/f;

.field public final i:Lq6/a;

.field public final j:Lx5/b;

.field public final k:Lu5/i;

.field public final l:La6/y;

.field public final m:Li5/y0;

.field public final n:Lq5/c;

.field public final o:Li5/e0;

.field public final p:Lf5/i;

.field public final q:Lr5/e;

.field public final r:Lz5/n;

.field public final s:Lr5/t;

.field public final t:Lu5/d;

.field public final u:Lz6/l;

.field public final v:Lr5/a0;

.field public final w:Lr5/x;

.field public final x:Lp6/e;


# direct methods
.method public constructor <init>(Lx6/m;Lr5/s;La6/r;La6/j;Ls5/j;Lu6/q;Ls5/g;Ls5/f;Lq6/a;Lx5/b;Lu5/i;La6/y;Li5/y0;Lq5/c;Li5/e0;Lf5/i;Lr5/e;Lz5/n;Lr5/t;Lu5/d;Lz6/l;Lr5/a0;Lr5/x;Lp6/e;I)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const/high16 v16, 0x800000

    and-int v16, p25, v16

    if-eqz v16, :cond_30

    sget-object v16, Lp6/e;->a:Lp6/e$a;

    invoke-static/range {v16 .. v16}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lp6/e$a;->b:Lp6/a;

    goto :goto_32

    :cond_30
    const/16 v16, 0x0

    :goto_32
    move-object/from16 v17, v16

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    move-object/from16 v15, v17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v16, v15

    move-object/from16 v15, p16

    iput-object v1, v0, Lu5/c;->a:Lx6/m;

    iput-object v2, v0, Lu5/c;->b:Lr5/s;

    iput-object v3, v0, Lu5/c;->c:La6/r;

    iput-object v4, v0, Lu5/c;->d:La6/j;

    iput-object v5, v0, Lu5/c;->e:Ls5/j;

    iput-object v6, v0, Lu5/c;->f:Lu6/q;

    iput-object v7, v0, Lu5/c;->g:Ls5/g;

    iput-object v8, v0, Lu5/c;->h:Ls5/f;

    iput-object v9, v0, Lu5/c;->i:Lq6/a;

    iput-object v10, v0, Lu5/c;->j:Lx5/b;

    iput-object v11, v0, Lu5/c;->k:Lu5/i;

    iput-object v12, v0, Lu5/c;->l:La6/y;

    iput-object v13, v0, Lu5/c;->m:Li5/y0;

    iput-object v14, v0, Lu5/c;->n:Lq5/c;

    move-object/from16 v1, p15

    iput-object v1, v0, Lu5/c;->o:Li5/e0;

    iput-object v15, v0, Lu5/c;->p:Lf5/i;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lu5/c;->q:Lr5/e;

    iput-object v2, v0, Lu5/c;->r:Lz5/n;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Lu5/c;->s:Lr5/t;

    iput-object v2, v0, Lu5/c;->t:Lu5/d;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lu5/c;->u:Lz6/l;

    iput-object v2, v0, Lu5/c;->v:Lr5/a0;

    move-object/from16 v1, p23

    move-object/from16 v2, v16

    iput-object v1, v0, Lu5/c;->w:Lr5/x;

    iput-object v2, v0, Lu5/c;->x:Lp6/e;

    return-void
.end method
