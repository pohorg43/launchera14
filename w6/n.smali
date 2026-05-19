.class public final Lw6/n;
.super Ll5/j0;
.source ""

# interfaces
.implements Lw6/b;


# instance fields
.field public final E:Lc6/i;

.field public final F:Le6/c;

.field public final G:Le6/g;

.field public final H:Le6/h;

.field public final N:Lw6/i;


# direct methods
.method public constructor <init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Lc6/i;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V
    .registers 24

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_3d

    sget-object v0, Li5/v0;->a:Li5/v0;

    move-object v6, v0

    goto :goto_3f

    :cond_3d
    move-object/from16 v6, p11

    :goto_3f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    iput-object v8, v7, Lw6/n;->E:Lc6/i;

    iput-object v9, v7, Lw6/n;->F:Le6/c;

    iput-object v10, v7, Lw6/n;->G:Le6/g;

    iput-object v11, v7, Lw6/n;->H:Le6/h;

    move-object/from16 v0, p10

    iput-object v0, v7, Lw6/n;->N:Lw6/i;

    return-void
.end method


# virtual methods
.method public B()Le6/g;
    .registers 1

    iget-object p0, p0, Lw6/n;->G:Le6/g;

    return-object p0
.end method

.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 21

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v13, p6

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw6/n;

    move-object/from16 v4, p2

    check-cast v4, Li5/u0;

    if-nez p4, :cond_2f

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p4

    :goto_31
    iget-object v8, v0, Lw6/n;->E:Lc6/i;

    iget-object v9, v0, Lw6/n;->F:Le6/c;

    iget-object v10, v0, Lw6/n;->G:Le6/g;

    iget-object v11, v0, Lw6/n;->H:Le6/h;

    iget-object v12, v0, Lw6/n;->N:Lw6/i;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v13, p6

    invoke-direct/range {v2 .. v13}, Lw6/n;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Lc6/i;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V

    iget-boolean v0, v0, Ll5/r;->w:Z

    iput-boolean v0, v1, Ll5/r;->w:Z

    return-object v1
.end method

.method public G()Le6/c;
    .registers 1

    iget-object p0, p0, Lw6/n;->F:Le6/c;

    return-object p0
.end method

.method public H()Lw6/i;
    .registers 1

    iget-object p0, p0, Lw6/n;->N:Lw6/i;

    return-object p0
.end method

.method public b0()Li6/p;
    .registers 1

    iget-object p0, p0, Lw6/n;->E:Lc6/i;

    return-object p0
.end method
