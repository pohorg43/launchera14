.class public final Lt5/d;
.super Lt5/f;
.source ""


# instance fields
.field public final E:Li5/u0;

.field public final F:Li5/u0;

.field public final G:Li5/o0;


# direct methods
.method public constructor <init>(Li5/e;Li5/u0;Li5/u0;Li5/o0;)V
    .registers 21

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    const-string v0, "ownerDescriptor"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getterMethod"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overriddenProperty"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lj5/h;->I:I

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    invoke-interface/range {p2 .. p2}, Li5/c0;->o()Li5/d0;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v4

    if-eqz v14, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    move v5, v0

    invoke-interface/range {p4 .. p4}, Li5/l;->getName()Lh6/f;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Li5/o;->getSource()Li5/v0;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Li5/b$a;->a:Li5/b$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Lt5/f;-><init>(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/v0;Li5/o0;Li5/b$a;ZLh4/j;)V

    iput-object v13, v12, Lt5/d;->E:Li5/u0;

    iput-object v14, v12, Lt5/d;->F:Li5/u0;

    iput-object v15, v12, Lt5/d;->G:Li5/o0;

    return-void
.end method
