.class public final Lu6/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemberDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/MemberDeserializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n1#2:372\n1#2:391\n1559#3:373\n1590#3,4:374\n1569#3,11:378\n1864#3,2:389\n1866#3:392\n1580#3:393\n1549#3:394\n1620#3,3:395\n1559#3:398\n1590#3,4:399\n*S KotlinDebug\n*F\n+ 1 MemberDeserializer.kt\norg/jetbrains/kotlin/serialization/deserialization/MemberDeserializer\n*L\n215#1:391\n63#1:373\n63#1:374,4\n215#1:378,11\n215#1:389,2\n215#1:392\n215#1:393\n243#1:394\n243#1:395,3\n327#1:398\n327#1:399,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lu6/m;

.field public final b:Lu6/e;


# direct methods
.method public constructor <init>(Lu6/m;)V
    .registers 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/v;->a:Lu6/m;

    new-instance v0, Lu6/e;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object v1, p1, Lu6/k;->b:Li5/e0;

    iget-object p1, p1, Lu6/k;->l:Li5/g0;

    invoke-direct {v0, v1, p1}, Lu6/e;-><init>(Li5/e0;Li5/g0;)V

    iput-object v0, p0, Lu6/v;->b:Lu6/e;

    return-void
.end method


# virtual methods
.method public final a(Li5/l;)Lu6/b0;
    .registers 5

    instance-of v0, p1, Li5/h0;

    if-eqz v0, :cond_18

    new-instance v0, Lu6/b0$b;

    check-cast p1, Li5/h0;

    invoke-interface {p1}, Li5/h0;->e()Lh6/c;

    move-result-object p1

    iget-object p0, p0, Lu6/v;->a:Lu6/m;

    iget-object v1, p0, Lu6/m;->b:Le6/c;

    iget-object v2, p0, Lu6/m;->d:Le6/g;

    iget-object p0, p0, Lu6/m;->g:Lw6/i;

    invoke-direct {v0, p1, v1, v2, p0}, Lu6/b0$b;-><init>(Lh6/c;Le6/c;Le6/g;Li5/v0;)V

    goto :goto_22

    :cond_18
    instance-of p0, p1, Lw6/d;

    if-eqz p0, :cond_21

    check-cast p1, Lw6/d;

    iget-object v0, p1, Lw6/d;->w:Lu6/b0$a;

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return-object v0
.end method

.method public final b(Li6/p;ILu6/b;)Lj5/h;
    .registers 6

    sget-object v0, Le6/b;->c:Le6/b$b;

    invoke-virtual {v0, p2}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_11

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0

    :cond_11
    new-instance p2, Lw6/q;

    iget-object v0, p0, Lu6/v;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lu6/v$a;

    invoke-direct {v1, p0, p1, p3}, Lu6/v$a;-><init>(Lu6/v;Li6/p;Lu6/b;)V

    invoke-direct {p2, v0, v1}, Lw6/q;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    return-object p2
.end method

.method public final c()Li5/r0;
    .registers 3

    iget-object p0, p0, Lu6/v;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->c:Li5/l;

    instance-of v0, p0, Li5/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Li5/e;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-eqz p0, :cond_13

    invoke-interface {p0}, Li5/e;->C0()Li5/r0;

    move-result-object v1

    :cond_13
    return-object v1
.end method

.method public final d(Lc6/n;Z)Lj5/h;
    .registers 6

    sget-object v0, Le6/b;->c:Le6/b$b;

    iget v1, p1, Lc6/n;->d:I

    invoke-virtual {v0, v1}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0

    :cond_13
    new-instance v0, Lw6/q;

    iget-object v1, p0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->a:Lx6/m;

    new-instance v2, Lu6/v$b;

    invoke-direct {v2, p0, p2, p1}, Lu6/v$b;-><init>(Lu6/v;ZLc6/n;)V

    invoke-direct {v0, v1, v2}, Lw6/q;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final e(Lc6/d;Z)Li5/d;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    const-string v1, "proto"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->c:Li5/l;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Li5/e;

    new-instance v15, Lw6/c;

    iget v1, v13, Lc6/d;->d:I

    sget-object v12, Lu6/b;->a:Lu6/b;

    invoke-virtual {v0, v13, v1, v12}, Lu6/v;->b(Li6/p;ILu6/b;)Lj5/h;

    move-result-object v4

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v8, v1, Lu6/m;->b:Le6/c;

    iget-object v9, v1, Lu6/m;->d:Le6/g;

    iget-object v10, v1, Lu6/m;->e:Le6/h;

    iget-object v11, v1, Lu6/m;->g:Lw6/i;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v14

    move/from16 v5, p2

    move-object/from16 v7, p1

    move-object/from16 v17, v14

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lw6/c;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Lc6/d;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V

    iget-object v0, v0, Lu6/v;->a:Lu6/m;

    sget-object v2, Li4/y;->a:Li4/y;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    invoke-static/range {v0 .. v7}, Lu6/m;->b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;

    move-result-object v0

    iget-object v0, v0, Lu6/m;->i:Lu6/v;

    iget-object v1, v13, Lc6/d;->e:Ljava/util/List;

    const-string v2, "proto.valueParameterList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v13, v14}, Lu6/v;->i(Ljava/util/List;Li6/p;Lu6/b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lu6/c0;->a:Lu6/c0;

    sget-object v2, Le6/b;->d:Le6/b$d;

    iget v3, v13, Lc6/d;->d:I

    invoke-virtual {v2, v3}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/x;

    invoke-static {v1, v2}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Ll5/i;->O0(Ljava/util/List;Li5/t;)Ll5/i;

    invoke-interface/range {v17 .. v17}, Li5/e;->m()Ly6/s0;

    move-result-object v0

    invoke-virtual {v15, v0}, Ll5/r;->L0(Ly6/l0;)V

    invoke-interface/range {v17 .. v17}, Li5/c0;->f0()Z

    move-result v0

    iput-boolean v0, v15, Ll5/r;->r:Z

    sget-object v0, Le6/b;->n:Le6/b$b;

    iget v1, v13, Lc6/d;->d:I

    invoke-virtual {v0, v1}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v15, Ll5/r;->w:Z

    return-object v15
