.class public final Lw6/d;
.super Ll5/b;
.source ""

# interfaces
.implements Li5/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6/d$b;,
        Lw6/d$c;,
        Lw6/d$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,424:1\n288#2,2:425\n766#2:427\n857#2,2:428\n1549#2:430\n1620#2,3:431\n1549#2:434\n1620#2,3:435\n1603#2,9:438\n1855#2:447\n1856#2:449\n1612#2:450\n661#2,11:452\n1#3:448\n1#3:451\n*S KotlinDebug\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor\n*L\n136#1:425,2\n148#1:427\n148#1:428,2\n148#1:430\n148#1:431,3\n154#1:434\n154#1:435,3\n185#1:438,9\n185#1:447\n185#1:449\n185#1:450\n215#1:452,11\n185#1:448\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lc6/b;

.field public final f:Le6/a;

.field public final g:Li5/v0;

.field public final h:Lh6/b;

.field public final i:Li5/d0;

.field public final j:Li5/t;

.field public final k:Li5/f;

.field public final l:Lu6/m;

.field public final m:Lr6/j;

.field public final n:Lw6/d$b;

.field public final o:Li5/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/s0<",
            "Lw6/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lw6/d$c;

.field public final q:Li5/l;

.field public final r:Lx6/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/j<",
            "Li5/d;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Lx6/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/j<",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final v:Lx6/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/j<",
            "Li5/c1<",
            "Ly6/s0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final w:Lu6/b0$a;

.field public final x:Lj5/h;


