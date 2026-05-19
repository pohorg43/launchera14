.class public final Lw6/c;
.super Ll5/i;
.source ""

# interfaces
.implements Lw6/b;


# instance fields
.field public final F:Lc6/d;

.field public final G:Le6/c;

.field public final H:Le6/g;

.field public final N:Le6/h;

.field public final O:Lw6/i;


# direct methods
.method public constructor <init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Lc6/d;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V
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

    if-nez p11, :cond_36

    sget-object v0, Li5/v0;->a:Li5/v0;

    move-object v6, v0

    goto :goto_38

    :cond_36
    move-object/from16 v6, p11

    :goto_38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ll5/i;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V

    iput-object v8, v7, Lw6/c;->F:Lc6/d;

    iput-object v9, v7, Lw6/c;->G:Le6/c;

    iput-object v10, v7, Lw6/c;->H:Le6/g;

    iput-object v11, v7, Lw6/c;->N:Le6/h;

    move-object/from16 v0, p10

    iput-object v0, v7, Lw6/c;->O:Lw6/i;

    return-void
.end method


# virtual methods
.method public B()Le6/g;
    .registers 1

    iget-object p0, p0, Lw6/c;->H:Le6/g;

    return-object p0
.end method

.method public bridge synthetic D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lw6/c;->Q0(Li5/l;Li5/x;Li5/b$a;Lj5/h;Li5/v0;)Lw6/c;

    move-result-object p0

    return-object p0
.end method

.method public G()Le6/c;
    .registers 1

    iget-object p0, p0, Lw6/c;->G:Le6/c;

    return-object p0
.end method

.method public H()Lw6/i;
    .registers 1

    iget-object p0, p0, Lw6/c;->O:Lw6/i;

    return-object p0
.end method

.method public bridge synthetic M0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/i;
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lw6/c;->Q0(Li5/l;Li5/x;Li5/b$a;Lj5/h;Li5/v0;)Lw6/c;

    move-result-object p0

    return-object p0
.end method

.method public Q0(Li5/l;Li5/x;Li5/b$a;Lj5/h;Li5/v0;)Lw6/c;
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lw6/c;

    move-object v4, v1

    check-cast v4, Li5/e;

    move-object/from16 v5, p2

    check-cast v5, Li5/k;

    iget-boolean v7, v0, Ll5/i;->E:Z

    iget-object v9, v0, Lw6/c;->F:Lc6/d;

    iget-object v10, v0, Lw6/c;->G:Le6/c;

    iget-object v11, v0, Lw6/c;->H:Le6/g;

    iget-object v12, v0, Lw6/c;->N:Le6/h;

    iget-object v13, v0, Lw6/c;->O:Lw6/i;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lw6/c;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Lc6/d;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V

    iget-boolean v0, v0, Ll5/r;->w:Z

    iput-boolean v0, v2, Ll5/r;->w:Z

    return-object v2
.end method

.method public b0()Li6/p;
    .registers 1

    iget-object p0, p0, Lw6/c;->F:Lc6/d;

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