.end method

.method public final f(Lc6/i;)Li5/u0;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    sget-object v14, Lu6/b;->a:Lu6/b;

    const-string v1, "proto"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v13, Lc6/i;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_18

    iget v1, v13, Lc6/i;->d:I

    goto :goto_21

    :cond_18
    iget v1, v13, Lc6/i;->e:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_21
    move v12, v1

    invoke-virtual {v0, v13, v12, v14}, Lu6/v;->b(Li6/p;ILu6/b;)Lj5/h;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Le6/f;->a(Lc6/i;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Lw6/a;

    iget-object v2, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->a:Lu6/k;

    iget-object v2, v2, Lu6/k;->a:Lx6/m;

    new-instance v3, Lu6/w;

    invoke-direct {v3, v0, v13, v14}, Lu6/w;-><init>(Lu6/v;Li6/p;Lu6/b;)V

    invoke-direct {v1, v2, v3}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3f

    :cond_3d
    sget-object v1, Lj5/h$a;->b:Lj5/h;

    :goto_3f
    move-object v11, v1

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->c:Li5/l;

    invoke-static {v1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v1

    iget-object v2, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->b:Le6/c;

    iget v3, v13, Lc6/i;->f:I

    invoke-static {v2, v3}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh6/c;->c(Lh6/f;)Lh6/c;

    move-result-object v1

    sget-object v2, Lu6/e0;->a:Lh6/c;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Le6/h;->b:Le6/h$a;

    sget-object v1, Le6/h;->b:Le6/h$a;

    sget-object v1, Le6/h;->c:Le6/h;

    goto :goto_69

    :cond_65
    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->e:Le6/h;

    :goto_69
    move-object v10, v1

    new-instance v9, Lw6/n;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v1, Lu6/m;->c:Li5/l;

    const/4 v3, 0x0

    iget-object v1, v1, Lu6/m;->b:Le6/c;

    iget v5, v13, Lc6/i;->f:I

    invoke-static {v1, v5}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v5

    sget-object v1, Lu6/c0;->a:Lu6/c0;

    sget-object v6, Le6/b;->o:Le6/b$d;

    invoke-virtual {v6, v12}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc6/j;

    invoke-static {v1, v6}, Lu6/d0;->b(Lu6/c0;Lc6/j;)Li5/b$a;

    move-result-object v6

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v8, v1, Lu6/m;->b:Le6/c;

    iget-object v7, v1, Lu6/m;->d:Le6/g;

    iget-object v1, v1, Lu6/m;->g:Lw6/i;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object v1, v9

    move-object/from16 v18, v7

    move-object/from16 v7, p1

    move-object/from16 v26, v9

    move-object/from16 v9, v18

    move-object v15, v11

    move-object/from16 v11, v17

    move/from16 v27, v12

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lw6/n;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Lc6/i;Le6/c;Le6/g;Le6/h;Lw6/i;Li5/v0;)V

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v13, Lc6/i;->i:Ljava/util/List;

    const-string v3, "proto.typeParameterList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3c

    move-object/from16 v16, v1

    move-object/from16 v17, v26

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v23}, Lu6/m;->b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;

    move-result-object v1

    iget-object v2, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->d:Le6/g;

    invoke-static {v13, v2}, Le6/f;->d(Lc6/i;Le6/g;)Lc6/q;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_df

    iget-object v4, v1, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v4, v2}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v2

    if-eqz v2, :cond_df

    move-object/from16 v4, v26

    invoke-static {v4, v2, v15}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_e3

    :cond_df
    move-object/from16 v4, v26

    move-object/from16 v17, v3

    :goto_e3
    invoke-virtual/range {p0 .. p0}, Lu6/v;->c()Li5/r0;

    move-result-object v18

    iget-object v2, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->d:Le6/g;

    const-string v5, "<this>"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeTable"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v13, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_100

    goto :goto_101

    :cond_100
    move-object v5, v3

    :goto_101
    if-nez v5, :cond_137

    iget-object v5, v13, Lc6/i;->m:Ljava/util/List;

    const-string v6, "contextReceiverTypeIdList"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_119
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Le6/g;->a(I)Lc6/q;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_119

    :cond_136
    move-object v5, v6

    :cond_137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v15, 0x0

    :goto_141
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_168

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v15, 0x1

    if-ltz v15, :cond_164

    check-cast v6, Lc6/q;

    iget-object v8, v1, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v8, v6}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v6

    sget-object v8, Lj5/h$a;->b:Lj5/h;

    invoke-static {v4, v6, v3, v8, v15}, Lk6/h;->b(Li5/a;Ly6/l0;Lh6/f;Lj5/h;I)Li5/r0;

    move-result-object v6

    if-eqz v6, :cond_162

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_162
    move v15, v7

    goto :goto_141

    :cond_164
    invoke-static {}, Li4/o;->k()V

    throw v3

    :cond_168
    iget-object v3, v1, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v3}, Lu6/f0;->c()Ljava/util/List;

    move-result-object v20

    iget-object v3, v1, Lu6/m;->i:Lu6/v;

    iget-object v5, v13, Lc6/i;->o:Ljava/util/List;

    const-string v6, "proto.valueParameterList"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v13, v14}, Lu6/v;->i(Ljava/util/List;Li6/p;Lu6/b;)Ljava/util/List;

    move-result-object v21

    iget-object v3, v1, Lu6/m;->h:Lu6/f0;

    iget-object v5, v0, Lu6/v;->a:Lu6/m;

    iget-object v5, v5, Lu6/m;->d:Le6/g;

    invoke-static {v13, v5}, Le6/f;->e(Lc6/i;Le6/g;)Lc6/q;

    move-result-object v5

    invoke-virtual {v3, v5}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v22

    sget-object v3, Lu6/c0;->a:Lu6/c0;

    sget-object v5, Le6/b;->e:Le6/b$d;

    move/from16 v6, v27

    invoke-virtual {v5, v6}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/k;

    invoke-virtual {v3, v5}, Lu6/c0;->a(Lc6/k;)Li5/d0;

    move-result-object v23

    sget-object v5, Le6/b;->d:Le6/b$d;

    invoke-virtual {v5, v6}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/x;

    invoke-static {v3, v5}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v24

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v25, Li4/z;->a:Li4/z;

    move-object/from16 v16, v4

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v25}, Ll5/j0;->Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;

    sget-object v2, Le6/b;->p:Le6/b$b;

    const-string v3, "IS_OPERATOR.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->m:Z

    sget-object v2, Le6/b;->q:Le6/b$b;

    const-string v3, "IS_INFIX.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->n:Z

    sget-object v2, Le6/b;->t:Le6/b$b;

    const-string v3, "IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->o:Z

    sget-object v2, Le6/b;->r:Le6/b$b;

    const-string v3, "IS_INLINE.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->p:Z

    sget-object v2, Le6/b;->s:Le6/b$b;

    const-string v3, "IS_TAILREC.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->q:Z

    sget-object v2, Le6/b;->u:Le6/b$b;

    const-string v3, "IS_SUSPEND.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->v:Z

    sget-object v2, Le6/b;->v:Le6/b$b;

    const-string v3, "IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v2, v6, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Ll5/r;->r:Z

    sget-object v2, Le6/b;->w:Le6/b$b;

    invoke-virtual {v2, v6}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v4, Ll5/r;->w:Z

    iget-object v0, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v0, Lu6/m;->a:Lu6/k;

    iget-object v2, v2, Lu6/k;->m:Lu6/j;

    iget-object v0, v0, Lu6/m;->d:Le6/g;

    iget-object v1, v1, Lu6/m;->h:Lu6/f0;

    invoke-interface {v2, v13, v4, v0, v1}, Lu6/j;->a(Lc6/i;Li5/x;Le6/g;Lu6/f0;)Lh4/j;

    move-result-object v0

    if-eqz v0, :cond_21e

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Li5/a$a;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Ll5/r;->I0(Li5/a$a;Ljava/lang/Object;)V

    :cond_21e
    return-object v4
