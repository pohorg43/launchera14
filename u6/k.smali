.class public final Lu6/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lx6/m;

.field public final b:Li5/e0;

.field public final c:Lu6/l;

.field public final d:Lu6/h;

.field public final e:Lu6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/c<",
            "Lj5/c;",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Li5/i0;

.field public final g:Lu6/u;

.field public final h:Lu6/q;

.field public final i:Lq5/c;

.field public final j:Lu6/r;

.field public final k:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lk5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Li5/g0;

.field public final m:Lu6/j;

.field public final n:Lk5/a;

.field public final o:Lk5/c;

.field public final p:Li6/f;

.field public final q:Lz6/l;

.field public final r:Lq6/a;

.field public final s:Lk5/e;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/f1;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lu6/i;


# direct methods
.method public constructor <init>(Lx6/m;Li5/e0;Lu6/l;Lu6/h;Lu6/c;Li5/i0;Lu6/u;Lu6/q;Lq5/c;Lu6/r;Ljava/lang/Iterable;Li5/g0;Lu6/j;Lk5/a;Lk5/c;Li6/f;Lz6/l;Lq6/a;Lk5/e;Ljava/util/List;I)V
    .registers 41

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

    move-object/from16 v14, p16

    move-object/from16 v15, p18

    move/from16 v0, p21

    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_29

    sget-object v15, Lk5/a$a;->a:Lk5/a$a;

    goto :goto_2b

    :cond_29
    move-object/from16 v15, p14

    :goto_2b
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_32

    sget-object v14, Lk5/c$a;->a:Lk5/c$a;

    goto :goto_34

    :cond_32
    move-object/from16 v14, p15

    :goto_34
    const/high16 v16, 0x10000

    and-int v16, v0, v16

    if-eqz v16, :cond_44

    sget-object v16, Lz6/l;->b:Lz6/l$a;

    invoke-static/range {v16 .. v16}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lz6/l$a;->b:Lz6/m;

    move-object/from16 v17, v16

    goto :goto_46

    :cond_44
    move-object/from16 v17, p17

    :goto_46
    const/high16 v16, 0x40000

    and-int v16, v0, v16

    if-eqz v16, :cond_4f

    sget-object v16, Lk5/e$a;->a:Lk5/e$a;

    goto :goto_51

    :cond_4f
    const/16 v16, 0x0

    :goto_51
    move-object/from16 v18, v16

    const/high16 v16, 0x80000

    and-int v0, v0, v16

    if-eqz v0, :cond_62

    sget-object v0, Ly6/t;->a:Ly6/t;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_64

    :cond_62
    move-object/from16 v16, p20

    :goto_64
    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localClassifierTypeSettings"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleTypeDeserializer"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fictitiousClassDescriptorFactories"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionRegistryLite"

    move-object/from16 p14, v14

    move-object/from16 v14, p16

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v14, v17

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v14, p18

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentTypeTransformer"

    move-object/from16 v14, v18

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttributeTranslators"

    move-object/from16 v14, v16

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lu6/k;->a:Lx6/m;

    iput-object v2, v0, Lu6/k;->b:Li5/e0;

    iput-object v3, v0, Lu6/k;->c:Lu6/l;

    iput-object v4, v0, Lu6/k;->d:Lu6/h;

    iput-object v5, v0, Lu6/k;->e:Lu6/c;

    iput-object v6, v0, Lu6/k;->f:Li5/i0;

    iput-object v7, v0, Lu6/k;->g:Lu6/u;

    iput-object v8, v0, Lu6/k;->h:Lu6/q;

    iput-object v9, v0, Lu6/k;->i:Lq5/c;

    iput-object v10, v0, Lu6/k;->j:Lu6/r;

    iput-object v11, v0, Lu6/k;->k:Ljava/lang/Iterable;

    iput-object v12, v0, Lu6/k;->l:Li5/g0;

    iput-object v13, v0, Lu6/k;->m:Lu6/j;

    iput-object v15, v0, Lu6/k;->n:Lk5/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lu6/k;->o:Lk5/c;

    move-object/from16 v1, p16

    move-object/from16 v2, v17

    iput-object v1, v0, Lu6/k;->p:Li6/f;

    iput-object v2, v0, Lu6/k;->q:Lz6/l;

    move-object/from16 v1, p18

    move-object/from16 v2, v18

    iput-object v1, v0, Lu6/k;->r:Lq6/a;

    iput-object v2, v0, Lu6/k;->s:Lk5/e;

    iput-object v14, v0, Lu6/k;->t:Ljava/util/List;

    new-instance v1, Lu6/i;

    invoke-direct {v1, v0}, Lu6/i;-><init>(Lu6/k;)V

    iput-object v1, v0, Lu6/k;->u:Lu6/i;

    return-void
.end method


# virtual methods
.method public final a(Li5/h0;Le6/c;Le6/g;Le6/h;Le6/a;Lw6/i;)Lu6/m;
    .registers 18

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu6/m;

    sget-object v10, Li4/y;->a:Li4/y;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lu6/m;-><init>(Lu6/k;Le6/c;Li5/l;Le6/g;Le6/h;Le6/a;Lw6/i;Lu6/f0;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lh6/b;)Li5/e;
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/k;->u:Lu6/i;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lu6/i;->a(Lu6/i;Lh6/b;Lu6/g;I)Li5/e;

    move-result-object p0

    return-object p0
.end method
