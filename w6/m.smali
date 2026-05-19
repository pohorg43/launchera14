.class public final Lw6/m;
.super Ll5/f0;
.source ""

# interfaces
.implements Lw6/b;


# instance fields
.field public final C:Lc6/n;

.field public final D:Le6/c;

.field public final E:Le6/g;

.field public final F:Le6/h;

.field public final G:Lw6/i;


# direct methods
.method public constructor <init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;ZZZZZLc6/n;Le6/c;Le6/g;Le6/h;Lw6/i;)V
    .registers 36

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Li5/v0;->a:Li5/v0;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Ll5/f0;-><init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lw6/m;->C:Lc6/n;

    move-object/from16 v1, p15

    iput-object v1, v0, Lw6/m;->D:Le6/c;

    move-object/from16 v1, p16

    iput-object v1, v0, Lw6/m;->E:Le6/g;

    move-object/from16 v1, p17

    iput-object v1, v0, Lw6/m;->F:Le6/h;

    move-object/from16 v1, p18

    iput-object v1, v0, Lw6/m;->G:Lw6/i;

    return-void
.end method


# virtual methods
.method public B()Le6/g;
    .registers 1

    iget-object p0, p0, Lw6/m;->E:Le6/g;

    return-object p0
.end method

.method public G()Le6/c;
    .registers 1

    iget-object p0, p0, Lw6/m;->D:Le6/c;

    return-object p0
.end method

.method public H()Lw6/i;
    .registers 1

    iget-object p0, p0, Lw6/m;->G:Lw6/i;

    return-object p0
.end method

.method public H0(Li5/l;Li5/d0;Li5/t;Li5/o0;Li5/b$a;Lh6/f;Li5/v0;)Ll5/f0;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move-object/from16 v9, p5

    move-object/from16 v8, p6

    const-string v1, "newOwner"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v4, p7

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lw6/m;

    move-object/from16 v1, v20

    invoke-virtual/range {p0 .. p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v4

    iget-boolean v7, v0, Ll5/q0;->f:Z

    iget-boolean v10, v0, Ll5/f0;->n:Z

    iget-boolean v11, v0, Ll5/f0;->o:Z

    invoke-virtual/range {p0 .. p0}, Lw6/m;->isExternal()Z

    move-result v12

    iget-boolean v13, v0, Ll5/f0;->s:Z

    iget-boolean v14, v0, Ll5/f0;->p:Z

    iget-object v15, v0, Lw6/m;->C:Lc6/n;

    move-object/from16 p1, v1

    iget-object v1, v0, Lw6/m;->D:Le6/c;

    move-object/from16 v16, v1

    iget-object v1, v0, Lw6/m;->E:Le6/g;

    move-object/from16 v17, v1

    iget-object v1, v0, Lw6/m;->F:Le6/h;

    move-object/from16 v18, v1

    iget-object v0, v0, Lw6/m;->G:Lw6/i;

    move-object/from16 v19, v0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lw6/m;-><init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;ZZZZZLc6/n;Le6/c;Le6/g;Le6/h;Lw6/i;)V

    return-object v20
.end method

.method public b0()Li6/p;
    .registers 1

    iget-object p0, p0, Lw6/m;->C:Lc6/n;

    return-object p0
.end method

.method public isExternal()Z
    .registers 3

    sget-object v0, Le6/b;->D:Le6/b$b;

    iget-object p0, p0, Lw6/m;->C:Lc6/n;

    iget p0, p0, Lc6/n;->d:I

    const-string v1, "IS_EXTERNAL_PROPERTY.get(proto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