.end method

.method public final g(Lc6/n;)Li5/o0;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    sget-object v3, Lu6/b;->c:Lu6/b;

    const-string v1, "proto"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v15, Lc6/n;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_18

    iget v1, v15, Lc6/n;->d:I

    goto :goto_21

    :cond_18
    iget v1, v15, Lc6/n;->e:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_21
    move v14, v1

    new-instance v13, Lw6/m;

    move-object v1, v13

    iget-object v2, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->c:Li5/l;

    sget-object v4, Lu6/b;->b:Lu6/b;

    invoke-virtual {v0, v15, v14, v4}, Lu6/v;->b(Li6/p;ILu6/b;)Lj5/h;

    move-result-object v4

    sget-object v9, Lu6/c0;->a:Lu6/c0;

    sget-object v5, Le6/b;->e:Le6/b$d;

    invoke-virtual {v5, v14}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/k;

    invoke-virtual {v9, v5}, Lu6/c0;->a(Lc6/k;)Li5/d0;

    move-result-object v5

    sget-object v6, Le6/b;->d:Le6/b$d;

    invoke-virtual {v6, v14}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc6/x;

    invoke-static {v9, v6}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v6

    sget-object v7, Le6/b;->x:Le6/b$b;

    const-string v8, "IS_VAR.get(flags)"

    invoke-static {v7, v14, v8}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v7

    iget-object v8, v0, Lu6/v;->a:Lu6/m;

    iget-object v8, v8, Lu6/m;->b:Le6/c;

    iget v10, v15, Lc6/n;->f:I

    invoke-static {v8, v10}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v8

    sget-object v10, Le6/b;->o:Le6/b$d;

    invoke-virtual {v10, v14}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc6/j;

    invoke-static {v9, v10}, Lu6/d0;->b(Lu6/c0;Lc6/j;)Li5/b$a;

    move-result-object v9

    sget-object v10, Le6/b;->B:Le6/b$b;

    const-string v11, "IS_LATEINIT.get(flags)"

    invoke-static {v10, v14, v11}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v10

    sget-object v11, Le6/b;->A:Le6/b$b;

    const-string v12, "IS_CONST.get(flags)"

    invoke-static {v11, v14, v12}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v11

    sget-object v12, Le6/b;->D:Le6/b$b;

    move-object/from16 v20, v3

    const-string v3, "IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v12, v14, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v12

    sget-object v3, Le6/b;->E:Le6/b$b;

    move-object/from16 v16, v13

    const-string v13, "IS_DELEGATED.get(flags)"

    invoke-static {v3, v14, v13}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v13

    move-object/from16 v3, v16

    move-object/from16 v21, v3

    sget-object v3, Le6/b;->F:Le6/b$b;

    const-string v15, "IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v3, v14, v15}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v3

    move v15, v14

    move v14, v3

    iget-object v3, v0, Lu6/v;->a:Lu6/m;

    move/from16 v22, v15

    iget-object v15, v3, Lu6/m;->b:Le6/c;

    move-object/from16 v16, v15

    iget-object v15, v3, Lu6/m;->d:Le6/g;

    move-object/from16 v17, v15

    iget-object v15, v3, Lu6/m;->e:Le6/h;

    move-object/from16 v18, v15

    iget-object v3, v3, Lu6/m;->g:Lw6/i;

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move-object/from16 v15, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v15

    move/from16 v28, v22

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, Lw6/m;-><init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;ZZZZZLc6/n;Le6/c;Le6/g;Le6/h;Lw6/i;)V

    iget-object v4, v0, Lu6/v;->a:Lu6/m;

    move-object/from16 v1, p1

    iget-object v6, v1, Lc6/n;->i:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    move-object/from16 v5, v26

    invoke-static/range {v4 .. v11}, Lu6/m;->b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;

    move-result-object v12

    sget-object v2, Le6/b;->y:Le6/b$b;

    const-string v3, "HAS_GETTER.get(flags)"

    move/from16 v10, v28

    invoke-static {v2, v10, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-static/range {p1 .. p1}, Le6/f;->b(Lc6/n;)Z

    move-result v3

    if-eqz v3, :cond_f7

    new-instance v3, Lw6/a;

    iget-object v4, v0, Lu6/v;->a:Lu6/m;

    iget-object v4, v4, Lu6/m;->a:Lu6/k;

    iget-object v4, v4, Lu6/k;->a:Lx6/m;

    new-instance v5, Lu6/w;

    move-object/from16 v11, v27

    invoke-direct {v5, v0, v1, v11}, Lu6/w;-><init>(Lu6/v;Li6/p;Lu6/b;)V

    invoke-direct {v3, v4, v5}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    goto :goto_fb

    :cond_f7
    move-object/from16 v11, v27

    sget-object v3, Lj5/h$a;->b:Lj5/h;

    :goto_fb
    iget-object v4, v12, Lu6/m;->h:Lu6/f0;

    iget-object v5, v0, Lu6/v;->a:Lu6/m;

    iget-object v5, v5, Lu6/m;->d:Le6/g;

    invoke-static {v1, v5}, Le6/f;->f(Lc6/n;Le6/g;)Lc6/q;

    move-result-object v5

    invoke-virtual {v4, v5}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v5

    iget-object v4, v12, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v4}, Lu6/f0;->c()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lu6/v;->c()Li5/r0;

    move-result-object v7

    iget-object v4, v0, Lu6/v;->a:Lu6/m;

    iget-object v4, v4, Lu6/m;->d:Le6/g;

    const-string v8, "<this>"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "typeTable"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lc6/n;->m()Z

    move-result v13

    if-eqz v13, :cond_12a

    iget-object v4, v1, Lc6/n;->j:Lc6/q;

    goto :goto_138

    :cond_12a
    invoke-virtual/range {p1 .. p1}, Lc6/n;->n()Z

    move-result v13

    if-eqz v13, :cond_137

    iget v13, v1, Lc6/n;->k:I

    invoke-virtual {v4, v13}, Le6/g;->a(I)Lc6/q;

    move-result-object v4

    goto :goto_138

    :cond_137
    const/4 v4, 0x0

    :goto_138
    if-eqz v4, :cond_149

    iget-object v13, v12, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v13, v4}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v4

    if-eqz v4, :cond_149

    move-object/from16 v14, v26

    invoke-static {v14, v4, v3}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object v3

    goto :goto_14c

    :cond_149
    move-object/from16 v14, v26

    const/4 v3, 0x0

    :goto_14c
    iget-object v4, v0, Lu6/v;->a:Lu6/m;

    iget-object v4, v4, Lu6/m;->d:Le6/g;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v1, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_161

    goto :goto_162

    :cond_161
    const/4 v8, 0x0

    :goto_162
    const/16 v9, 0xa

    if-nez v8, :cond_198

    iget-object v8, v1, Lc6/n;->m:Ljava/util/List;

    const-string v13, "contextReceiverTypeIdList"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_17a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_197

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v15, "it"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Le6/g;->a(I)Lc6/q;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17a

    :cond_197
    move-object v8, v13

    :cond_198
    new-instance v9, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v8, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :goto_1a8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v15, v8, 0x1

    if-ltz v8, :cond_1d1

    check-cast v13, Lc6/q;

    move-object/from16 v16, v4

    iget-object v4, v12, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v4, v13}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v4

    sget-object v13, Lj5/h$a;->b:Lj5/h;

    move/from16 v17, v15

    const/4 v15, 0x0

    invoke-static {v14, v4, v15, v13, v8}, Lk6/h;->b(Li5/a;Ly6/l0;Lh6/f;Lj5/h;I)Li5/r0;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    move/from16 v8, v17

    goto :goto_1a8

    :cond_1d1
    const/4 v0, 0x0

    invoke-static {}, Li4/o;->k()V

    throw v0

    :cond_1d6
    const/4 v13, 0x0

    move-object v4, v14

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    sget-object v3, Le6/b;->c:Le6/b$b;

    const-string v4, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v3, v10, v4}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v4

    sget-object v5, Le6/b;->d:Le6/b$d;

    invoke-virtual {v5, v10}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc6/x;

    sget-object v7, Le6/b;->e:Le6/b$d;

    invoke-virtual {v7, v10}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc6/k;

    if-eqz v6, :cond_386

    if-eqz v8, :cond_380

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Le6/b$b;->d(Ljava/lang/Boolean;)I

    move-result v3

    move-object v4, v7

    check-cast v4, Le6/b$c;

    iget v8, v8, Lc6/k;->a:I

    iget v4, v4, Le6/b$d;->a:I

    shl-int v4, v8, v4

    or-int/2addr v3, v4

    move-object v4, v5

    check-cast v4, Le6/b$c;

    iget v6, v6, Lc6/x;->a:I

    iget v4, v4, Le6/b$d;->a:I

    shl-int v4, v6, v4

    or-int/2addr v3, v4

    sget-object v4, Le6/b;->J:Le6/b$b;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Le6/b$b;->d(Ljava/lang/Boolean;)I

    move-result v8

    or-int/2addr v3, v8

    sget-object v8, Le6/b;->K:Le6/b$b;

    invoke-virtual {v8, v6}, Le6/b$b;->d(Ljava/lang/Boolean;)I

    move-result v9

    or-int/2addr v3, v9

    sget-object v9, Le6/b;->L:Le6/b$b;

    invoke-virtual {v9, v6}, Le6/b$b;->d(Ljava/lang/Boolean;)I

    move-result v6

    or-int/2addr v3, v6

    if-eqz v2, :cond_299

    iget v2, v1, Lc6/n;->c:I

    const/16 v6, 0x100

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_236

    const/4 v2, 0x1

    goto :goto_237

    :cond_236
    const/4 v2, 0x0

    :goto_237
    if-eqz v2, :cond_23c

    iget v2, v1, Lc6/n;->p:I

    goto :goto_23d

    :cond_23c
    move v2, v3

    :goto_23d
    const-string v6, "IS_NOT_DEFAULT.get(getterFlags)"

    invoke-static {v4, v2, v6}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v6

    const-string v13, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    invoke-static {v8, v2, v13}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v21

    const-string v13, "IS_INLINE_ACCESSOR.get(getterFlags)"

    invoke-static {v9, v2, v13}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v22

    invoke-virtual {v0, v1, v2, v11}, Lu6/v;->b(Li6/p;ILu6/b;)Lj5/h;

    move-result-object v11

    if-eqz v6, :cond_285

    new-instance v13, Ll5/g0;

    sget-object v15, Lu6/c0;->a:Lu6/c0;

    invoke-virtual {v7, v2}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v26, v3

    move-object/from16 v3, v16

    check-cast v3, Lc6/k;

    invoke-virtual {v15, v3}, Lu6/c0;->a(Lc6/k;)Li5/d0;

    move-result-object v18

    invoke-virtual {v5, v2}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/x;

    invoke-static {v15, v2}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v19

    const/4 v2, 0x1

    xor-int/lit8 v20, v6, 0x1

    invoke-virtual {v14}, Ll5/f0;->f()Li5/b$a;

    move-result-object v23

    const/16 v24, 0x0

    sget-object v25, Li5/v0;->a:Li5/v0;

    move-object v15, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v11

    invoke-direct/range {v15 .. v25}, Ll5/g0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/p0;Li5/v0;)V

    goto :goto_291

    :cond_285
    move/from16 v26, v3

    const/4 v2, 0x1

    invoke-static {v14, v11}, Lk6/h;->c(Li5/o0;Lj5/h;)Ll5/g0;

    move-result-object v13

    const-string v3, "{\n                Descri…nnotations)\n            }"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_291
    invoke-virtual {v14}, Ll5/f0;->getReturnType()Ly6/l0;

    move-result-object v3

    invoke-virtual {v13, v3}, Ll5/g0;->F0(Ly6/l0;)V

    goto :goto_29d

    :cond_299
    move/from16 v26, v3

    const/4 v2, 0x1

    const/4 v13, 0x0

    :goto_29d
    move-object v3, v13

    sget-object v6, Le6/b;->z:Le6/b$b;

    const-string v11, "HAS_SETTER.get(flags)"

    invoke-static {v6, v10, v11}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_334

    iget v6, v1, Lc6/n;->c:I

    const/16 v11, 0x200

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_2b1

    move v6, v2

    goto :goto_2b2

    :cond_2b1
    const/4 v6, 0x0

    :goto_2b2
    if-eqz v6, :cond_2b7

    iget v6, v1, Lc6/n;->q:I

    goto :goto_2b9

    :cond_2b7
    move/from16 v6, v26

    :goto_2b9
    const-string v11, "IS_NOT_DEFAULT.get(setterFlags)"

    invoke-static {v4, v6, v11}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v4

    const-string v11, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    invoke-static {v8, v6, v11}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v21

    const-string v8, "IS_INLINE_ACCESSOR.get(setterFlags)"

    invoke-static {v9, v6, v8}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v22

    sget-object v8, Lu6/b;->d:Lu6/b;

    invoke-virtual {v0, v1, v6, v8}, Lu6/v;->b(Li6/p;ILu6/b;)Lj5/h;

    move-result-object v9

    if-eqz v4, :cond_326

    new-instance v11, Ll5/h0;

    sget-object v13, Lu6/c0;->a:Lu6/c0;

    invoke-virtual {v7, v6}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6/k;

    invoke-virtual {v13, v7}, Lu6/c0;->a(Lc6/k;)Li5/d0;

    move-result-object v18

    invoke-virtual {v5, v6}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/x;

    invoke-static {v13, v5}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v19

    xor-int/lit8 v20, v4, 0x1

    invoke-virtual {v14}, Ll5/f0;->f()Li5/b$a;

    move-result-object v23

    const/16 v24, 0x0

    sget-object v25, Li5/v0;->a:Li5/v0;

    move-object v15, v11

    move-object/from16 v16, v14

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v25}, Ll5/h0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/q0;Li5/v0;)V

    sget-object v4, Li4/y;->a:Li4/y;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3c

    const/4 v5, 0x0

    move-object v13, v11

    move-object v6, v14

    move-object v14, v4

    invoke-static/range {v12 .. v19}, Lu6/m;->b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;

    move-result-object v4

    iget-object v4, v4, Lu6/m;->i:Lu6/v;

    iget-object v7, v1, Lc6/n;->o:Lc6/u;

    invoke-static {v7}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7, v1, v8}, Lu6/v;->i(Ljava/util/List;Li6/p;Lu6/b;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-virtual {v11, v4}, Ll5/h0;->G0(Li5/e1;)V

    goto :goto_337

    :cond_326
    move-object v6, v14

    const/4 v5, 0x0

    sget-object v4, Lj5/h$a;->b:Lj5/h;

    invoke-static {v6, v9, v4}, Lk6/h;->d(Li5/o0;Lj5/h;Lj5/h;)Ll5/h0;

    move-result-object v11

    const-string v4, "{\n                Descri…          )\n            }"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_337

    :cond_334
    move-object v6, v14

    const/4 v11, 0x0

    move-object v5, v11

    :goto_337
    sget-object v4, Le6/b;->C:Le6/b$b;

    const-string v7, "HAS_CONSTANT.get(flags)"

    invoke-static {v4, v10, v7}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_349

    new-instance v4, Lu6/v$c;

    invoke-direct {v4, v0, v1, v6}, Lu6/v$c;-><init>(Lu6/v;Lc6/n;Lw6/m;)V

    invoke-virtual {v6, v5, v4}, Ll5/q0;->D0(Lx6/j;Lkotlin/jvm/functions/Function0;)V

    :cond_349
    iget-object v4, v0, Lu6/v;->a:Lu6/m;

    iget-object v4, v4, Lu6/m;->c:Li5/l;

    instance-of v7, v4, Li5/e;

    if-eqz v7, :cond_354

    check-cast v4, Li5/e;

    goto :goto_355

    :cond_354
    move-object v4, v5

    :goto_355
    if-eqz v4, :cond_35c

    invoke-interface {v4}, Li5/e;->f()Li5/f;

    move-result-object v4

    goto :goto_35d

    :cond_35c
    move-object v4, v5

    :goto_35d
    sget-object v7, Li5/f;->e:Li5/f;

    if-ne v4, v7, :cond_369

    new-instance v4, Lu6/v$d;

    invoke-direct {v4, v0, v1, v6}, Lu6/v$d;-><init>(Lu6/v;Lc6/n;Lw6/m;)V

    invoke-virtual {v6, v5, v4}, Ll5/q0;->D0(Lx6/j;Lkotlin/jvm/functions/Function0;)V

    :cond_369
    new-instance v4, Ll5/q;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lu6/v;->d(Lc6/n;Z)Lj5/h;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Ll5/q;-><init>(Lj5/h;Li5/o0;)V

    new-instance v5, Ll5/q;

    invoke-virtual {v0, v1, v2}, Lu6/v;->d(Lc6/n;Z)Lj5/h;

    move-result-object v0

    invoke-direct {v5, v0, v6}, Ll5/q;-><init>(Lj5/h;Li5/o0;)V

    invoke-virtual {v6, v3, v11, v4, v5}, Ll5/f0;->J0(Ll5/g0;Li5/q0;Li5/v;Li5/v;)V

    return-object v6

    :cond_380
    const/16 v0, 0xb

    invoke-static {v0}, Le6/b;->a(I)V

    throw v13

    :cond_386
    const/16 v0, 0xa

    invoke-static {v0}, Le6/b;->a(I)V

    throw v13
.end method

.method public final h(Lc6/r;)Li5/z0;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lj5/h;->I:I

    iget-object v1, v12, Lc6/r;->k:Ljava/util/List;

    const-string v2, "proto.annotationList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a;

    iget-object v4, v0, Lu6/v;->b:Lu6/e;

    const-string v5, "it"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lu6/v;->a:Lu6/m;

    iget-object v5, v5, Lu6/m;->b:Le6/c;

    invoke-virtual {v4, v3, v5}, Lu6/e;->a(Lc6/a;Le6/c;)Lj5/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_40
    const-string v1, "annotations"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    goto :goto_53

    :cond_4e
    new-instance v1, Lj5/i;

    invoke-direct {v1, v2}, Lj5/i;-><init>(Ljava/util/List;)V

    :goto_53
    move-object v4, v1

    sget-object v1, Lu6/c0;->a:Lu6/c0;

    sget-object v2, Le6/b;->d:Le6/b$d;

    iget v3, v12, Lc6/r;->d:I

    invoke-virtual {v2, v3}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/x;

    invoke-static {v1, v2}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v6

    new-instance v15, Lw6/o;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v2, v1, Lu6/m;->a:Lu6/k;

    iget-object v2, v2, Lu6/k;->a:Lx6/m;

    iget-object v3, v1, Lu6/m;->c:Li5/l;

    iget-object v1, v1, Lu6/m;->b:Le6/c;

    iget v5, v12, Lc6/r;->e:I

    invoke-static {v1, v5}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v5

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v8, v1, Lu6/m;->b:Le6/c;

    iget-object v9, v1, Lu6/m;->d:Le6/g;

    iget-object v10, v1, Lu6/m;->e:Le6/h;

    iget-object v11, v1, Lu6/m;->g:Lw6/i;

    move-object v1, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v11}, Lw6/o;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Li5/t;Lc6/r;Le6/c;Le6/g;Le6/h;Lw6/i;)V

    iget-object v13, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v12, Lc6/r;->f:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3c

    move-object v14, v15

    move-object v2, v15

    move-object v15, v1

    invoke-static/range {v13 .. v20}, Lu6/m;->b(Lu6/m;Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;I)Lu6/m;

    move-result-object v1

    iget-object v3, v1, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v3}, Lu6/f0;->c()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lu6/m;->h:Lu6/f0;

    iget-object v5, v0, Lu6/v;->a:Lu6/m;

    iget-object v5, v5, Lu6/m;->d:Le6/g;

    const-string v6, "<this>"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeTable"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lc6/r;->n()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_c6

    iget-object v5, v12, Lc6/r;->g:Lc6/q;

    const-string v8, "underlyingType"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d8

    :cond_c6
    iget v8, v12, Lc6/r;->c:I

    const/16 v11, 0x8

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_cf

    move v8, v9

    goto :goto_d0

    :cond_cf
    move v8, v10

    :goto_d0
    if-eqz v8, :cond_11b

    iget v8, v12, Lc6/r;->h:I

    invoke-virtual {v5, v8}, Le6/g;->a(I)Lc6/q;

    move-result-object v5

    :goto_d8
    invoke-virtual {v4, v5, v10}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object v4

    iget-object v1, v1, Lu6/m;->h:Lu6/f0;

    iget-object v0, v0, Lu6/v;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->d:Le6/g;

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lc6/r;->m()Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v0, v12, Lc6/r;->i:Lc6/q;

    const-string v5, "expandedType"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_107

    :cond_f6
    iget v5, v12, Lc6/r;->c:I

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_fe

    goto :goto_ff

    :cond_fe
    move v9, v10

    :goto_ff
    if-eqz v9, :cond_10f

    iget v5, v12, Lc6/r;->j:I

    invoke-virtual {v0, v5}, Le6/g;->a(I)Lc6/q;

    move-result-object v0

    :goto_107
    invoke-virtual {v1, v0, v10}, Lu6/f0;->e(Lc6/q;Z)Ly6/s0;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lw6/o;->z0(Ljava/util/List;Ly6/s0;Ly6/s0;)V

    return-object v2

    :cond_10f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No expandedType in ProtoBuf.TypeAlias"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Ljava/util/List;Li6/p;Lu6/b;)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc6/u;",
            ">;",
            "Li6/p;",
            "Lu6/b;",
            ")",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lu6/v;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->c:Li5/l;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v0

    check-cast v20, Li5/a;

    invoke-interface/range {v20 .. v20}, Li5/m;->b()Li5/l;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lu6/v;->a(Li5/l;)Lu6/b0;

    move-result-object v21

    new-instance v15, Ljava/util/ArrayList;

    const/16 v0, 0xa

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v11, v23

    :goto_31
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v24, v11, 0x1

    const/4 v8, 0x0

    if-ltz v11, :cond_107

    move-object v9, v0

    check-cast v9, Lc6/u;

    iget v0, v9, Lc6/u;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4a

    goto :goto_4c

    :cond_4a
    move/from16 v1, v23

    :goto_4c
    if-eqz v1, :cond_52

    iget v0, v9, Lc6/u;->d:I

    move v10, v0

    goto :goto_54

    :cond_52
    move/from16 v10, v23

    :goto_54
    if-eqz v21, :cond_7c

    sget-object v0, Le6/b;->c:Le6/b$b;

    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v10, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    new-instance v12, Lw6/q;

    iget-object v0, v7, Lu6/v;->a:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v13, v0, Lu6/k;->a:Lx6/m;

    new-instance v14, Lu6/v$e;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v11

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lu6/v$e;-><init>(Lu6/v;Lu6/b0;Li6/p;Lu6/b;ILc6/u;)V

    invoke-direct {v12, v13, v14}, Lw6/q;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    goto :goto_7f

    :cond_7c
    sget-object v0, Lj5/h$a;->b:Lj5/h;

    move-object v12, v0

    :goto_7f
    const/4 v0, 0x0

    iget-object v1, v7, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->b:Le6/c;

    iget v2, v9, Lc6/u;->e:I

    invoke-static {v1, v2}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v13

    iget-object v1, v7, Lu6/v;->a:Lu6/m;

    iget-object v2, v1, Lu6/m;->h:Lu6/f0;

    iget-object v1, v1, Lu6/m;->d:Le6/g;

    invoke-static {v9, v1}, Le6/f;->g(Lc6/u;Le6/g;)Lc6/q;

    move-result-object v1

    invoke-virtual {v2, v1}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v14

    sget-object v1, Le6/b;->G:Le6/b$b;

    const-string v2, "DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v1, v10, v2}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v1

    sget-object v2, Le6/b;->H:Le6/b$b;

    const-string v3, "IS_CROSSINLINE.get(flags)"

    invoke-static {v2, v10, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v16

    sget-object v2, Le6/b;->I:Le6/b$b;

    const-string v3, "IS_NOINLINE.get(flags)"

    invoke-static {v2, v10, v3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v17

    iget-object v2, v7, Lu6/v;->a:Lu6/m;

    iget-object v2, v2, Lu6/m;->d:Le6/g;

    const-string v3, "<this>"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lc6/u;->n()Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v2, v9, Lc6/u;->h:Lc6/q;

    goto :goto_dc

    :cond_c7
    iget v3, v9, Lc6/u;->c:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_d0

    const/4 v3, 0x1

    goto :goto_d2

    :cond_d0
    move/from16 v3, v23

    :goto_d2
    if-eqz v3, :cond_db

    iget v3, v9, Lc6/u;->i:I

    invoke-virtual {v2, v3}, Le6/g;->a(I)Lc6/q;

    move-result-object v2

    goto :goto_dc

    :cond_db
    move-object v2, v8

    :goto_dc
    if-eqz v2, :cond_e9

    iget-object v3, v7, Lu6/v;->a:Lu6/m;

    iget-object v3, v3, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v3, v2}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_eb

    :cond_e9
    move-object/from16 v18, v8

    :goto_eb
    sget-object v2, Li5/v0;->a:Li5/v0;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ll5/o0;

    move-object v8, v3

    move-object/from16 v9, v20

    move-object v10, v0

    move-object v0, v15

    move v15, v1

    move-object/from16 v19, v2

    invoke-direct/range {v8 .. v19}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v0

    move/from16 v11, v24

    goto/16 :goto_31

    :cond_107
    invoke-static {}, Li4/o;->k()V

    throw v8

    :cond_10b
    move-object v0, v15

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