# direct methods
.method public constructor <init>(Lu6/m;Lc6/b;Le6/c;Le6/a;Li5/v0;)V
    .registers 16

    sget-object v0, Li5/f;->c:Li5/f;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classProto"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceElement"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->a:Lx6/m;

    iget v2, p2, Lc6/b;->e:I

    invoke-static {p3, v2}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object v2

    invoke-virtual {v2}, Lh6/b;->j()Lh6/f;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ll5/b;-><init>(Lx6/m;Lh6/f;)V

    iput-object p2, p0, Lw6/d;->e:Lc6/b;

    iput-object p4, p0, Lw6/d;->f:Le6/a;

    iput-object p5, p0, Lw6/d;->g:Li5/v0;

    iget v1, p2, Lc6/b;->e:I

    invoke-static {p3, v1}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object v1

    iput-object v1, p0, Lw6/d;->h:Lh6/b;

    sget-object v1, Lu6/c0;->a:Lu6/c0;

    sget-object v2, Le6/b;->e:Le6/b$d;

    iget v3, p2, Lc6/b;->d:I

    invoke-virtual {v2, v3}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/k;

    invoke-virtual {v1, v2}, Lu6/c0;->a(Lc6/k;)Li5/d0;

    move-result-object v2

    iput-object v2, p0, Lw6/d;->i:Li5/d0;

    sget-object v2, Le6/b;->d:Le6/b$d;

    iget v3, p2, Lc6/b;->d:I

    invoke-virtual {v2, v3}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/x;

    invoke-static {v1, v2}, Lu6/d0;->a(Lu6/c0;Lc6/x;)Li5/t;

    move-result-object v1

    iput-object v1, p0, Lw6/d;->j:Li5/t;

    sget-object v1, Le6/b;->f:Le6/b$d;

    iget v2, p2, Lc6/b;->d:I

    invoke-virtual {v1, v2}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/b$c;

    sget-object v2, Li5/f;->a:Li5/f;

    if-nez v1, :cond_6c

    const/4 v1, -0x1

    goto :goto_74

    :cond_6c
    sget-object v3, Lu6/c0$a;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_74
    packed-switch v1, :pswitch_data_17a

    goto :goto_85

    :pswitch_78  #0x6, 0x7
    sget-object v2, Li5/f;->f:Li5/f;

    goto :goto_85

    :pswitch_7b  #0x5
    sget-object v2, Li5/f;->e:Li5/f;

    goto :goto_85

    :pswitch_7e  #0x4
    sget-object v2, Li5/f;->d:Li5/f;

    goto :goto_85

    :pswitch_81  #0x3
    move-object v2, v0

    goto :goto_85

    :pswitch_83  #0x2
    sget-object v2, Li5/f;->b:Li5/f;

    :goto_85
    iput-object v2, p0, Lw6/d;->k:Li5/f;

    iget-object v5, p2, Lc6/b;->g:Ljava/util/List;

    const-string v1, "classProto.typeParameterList"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Le6/g;

    iget-object v1, p2, Lc6/b;->E:Lc6/t;

    const-string v3, "classProto.typeTable"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Le6/g;-><init>(Lc6/t;)V

    sget-object v1, Le6/h;->b:Le6/h$a;

    iget-object v3, p2, Lc6/b;->G:Lc6/w;

    const-string v4, "classProto.versionRequirementTable"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Le6/h$a;->a(Lc6/w;)Le6/h;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lu6/m;->a(Li5/l;Ljava/util/List;Le6/c;Le6/g;Le6/h;Le6/a;)Lu6/m;

    move-result-object p3

    iput-object p3, p0, Lw6/d;->l:Lu6/m;

    if-ne v2, v0, :cond_bd

    new-instance p4, Lr6/m;

    iget-object v1, p3, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->a:Lx6/m;

    invoke-direct {p4, v1, p0}, Lr6/m;-><init>(Lx6/m;Li5/e;)V

    goto :goto_bf

    :cond_bd
    sget-object p4, Lr6/i$b;->b:Lr6/i$b;

    :goto_bf
    iput-object p4, p0, Lw6/d;->m:Lr6/j;

    new-instance p4, Lw6/d$b;

    invoke-direct {p4, p0}, Lw6/d$b;-><init>(Lw6/d;)V

    iput-object p4, p0, Lw6/d;->n:Lw6/d$b;

    sget-object p4, Li5/s0;->e:Li5/s0$a;

    iget-object v1, p3, Lu6/m;->a:Lu6/k;

    iget-object v3, v1, Lu6/k;->a:Lx6/m;

    iget-object v1, v1, Lu6/k;->q:Lz6/l;

    invoke-interface {v1}, Lz6/l;->c()Lz6/f;

    move-result-object v1

    new-instance v4, Lw6/d$g;

    invoke-direct {v4, p0}, Lw6/d$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p0, v3, v1, v4}, Li5/s0$a;->a(Li5/e;Lx6/m;Lz6/f;Lkotlin/jvm/functions/Function1;)Li5/s0;

    move-result-object p4

    iput-object p4, p0, Lw6/d;->o:Li5/s0;

    const/4 p4, 0x0

    if-ne v2, v0, :cond_e8

    new-instance v0, Lw6/d$c;

    invoke-direct {v0, p0}, Lw6/d$c;-><init>(Lw6/d;)V

    goto :goto_e9

    :cond_e8
    move-object v0, p4

    :goto_e9
    iput-object v0, p0, Lw6/d;->p:Lw6/d$c;

    iget-object p1, p1, Lu6/m;->c:Li5/l;

    iput-object p1, p0, Lw6/d;->q:Li5/l;

    iget-object v0, p3, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$h;

    invoke-direct {v1, p0}, Lw6/d$h;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object v0

    iput-object v0, p0, Lw6/d;->r:Lx6/j;

    iget-object v0, p3, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$f;

    invoke-direct {v1, p0}, Lw6/d$f;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object v0

    iput-object v0, p0, Lw6/d;->s:Lx6/i;

    iget-object v0, p3, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$e;

    invoke-direct {v1, p0}, Lw6/d$e;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object v0

    iput-object v0, p0, Lw6/d;->t:Lx6/j;

    iget-object v0, p3, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$i;

    invoke-direct {v1, p0}, Lw6/d$i;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object v0

    iput-object v0, p0, Lw6/d;->u:Lx6/i;

    iget-object v0, p3, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$j;

    invoke-direct {v1, p0}, Lw6/d$j;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->d(Lkotlin/jvm/functions/Function0;)Lx6/j;

    move-result-object v0

    iput-object v0, p0, Lw6/d;->v:Lx6/j;

    new-instance v0, Lu6/b0$a;

    iget-object v3, p3, Lu6/m;->b:Le6/c;

    iget-object v4, p3, Lu6/m;->d:Le6/g;

    instance-of v1, p1, Lw6/d;

    if-eqz v1, :cond_147

    check-cast p1, Lw6/d;

    goto :goto_148

    :cond_147
    move-object p1, p4

    :goto_148
    if-eqz p1, :cond_14c

    iget-object p4, p1, Lw6/d;->w:Lu6/b0$a;

    :cond_14c
    move-object v6, p4

    move-object v1, v0

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lu6/b0$a;-><init>(Lc6/b;Le6/c;Le6/g;Li5/v0;Lu6/b0$a;)V

    iput-object v0, p0, Lw6/d;->w:Lu6/b0$a;

    sget-object p1, Le6/b;->c:Le6/b$b;

    iget p2, p2, Lc6/b;->d:I

    invoke-virtual {p1, p2}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_168

    sget p1, Lj5/h;->I:I

    sget-object p1, Lj5/h$a;->b:Lj5/h;

    goto :goto_176

    :cond_168
    new-instance p1, Lw6/q;

    iget-object p2, p3, Lu6/m;->a:Lu6/k;

    iget-object p2, p2, Lu6/k;->a:Lx6/m;

    new-instance p3, Lw6/d$d;

    invoke-direct {p3, p0}, Lw6/d$d;-><init>(Lw6/d;)V

    invoke-direct {p1, p2, p3}, Lw6/q;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    :goto_176
    iput-object p1, p0, Lw6/d;->x:Lj5/h;

    return-void

    nop

    :pswitch_data_17a
    .packed-switch 0x2
        :pswitch_83  #00000002
        :pswitch_81  #00000003
        :pswitch_7e  #00000004
        :pswitch_7b  #00000005
        :pswitch_78  #00000006
        :pswitch_78  #00000007
    .end packed-switch
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    iget-object p0, p0, Lw6/d;->r:Lx6/j;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/d;

    return-object p0
