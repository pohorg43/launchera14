.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeCardWhiteList"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n1549#2:248\n1620#2,3:249\n1747#2,3:252\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList\n*L\n237#1:248\n237#1:249,3\n237#1:252,3\n*E\n"
    }
.end annotation


# instance fields
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetWidgetComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "supportSizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetWidgetComponents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Li4/y;->a:Li4/y;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    sget-object p2, Li4/y;->a:Li4/y;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    sget-object p3, Li4/y;->a:Li4/y;

    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isSupportTransform$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;Landroid/content/Context;IILandroid/content/ComponentName;IILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, -0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;"
        }
    .end annotation

    const-string/jumbo p0, "supportSizes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetWidgetComponents"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "components"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getComponents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportSizes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    return-object p0
.end method

.method public final getTargetWidgetComponents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cm"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->getSizeBySpan(II)I

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p5, p2, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    :cond_1f
    if-ne p5, p2, :cond_23

    :cond_21
    move p1, p3

    goto :goto_24

    :cond_23
    move p1, v0

    :goto_24
    if-eqz p1, :cond_d2

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p2, v1, v0, v0, v2}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_52
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5b

    :cond_58
    move p0, v0

    goto/16 :goto_cf

    :cond_5b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, p3, :cond_c0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_a2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_79

    :cond_77
    move p1, v0

    goto :goto_cc

    :cond_79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p5, :cond_77

    goto :goto_be

    :cond_a2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    :goto_be
    move p1, p3

    goto :goto_cc

    :cond_c0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_cc
    if-eqz p1, :cond_5f

    move p0, p3

    :goto_cf
    if-eqz p0, :cond_d2

    goto :goto_d3

    :cond_d2
    move p3, v0

    :goto_d3
    return p3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ThemeCardWhiteList(supportSizes="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->supportSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetWidgetComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->targetWidgetComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", components="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->components:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
