.class public Lk7/q;
.super Lk7/m;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1486:1\n79#1,22:1487\n113#1,5:1509\n130#1,5:1514\n79#1,22:1519\n107#1:1541\n79#1,22:1542\n113#1,5:1564\n124#1:1569\n113#1,5:1570\n130#1,5:1575\n141#1:1580\n130#1,5:1581\n79#1,22:1586\n113#1,5:1608\n130#1,5:1613\n12554#2,2:1618\n12554#2,2:1620\n288#3,2:1622\n288#3,2:1624\n1549#3:1627\n1620#3,3:1628\n1549#3:1631\n1620#3,3:1632\n1#4:1626\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n107#1:1487,22\n124#1:1509,5\n141#1:1514,5\n146#1:1519,22\n151#1:1541\n151#1:1542,22\n156#1:1564,5\n161#1:1569\n161#1:1570,5\n166#1:1575,5\n171#1:1580\n171#1:1581,5\n176#1:1586,22\n187#1:1608,5\n198#1:1613,5\n940#1:1618,2\n964#1:1620,2\n1003#1:1622,2\n1009#1:1624,2\n1309#1:1627\n1309#1:1628,3\n1334#1:1631\n1334#1:1632,3\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I
    .registers 13

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lk7/q;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static B(Ljava/lang/CharSequence;CIZI)I
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1e

    instance-of p4, p0, Ljava/lang/String;

    if-nez p4, :cond_17

    goto :goto_1e

    :cond_17
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_27

    :cond_1e
    :goto_1e
    const/4 p4, 0x1

    new-array p4, p4, [C

    aput-char p1, p4, v1

    invoke-static {p0, p4, p2, p3}, Lk7/q;->D(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_27
    return p0
.end method

.method public static synthetic C(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lk7/q;->y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final D(Ljava/lang/CharSequence;[CIZ)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_1f

    array-length v1, p1

    if-ne v1, v0, :cond_1f

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-static {p1}, Li4/k;->K([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_1f
    new-instance v1, Ly4/d;

    const/4 v2, 0x0

    if-gez p2, :cond_25

    move p2, v2

    :cond_25
    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v1, p2, v3}, Ly4/d;-><init>(II)V

    invoke-virtual {v1}, Ly4/b;->a()Li4/f0;

    move-result-object p2

    :cond_30
    move-object v1, p2

    check-cast v1, Ly4/c;

    iget-boolean v1, v1, Ly4/c;->c:Z

    if-eqz v1, :cond_54

    invoke-virtual {p2}, Li4/f0;->nextInt()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    array-length v4, p1

    move v5, v2

    :goto_41
    if-ge v5, v4, :cond_50

    aget-char v6, p1, v5

    invoke-static {v6, v3, p3}, Lk7/a;->b(CCZ)Z

    move-result v6

    if-eqz v6, :cond_4d

    move v3, v0

    goto :goto_51

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_50
    move v3, v2

    :goto_51
    if-eqz v3, :cond_30

    return v1

    :cond_54
    const/4 p0, -0x1

    return p0
.end method

.method public static E(Ljava/lang/CharSequence;CIZI)I
    .registers 10

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_8

    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_8
    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_e

    move p3, v0

    :cond_e
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-nez p3, :cond_22

    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1b

    goto :goto_22

    :cond_1b
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_65

    :cond_22
    :goto_22
    const/4 v2, 0x1

    new-array v3, v2, [C

    aput-char p1, v3, v0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_40

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_40

    invoke-static {v3}, Li4/k;->K([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_65

    :cond_40
    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p2, p1, :cond_47

    move p2, p1

    :cond_47
    :goto_47
    if-ge v1, p2, :cond_65

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    move p4, v0

    :goto_4e
    if-ge p4, v2, :cond_5d

    aget-char v4, v3, p4

    invoke-static {v4, p1, p3}, Lk7/a;->b(CCZ)Z

    move-result v4

    if-eqz v4, :cond_5a

    move p1, v2

    goto :goto_5e

    :cond_5a
    add-int/lit8 p4, p4, 0x1

    goto :goto_4e

    :cond_5d
    move p1, v0

    :goto_5e
    if-eqz p1, :cond_62

    move v1, p2

    goto :goto_65

    :cond_62
    add-int/lit8 p2, p2, -0x1

    goto :goto_47

    :cond_65
    :goto_65
    return v1
.end method

.method public static F(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .registers 11

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_8

    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_8
    move v2, p2

    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_e

    const/4 p3, 0x0

    :cond_e
    move v4, p3

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "string"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_27

    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_20

    goto :goto_27

    :cond_20
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_27
    :goto_27
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lk7/q;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_2f
    return p0
.end method

.method public static final G(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_45

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_1a

    const/4 p1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_40

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ly4/d;

    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-direct {v1, v2, p1}, Ly4/d;-><init>(II)V

    invoke-virtual {v1}, Ly4/b;->a()Li4/f0;

    move-result-object p1

    :goto_2e
    move-object v1, p1

    check-cast v1, Ly4/c;

    iget-boolean v1, v1, Ly4/c;->c:Z

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Li4/f0;->nextInt()I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_3c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p0, v0

    :goto_40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Desired length "

    const-string v0, " is less than zero."

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lj7/h;
    .registers 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    move p3, v1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v1

    :cond_10
    invoke-static {p4}, Lk7/q;->L(I)V

    invoke-static {p1}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p5, Lk7/c;

    new-instance v0, Lk7/o;

    invoke-direct {v0, p1, p3}, Lk7/o;-><init>(Ljava/util/List;Z)V

    invoke-direct {p5, p0, p2, p4, v0}, Lk7/c;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    return-object p5
.end method

.method public static final I(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_39

    if-ltz p1, :cond_39

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_39

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1e

    goto :goto_39

    :cond_1e
    move v1, v0

    :goto_1f
    if-ge v1, p4, :cond_37

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lk7/a;->b(CCZ)Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v0
.end method

.method public static final J(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prefix"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_2f

    :cond_22
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lk7/q;->I(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    :goto_2f
    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3e
    return-object p0
.end method

.method public static final K(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replacement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt p2, p1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p1, "this.append(value, startIndex, endIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {v0, p0, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_28
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "End index ("

    const-string v0, ") is less than start index ("

    const-string v1, ")."

    invoke-static {p3, p2, v0, p1, v1}, Landroidx/room/q0;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final L(I)V
    .registers 2

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    return-void

    :cond_8
    const-string v0, "Limit must be non-negative, but was "

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final M(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Lk7/q;->L(I)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lk7/q;->y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_51

    const/4 v3, 0x1

    if-ne p3, v3, :cond_f

    goto :goto_51

    :cond_f
    if-lez p3, :cond_13

    move v4, v3

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_1e

    if-le p3, v6, :cond_1d

    goto :goto_1e

    :cond_1d
    move v6, p3

    :cond_1e
    :goto_1e
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_21
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    if-eqz v4, :cond_3b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, p3, -0x1

    if-eq v1, v6, :cond_41

    :cond_3b
    invoke-static {p0, p1, v0, p2}, Lk7/q;->y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ne v1, v2, :cond_21

    :cond_41
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_51
    :goto_51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/lang/CharSequence;[CZII)Ljava/util/List;
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "delimiters"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p4, p1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_24

    aget-char p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lk7/q;->M(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_5b

    :cond_24
    invoke-static {p3}, Lk7/q;->L(I)V

    new-instance p4, Lk7/c;

    new-instance v0, Lk7/n;

    invoke-direct {v0, p1, p2}, Lk7/n;-><init>([CZ)V

    invoke-direct {p4, p0, v1, p3, v0}, Lk7/c;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    invoke-static {p4}, Lj7/p;->k(Lj7/h;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Lj7/p$a;

    invoke-virtual {p1}, Lj7/p$a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly4/d;

    invoke-static {p0, p3}, Lk7/q;->P(Ljava/lang/CharSequence;Ly4/d;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_5a
    move-object p0, p2

    :goto_5b
    return-object p0
.end method

.method public static O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;
    .registers 13

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, p2

    :goto_8
    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, p3

    :goto_f
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "delimiters"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2d

    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_26

    move v1, p3

    :cond_26
    if-nez v1, :cond_2d

    invoke-static {p0, p2, v5, v6}, Lk7/q;->M(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_5f

    :cond_2d
    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lk7/q;->H(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lj7/h;

    move-result-object p1

    invoke-static {p1}, Lj7/p;->k(Lj7/h;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Lj7/p$a;

    invoke-virtual {p1}, Lj7/p$a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly4/d;

    invoke-static {p0, p3}, Lk7/q;->P(Ljava/lang/CharSequence;Ly4/d;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_5e
    move-object p0, p2

    :goto_5f
    return-object p0
.end method

.method public static final P(Ljava/lang/CharSequence;Ly4/d;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly4/d;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ly4/d;->e()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v0, v1}, Lk7/q;->C(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    goto :goto_2b

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2b
    return-object p2
.end method

.method public static R(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p3, p3, v0}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1b

    goto :goto_2a

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2a
    return-object p2
.end method

.method public static synthetic S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    invoke-static {p0, p1, p2}, Lk7/q;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p3, p3, v0}, Lk7/q;->E(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1b

    goto :goto_2a

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2a
    return-object p2
.end method

.method public static U(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p3, p3, v0}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1b

    goto :goto_24

    :cond_1b
    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_24
    return-object p2
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "delimiter"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p3, p3, v0}, Lk7/q;->C(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    goto :goto_29

    :cond_20
    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_29
    return-object p2
.end method

.method public static final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v0, v1}, Lk7/q;->F(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_19

    goto :goto_22

    :cond_19
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    return-object p2
.end method

.method public static final X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-gt v2, v0, :cond_2b

    if-nez v3, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lk7/a;->c(C)Z

    move-result v4

    if-nez v3, :cond_25

    if-nez v4, :cond_22

    move v3, v1

    goto :goto_d

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    if-nez v4, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2b
    :goto_2b
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, p1, v2, p2, v0}, Lk7/q;->C(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_2c

    goto :goto_2d

    :cond_1a
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v9}, Lk7/q;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result p0

    if-ltz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public static u(Ljava/lang/CharSequence;CZI)Z
    .registers 6

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    move p2, v1

    :cond_6
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p2, v0}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result p0

    if-ltz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static synthetic v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .registers 4

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lk7/q;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/CharSequence;CZI)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    move p2, v0

    :cond_6
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_20

    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p3

    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0, p1, p2}, Lk7/a;->b(CCZ)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public static final x(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_18

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_27

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lk7/q;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result p0

    :goto_27
    return p0
.end method

.method public static final z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p5, :cond_14

    new-instance p5, Ly4/d;

    if-gez p2, :cond_9

    move p2, v1

    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p3, v1, :cond_10

    move p3, v1

    :cond_10
    invoke-direct {p5, p2, p3}, Ly4/d;-><init>(II)V

    goto :goto_23

    :cond_14
    invoke-static {p0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p5

    if-le p2, p5, :cond_1b

    move p2, p5

    :cond_1b
    if-gez p3, :cond_1e

    move p3, v1

    :cond_1e
    new-instance p5, Ly4/b;

    invoke-direct {p5, p2, p3, v0}, Ly4/b;-><init>(III)V

    :goto_23
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_51

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_51

    iget p2, p5, Ly4/b;->a:I

    iget p3, p5, Ly4/b;->b:I

    iget p5, p5, Ly4/b;->c:I

    if-lez p5, :cond_35

    if-le p2, p3, :cond_39

    :cond_35
    if-gez p5, :cond_73

    if-gt p3, p2, :cond_73

    :cond_39
    :goto_39
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lk7/m;->n(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_4d

    return p2

    :cond_4d
    if-eq p2, p3, :cond_73

    add-int/2addr p2, p5

    goto :goto_39

    :cond_51
    iget p2, p5, Ly4/b;->a:I

    iget p3, p5, Ly4/b;->b:I

    iget p5, p5, Ly4/b;->c:I

    if-lez p5, :cond_5b

    if-le p2, p3, :cond_5f

    :cond_5b
    if-gez p5, :cond_73

    if-gt p3, p2, :cond_73

    :cond_5f
    :goto_5f
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p1

    move-object v3, p0

    move v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lk7/q;->I(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_6f

    return p2

    :cond_6f
    if-eq p2, p3, :cond_73

    add-int/2addr p2, p5

    goto :goto_5f

    :cond_73
    return v0
.end method