.end method

.method public B0()Z
    .registers 3

    sget-object v0, Le6/b;->h:Le6/b$b;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    const-string v1, "IS_DATA.get(classProto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final D0()Lw6/d$a;
    .registers 2

    iget-object v0, p0, Lw6/d;->o:Li5/s0;

    iget-object p0, p0, Lw6/d;->l:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->q:Lz6/l;

    invoke-interface {p0}, Lz6/l;->c()Lz6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Li5/s0;->a(Lz6/f;)Lr6/i;

    move-result-object p0

    check-cast p0, Lw6/d$a;

    return-object p0
.end method

.method public final E0(Lh6/f;)Ly6/s0;
    .registers 8

    invoke-virtual {p0}, Lw6/d;->D0()Lw6/d$a;

    move-result-object p0

    sget-object v0, Lq5/d;->r:Lq5/d;

    invoke-virtual {p0, p1, v0}, Lw6/d$a;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Li5/o0;

    invoke-interface {v5}, Li5/a;->L()Li5/r0;

    move-result-object v5

    if-nez v5, :cond_28

    move v5, p1

    goto :goto_29

    :cond_28
    move v5, v0

    :goto_29
    if-eqz v5, :cond_13

    if-eqz v2, :cond_2e

    goto :goto_33

    :cond_2e
    move v2, p1

    move-object v3, v4

    goto :goto_13

    :cond_31
    if-nez v2, :cond_34

    :goto_33
    move-object v3, v1

    :cond_34
    check-cast v3, Li5/o0;

    if-eqz v3, :cond_3c

    invoke-interface {v3}, Li5/d1;->getType()Ly6/l0;

    move-result-object v1

    :cond_3c
    check-cast v1, Ly6/s0;

    return-object v1
.end method

.method public S()Li5/c1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d;->v:Lx6/j;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/c1;

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public W()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget-object v1, p0, Lw6/d;->l:Lu6/m;

    iget-object v1, v1, Lu6/m;->d:Le6/g;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v2, v4

    :goto_1d
    const/16 v3, 0xa

    if-nez v2, :cond_52

    iget-object v0, v0, Lc6/b;->n:Ljava/util/List;

    const-string v2, "contextReceiverTypeIdList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "it"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Le6/g;->a(I)Lc6/q;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/q;

    iget-object v3, p0, Lw6/d;->l:Lu6/m;

    iget-object v3, v3, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v3, v2}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v2

    new-instance v3, Ll5/i0;

    invoke-virtual {p0}, Ll5/b;->C0()Li5/r0;

    move-result-object v5

    new-instance v6, Ls6/b;

    invoke-direct {v6, p0, v2, v4, v4}, Ls6/b;-><init>(Li5/e;Ly6/l0;Lh6/f;Ls6/g;)V

    sget v2, Lj5/h;->I:I

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    invoke-direct {v3, v5, v6, v2}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_89
    return-object v0
