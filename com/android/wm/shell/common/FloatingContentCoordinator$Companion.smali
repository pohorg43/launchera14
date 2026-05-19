.class public final Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/FloatingContentCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatingContentCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingContentCoordinator.kt\ncom/android/wm/shell/common/FloatingContentCoordinator$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,369:1\n764#2:370\n855#2,2:371\n3047#2,10:373\n1043#2:383\n*S KotlinDebug\n*F\n+ 1 FloatingContentCoordinator.kt\ncom/android/wm/shell/common/FloatingContentCoordinator$Companion\n*L\n272#1:370\n272#1:371,2\n273#1:373,10\n336#1:383\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findAreaForContentVertically$lambda$2(Lh4/f;)Landroid/graphics/Rect;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$2(Lh4/f;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findAreaForContentVertically$lambda$3(Lh4/f;)Landroid/graphics/Rect;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$3(Lh4/f;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static final findAreaForContentVertically$lambda$2(Lh4/f;)Landroid/graphics/Rect;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/f<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method private static final findAreaForContentVertically$lambda$3(Lh4/f;)Landroid/graphics/Rect;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/f<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method private static final findAreaForContentVertically$lambda$4(Lh4/f;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/f<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final findAreaForContentVertically$lambda$5(Lh4/f;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/f<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final rectsIntersectVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_a

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le p0, v1, :cond_12

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_14

    if-lt p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public final findAreaForContentAboveOrBelow(Landroid/graphics/Rect;Ljava/util/Collection;Z)Landroid/graphics/Rect;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;Z)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    const-string p0, "contentRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exclusionRects"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;

    invoke-direct {p0, p3}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;-><init>(Z)V

    invoke-static {p2, p0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {p2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_44

    :cond_2f
    if-eqz p3, :cond_37

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_3b
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1c

    :cond_44
    :goto_44
    return-object p2
.end method

.method public final findAreaForContentVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/Collection;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "contentRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "newlyOverlappingRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exclusionRects"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "allowedBounds"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v0, :cond_23

    move p0, v1

    goto :goto_24

    :cond_23
    move p0, v2

    :goto_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2d
    :goto_2d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/graphics/Rect;

    sget-object v5, Lcom/android/wm/shell/common/FloatingContentCoordinator;->Companion:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;

    invoke-direct {v5, v4, p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->rectsIntersectVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_69

    move v5, v1

    goto :goto_6a

    :cond_69
    move v5, v2

    :goto_6a
    if-eqz v5, :cond_70

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_74
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;

    invoke-direct {v3, p1, v0, p2}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsAbove$2;-><init>(Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Rect;)V

    invoke-static {v3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$2;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$2;-><init>(Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Rect;)V

    invoke-static {v3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionAboveInBounds$2;

    invoke-direct {p2, p4, v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionAboveInBounds$2;-><init>(Landroid/graphics/Rect;Lh4/f;)V

    invoke-static {p2}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    new-instance p3, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;

    invoke-direct {p3, p4, p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$positionBelowInBounds$2;-><init>(Landroid/graphics/Rect;Lh4/f;)V

    invoke-static {p3}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p3

    if-eqz p0, :cond_ae

    invoke-static {p3}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$5(Lh4/f;)Z

    move-result p3

    if-nez p3, :cond_b8

    :cond_ae
    if-nez p0, :cond_b7

    invoke-static {p2}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$4(Lh4/f;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto :goto_b8

    :cond_b7
    move v1, v2

    :cond_b8
    :goto_b8
    if-eqz v1, :cond_bf

    invoke-static {p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$3(Lh4/f;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_c3

    :cond_bf
    invoke-static {v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically$lambda$2(Lh4/f;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_c3
    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_ca

    goto :goto_cf

    :cond_ca
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_cf
    return-object p0
.end method
