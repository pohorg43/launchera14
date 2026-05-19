.class public final Le6/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nprotoTypeTableUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 protoTypeTableUtil.kt\norg/jetbrains/kotlin/metadata/deserialization/ProtoTypeTableUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1#2:126\n1549#3:127\n1620#3,3:128\n1549#3:131\n1620#3,3:132\n1549#3:135\n1620#3,3:136\n1549#3:139\n1620#3,3:140\n1549#3:143\n1620#3,3:144\n*S KotlinDebug\n*F\n+ 1 protoTypeTableUtil.kt\norg/jetbrains/kotlin/metadata/deserialization/ProtoTypeTableUtilKt\n*L\n24#1:127\n24#1:128,3\n45#1:131\n45#1:132,3\n118#1:135\n118#1:136,3\n121#1:139\n121#1:140,3\n124#1:143\n124#1:144,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lc6/i;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/i;->m()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lc6/i;->n()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static final b(Lc6/n;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/n;->m()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lc6/n;->n()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static final c(Lc6/q;Le6/g;)Lc6/q;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/q;->p()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lc6/q;->m:Lc6/q;

    goto :goto_27

    :cond_13
    iget v0, p0, Lc6/q;->c:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_26

    iget p0, p0, Lc6/q;->n:I

    invoke-virtual {p1, p0}, Le6/g;->a(I)Lc6/q;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public static final d(Lc6/i;Le6/g;)Lc6/q;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/i;->m()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lc6/i;->j:Lc6/q;

    goto :goto_21

    :cond_13
    invoke-virtual {p0}, Lc6/i;->n()Z

    move-result v0

    if-eqz v0, :cond_20

    iget p0, p0, Lc6/i;->k:I

    invoke-virtual {p1, p0}, Le6/g;->a(I)Lc6/q;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public static final e(Lc6/i;Le6/g;)Lc6/q;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/i;->o()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lc6/i;->g:Lc6/q;

    const-string p1, "returnType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2a

    :cond_18
    iget v0, p0, Lc6/i;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_2b

    iget p0, p0, Lc6/i;->h:I

    invoke-virtual {p1, p0}, Le6/g;->a(I)Lc6/q;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Function"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Lc6/n;Le6/g;)Lc6/q;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/n;->o()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lc6/n;->g:Lc6/q;

    const-string p1, "returnType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2a

    :cond_18
    iget v0, p0, Lc6/n;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_2b

    iget p0, p0, Lc6/n;->h:I

    invoke-virtual {p1, p0}, Le6/g;->a(I)Lc6/q;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Lc6/u;Le6/g;)Lc6/q;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc6/u;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lc6/u;->f:Lc6/q;

    const-string p1, "type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2a

    :cond_18
    iget v0, p0, Lc6/u;->c:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_2b

    iget p0, p0, Lc6/u;->g:I

    invoke-virtual {p1, p0}, Le6/g;->a(I)Lc6/q;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