.end method

.method public X()Z
    .registers 2

    sget-object v0, Le6/b;->f:Le6/b$d;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    invoke-virtual {v0, p0}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc6/b$c;->h:Lc6/b$c;

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public a0()Z
    .registers 3

    sget-object v0, Le6/b;->l:Le6/b$b;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    const-string v1, "IS_FUN_INTERFACE.get(classProto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Lw6/d;->q:Li5/l;

    return-object p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/d;->o:Li5/s0;

    invoke-virtual {p0, p1}, Li5/s0;->a(Lz6/f;)Lr6/i;

    move-result-object p0

    return-object p0
.end method

.method public f()Li5/f;
    .registers 1

    iget-object p0, p0, Lw6/d;->k:Li5/f;

    return-object p0
.end method

.method public f0()Z
    .registers 3

    sget-object v0, Le6/b;->j:Le6/b$b;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    const-string v1, "IS_EXPECT_CLASS.get(classProto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public g0()Lr6/i;
    .registers 1

    iget-object p0, p0, Lw6/d;->m:Lr6/j;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Lw6/d;->x:Lj5/h;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    iget-object p0, p0, Lw6/d;->g:Li5/v0;

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Lw6/d;->j:Li5/t;

    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Lw6/d;->n:Lw6/d$b;

    return-object p0
.end method

.method public h0()Li5/e;
    .registers 1

    iget-object p0, p0, Lw6/d;->t:Lx6/j;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e;

    return-object p0
.end method

.method public i()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d;->s:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public isExternal()Z
    .registers 3

    sget-object v0, Le6/b;->i:Le6/b$b;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    const-string v1, "IS_EXTERNAL_CLASS.get(classProto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .registers 5

    sget-object v0, Le6/b;->k:Le6/b$b;

    iget-object v1, p0, Lw6/d;->e:Lc6/b;

    iget v1, v1, Lc6/b;->d:I

    const-string v2, "IS_VALUE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1, v2}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lw6/d;->f:Le6/a;

    const/4 v0, 0x4

    iget v3, p0, Le6/a;->b:I

    if-ge v3, v2, :cond_18

    goto :goto_27

    :cond_18
    if-le v3, v2, :cond_1b

    goto :goto_29

    :cond_1b
    iget v3, p0, Le6/a;->c:I

    if-ge v3, v0, :cond_20

    goto :goto_27

    :cond_20
    if-le v3, v0, :cond_23

    goto :goto_29

    :cond_23
    iget p0, p0, Le6/a;->d:I

    if-gt p0, v2, :cond_29

    :goto_27
    move p0, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move p0, v1

    :goto_2a
    if-eqz p0, :cond_2d

    move v1, v2

    :cond_2d
    return v1
.end method

.method public isInner()Z
    .registers 3

    sget-object v0, Le6/b;->g:Le6/b$b;

    iget-object p0, p0, Lw6/d;->e:Lc6/b;

    iget p0, p0, Lc6/b;->d:I

    const-string v1, "IS_INNER.get(classProto.flags)"

    invoke-static {v0, p0, v1}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValue()Z
    .registers 4

    sget-object v0, Le6/b;->k:Le6/b$b;

    iget-object v1, p0, Lw6/d;->e:Lc6/b;

    iget v1, v1, Lc6/b;->d:I

    const-string v2, "IS_VALUE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1, v2}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lw6/d;->f:Le6/a;

    const/4 v0, 0x4

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Le6/a;->a(III)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d;->l:Lu6/m;

    iget-object p0, p0, Lu6/m;->h:Lu6/f0;

    invoke-virtual {p0}, Lu6/f0;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Lw6/d;->i:Li5/d0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "deserialized "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lw6/d;->f0()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "expect "

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d;->u:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
