.class public final Lr6/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6/d$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/DescriptorKindFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/DescriptorKindFilter$Companion\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,261:1\n1855#2,2:262\n1726#2,3:264\n288#2,2:267\n1603#2,9:269\n1855#2:278\n1856#2:280\n1612#2:281\n1603#2,9:286\n1855#2:295\n1856#2:297\n1612#2:298\n766#2:303\n857#2,2:304\n1603#2,9:306\n1855#2:315\n1856#2:317\n1612#2:318\n1#3:279\n1#3:296\n1#3:316\n210#4:282\n210#4:299\n3792#5:283\n4307#5,2:284\n3792#5:300\n4307#5,2:301\n*S KotlinDebug\n*F\n+ 1 MemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/DescriptorKindFilter\n*L\n98#1:262,2\n103#1:264,3\n129#1:267,2\n131#1:269,9\n131#1:278\n131#1:280\n131#1:281\n197#1:286,9\n197#1:295\n197#1:297\n197#1:298\n203#1:303\n203#1:304,2\n204#1:306,9\n204#1:315\n204#1:317\n204#1:318\n131#1:279\n197#1:296\n204#1:316\n196#1:282\n202#1:299\n196#1:283\n196#1:284,2\n202#1:300\n202#1:301,2\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lr6/d$a;

.field public static d:I = 0x1

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:Lr6/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final n:Lr6/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final o:Lr6/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final p:Lr6/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final q:Lr6/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr6/d$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr6/d$a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr6/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    const-class v0, Lr6/d;

    new-instance v1, Lr6/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr6/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lr6/d;->c:Lr6/d$a;

    sget v1, Lr6/d;->d:I

    shl-int/lit8 v3, v1, 0x1

    sput v3, Lr6/d;->d:I

    sput v1, Lr6/d;->e:I

    shl-int/lit8 v4, v3, 0x1

    sput v4, Lr6/d;->d:I

    sput v3, Lr6/d;->f:I

    shl-int/lit8 v5, v4, 0x1

    sput v5, Lr6/d;->d:I

    sput v4, Lr6/d;->g:I

    shl-int/lit8 v6, v5, 0x1

    sput v6, Lr6/d;->d:I

    sput v5, Lr6/d;->h:I

    shl-int/lit8 v7, v6, 0x1

    sput v7, Lr6/d;->d:I

    sput v6, Lr6/d;->i:I

    shl-int/lit8 v8, v7, 0x1

    sput v8, Lr6/d;->d:I

    sput v7, Lr6/d;->j:I

    shl-int/lit8 v9, v8, 0x1

    sput v9, Lr6/d;->d:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sput v8, Lr6/d;->k:I

    or-int v10, v1, v3

    or-int/2addr v10, v4

    sput v10, Lr6/d;->l:I

    or-int v11, v3, v6

    or-int/2addr v11, v7

    or-int v12, v6, v7

    new-instance v13, Lr6/d;

    const/4 v14, 0x2

    invoke-direct {v13, v8, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    sput-object v13, Lr6/d;->m:Lr6/d;

    new-instance v8, Lr6/d;

    invoke-direct {v8, v12, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    sput-object v8, Lr6/d;->n:Lr6/d;

    new-instance v8, Lr6/d;

    invoke-direct {v8, v1, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    new-instance v1, Lr6/d;

    invoke-direct {v1, v3, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    new-instance v1, Lr6/d;

    invoke-direct {v1, v4, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    new-instance v1, Lr6/d;

    invoke-direct {v1, v10, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    sput-object v1, Lr6/d;->o:Lr6/d;

    new-instance v1, Lr6/d;

    invoke-direct {v1, v5, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    new-instance v1, Lr6/d;

    invoke-direct {v1, v6, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    sput-object v1, Lr6/d;->p:Lr6/d;

    new-instance v1, Lr6/d;

    invoke-direct {v1, v7, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    sput-object v1, Lr6/d;->q:Lr6/d;

    new-instance v1, Lr6/d;

    invoke-direct {v1, v11, v2, v14}, Lr6/d;-><init>(ILjava/util/List;I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v3, "T::class.java.fields"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_90
    if-ge v7, v5, :cond_a4

    aget-object v8, v1, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_a1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    :cond_a4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ad
    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "field.name"

    if-eqz v5, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Lr6/d;

    if-eqz v10, :cond_c6

    check-cast v8, Lr6/d;

    goto :goto_c7

    :cond_c6
    move-object v8, v2

    :goto_c7
    if-eqz v8, :cond_d8

    new-instance v10, Lr6/d$a$a;

    iget v8, v8, Lr6/d;->b:I

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v8, v5}, Lr6/d$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_d9

    :cond_d8
    move-object v10, v2

    :goto_d9
    if-eqz v10, :cond_ad

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_df
    sput-object v1, Lr6/d;->r:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    move v4, v6

    :goto_ef
    if-ge v4, v3, :cond_103

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_100

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10c
    :goto_10c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    :cond_129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_132
    :goto_132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v5, v4

    and-int/2addr v5, v4

    if-ne v4, v5, :cond_153

    move v5, v9

    goto :goto_154

    :cond_153
    move v5, v6

    :goto_154
    if-eqz v5, :cond_163

    new-instance v5, Lr6/d$a$a;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v3}, Lr6/d$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_164

    :cond_163
    move-object v5, v2

    :goto_164
    if-eqz v5, :cond_132

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    :cond_16a
    sput-object v1, Lr6/d;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lr6/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "excludes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr6/d;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr6/c;

    invoke-virtual {v0}, Lr6/c;->a()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    goto :goto_e

    :cond_21
    iput p1, p0, Lr6/d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;I)V
    .registers 4

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_7

    sget-object p2, Li4/y;->a:Li4/y;

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-direct {p0, p1, p2}, Lr6/d;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    iget p0, p0, Lr6/d;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lr6/d;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr6/d;

    iget-object v1, p0, Lr6/d;->a:Ljava/util/List;

    iget-object v3, p1, Lr6/d;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget p0, p0, Lr6/d;->b:I

    iget p1, p1, Lr6/d;->b:I

    if-eq p0, p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lr6/d;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lr6/d;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    sget-object v0, Lr6/d;->r:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lr6/d$a$a;

    iget v3, v3, Lr6/d$a$a;->a:I

    iget v4, p0, Lr6/d;->b:I

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_8

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    check-cast v1, Lr6/d$a$a;

    if-eqz v1, :cond_2a

    iget-object v0, v1, Lr6/d$a$a;->b:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v0, v2

    :goto_2b
    if-nez v0, :cond_65

    sget-object v0, Lr6/d;->s:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/d$a$a;

    iget v4, v1, Lr6/d$a$a;->a:I

    invoke-virtual {p0, v4}, Lr6/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v1, v1, Lr6/d$a$a;->b:Ljava/lang/String;

    goto :goto_52

    :cond_51
    move-object v1, v2

    :goto_52
    if-eqz v1, :cond_3a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_58
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v4, " | "

    invoke-static/range {v3 .. v10}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    :cond_65
    const-string v1, "DescriptorKindFilter("

    const-string v2, ", "

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lr6/d;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
