.class public final Lm6/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConstantValueFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantValueFactory.kt\norg/jetbrains/kotlin/resolve/constants/ConstantValueFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1603#2,9:104\n1855#2:113\n1856#2:115\n1612#2:116\n1#3:114\n*S KotlinDebug\n*F\n+ 1 ConstantValueFactory.kt\norg/jetbrains/kotlin/resolve/constants/ConstantValueFactory\n*L\n64#1:104,9\n64#1:113\n64#1:115\n64#1:116\n64#1:114\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lm6/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm6/h;

    invoke-direct {v0}, Lm6/h;-><init>()V

    sput-object v0, Lm6/h;->a:Lm6/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Li5/e0;",
            "Lf5/h;",
            ")",
            "Lm6/b;"
        }
    .end annotation

    invoke-static {p1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lm6/h;->b(Ljava/lang/Object;Li5/e0;)Lm6/g;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    if-eqz p2, :cond_37

    new-instance p0, Lm6/w;

    invoke-interface {p2}, Li5/e0;->k()Lf5/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lf5/g;->s(Lf5/h;)Ly6/s0;

    move-result-object p1

    const-string p2, "module.builtIns.getPrimi…KotlinType(componentType)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lm6/w;-><init>(Ljava/util/List;Ly6/l0;)V

    goto :goto_41

    :cond_37
    new-instance p0, Lm6/b;

    new-instance p1, Lm6/h$a;

    invoke-direct {p1, p3}, Lm6/h$a;-><init>(Lf5/h;)V

    invoke-direct {p0, v0, p1}, Lm6/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :goto_41
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Li5/e0;)Lm6/g;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Li5/e0;",
            ")",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_11

    new-instance p0, Lm6/d;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Lm6/d;-><init>(B)V

    goto/16 :goto_24f

    :cond_11
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_22

    new-instance p0, Lm6/u;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Lm6/u;-><init>(S)V

    goto/16 :goto_24f

    :cond_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    new-instance p0, Lm6/m;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lm6/m;-><init>(I)V

    goto/16 :goto_24f

    :cond_33
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_44

    new-instance p0, Lm6/s;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lm6/s;-><init>(J)V

    goto/16 :goto_24f

    :cond_44
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_55

    new-instance p0, Lm6/e;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {p0, p1}, Lm6/e;-><init>(C)V

    goto/16 :goto_24f

    :cond_55
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_66

    new-instance p0, Lm6/l;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lm6/l;-><init>(F)V

    goto/16 :goto_24f

    :cond_66
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_77

    new-instance p0, Lm6/i;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lm6/i;-><init>(D)V

    goto/16 :goto_24f

    :cond_77
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_88

    new-instance p0, Lm6/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lm6/c;-><init>(Z)V

    goto/16 :goto_24f

    :cond_88
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_95

    new-instance p0, Lm6/v;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lm6/v;-><init>(Ljava/lang/String;)V

    goto/16 :goto_24f

    :cond_95
    instance-of v0, p1, [B

    const/4 v1, 0x0

    const-string v2, "<this>"

    const/4 v3, 0x1

    if-eqz v0, :cond_d4

    check-cast p1, [B

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_ca

    if-eq v0, v3, :cond_bf

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_b1
    if-ge v1, v2, :cond_cc

    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :cond_bf
    aget-byte p1, p1, v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_cc

    :cond_ca
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_cc
    :goto_cc
    sget-object p1, Lf5/h;->h:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_d4
    instance-of v0, p1, [S

    if-eqz v0, :cond_10f

    check-cast p1, [S

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_105

    if-eq v0, v3, :cond_fa

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_ec
    if-ge v1, v2, :cond_107

    aget-short v3, p1, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :cond_fa
    aget-short p1, p1, v1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_107

    :cond_105
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_107
    :goto_107
    sget-object p1, Lf5/h;->i:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_10f
    instance-of v0, p1, [I

    if-eqz v0, :cond_14a

    check-cast p1, [I

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_140

    if-eq v0, v3, :cond_135

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_127
    if-ge v1, v2, :cond_142

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_127

    :cond_135
    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_142

    :cond_140
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_142
    :goto_142
    sget-object p1, Lf5/h;->j:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_14a
    instance-of v0, p1, [J

    if-eqz v0, :cond_185

    check-cast p1, [J

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_17b

    if-eq v0, v3, :cond_170

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_162
    if-ge v1, v2, :cond_17d

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    :cond_170
    aget-wide v0, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_17d

    :cond_17b
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_17d
    :goto_17d
    sget-object p1, Lf5/h;->l:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_185
    instance-of v0, p1, [C

    if-eqz v0, :cond_1c0

    check-cast p1, [C

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_1b6

    if-eq v0, v3, :cond_1ab

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_19d
    if-ge v1, v2, :cond_1b8

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19d

    :cond_1ab
    aget-char p1, p1, v1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1b8

    :cond_1b6
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_1b8
    :goto_1b8
    sget-object p1, Lf5/h;->g:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_1c0
    instance-of v0, p1, [F

    if-eqz v0, :cond_1d2

    check-cast p1, [F

    invoke-static {p1}, Li4/k;->N([F)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lf5/h;->k:Lf5/h;

    invoke-virtual {p0, p1, p2, v0}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto/16 :goto_24f

    :cond_1d2
    instance-of v0, p1, [D

    if-eqz v0, :cond_20c

    check-cast p1, [D

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_203

    if-eq v0, v3, :cond_1f8

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_1ea
    if-ge v1, v2, :cond_205

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ea

    :cond_1f8
    aget-wide v0, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_205

    :cond_203
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_205
    :goto_205
    sget-object p1, Lf5/h;->m:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto :goto_24f

    :cond_20c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_246

    check-cast p1, [Z

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    if-eqz v0, :cond_23d

    if-eq v0, v3, :cond_232

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    :goto_224
    if-ge v1, v2, :cond_23f

    aget-boolean v3, p1, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_224

    :cond_232
    aget-boolean p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_23f

    :cond_23d
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_23f
    :goto_23f
    sget-object p1, Lf5/h;->f:Lf5/h;

    invoke-virtual {p0, v0, p2, p1}, Lm6/h;->a(Ljava/util/List;Li5/e0;Lf5/h;)Lm6/b;

    move-result-object p0

    goto :goto_24f

    :cond_246
    if-nez p1, :cond_24e

    new-instance p0, Lm6/t;

    invoke-direct {p0}, Lm6/t;-><init>()V

    goto :goto_24f

    :cond_24e
    const/4 p0, 0x0

    :goto_24f
    return-object p0
.end method
